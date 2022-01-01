#include "timer.h"
#include "led.h"
#include "hcsr04.h"/*包含超声波使用API*/
#include "FreeRTOS.h"	//FreeRTOS 使用	 
#include "task.h"    //访问临界区 
#include "gizwits_product.h"//包含机智云心跳
#include "hal_key.h" //包含按键处理
/********************************************************************************/	 
//（1）高级定时器timer1, timer8以及通用定时器timer9, timer10, timer11的时钟来源是APB2总线
//（2）通用定时器timer2~timer5，通用定时器timer12~timer14以及基本定时器timer6,timer7的时钟来源是APB1总线
//（3）当APB1和APB2分频数为1的时候，TIM1、TIM8~TIM11的时钟为APB2的时钟，TIM2~TIM7、TIM12~TIM14的时钟为APB1的时钟；
//（4）而如果APB1和APB2分频数不为1，那么TIM1、TIM8~TIM11的时钟为APB2的时钟的两倍，TIM2~TIM7、TIM12~TIM14的时钟为
//APB1的时钟的两倍。
//因为系统初始化SystemInit函数里初始化APB1总线时钟为4分频即42M，所以TIM2~TIM7、TIM12~TIM14的时钟为APB1的时钟的两
//倍即84M；APB2总线时钟为2分频即84M，TIM1、TIM8~TIM11的时钟为APB2时钟的两倍即168M。
//知道定时器的时钟源频率我们用定时器做延时就很方便了，只要设定合适的分频系数即可，附一下用中断实现延时的公式：（摘自原子的STM32F4开发指南）
//  Tout = ((arr+1)*(psc+1))/Tclk;
//公式中psc就是分频系数，arr就是计数值，达到这个计数就会发生溢出中断，Tclk就是上述分析的时钟源频率。					  
//********************************************************************************/

//////////////////////////////////////////////////////////////////////////////////  
TIM_HandleTypeDef TIM2_Handler,TIM3_Handler,TIM5_Handler,TIM7_Handler;      //定时器句柄 
TIM_OC_InitTypeDef TIM3_CH2Handler,TIM5_CHxHandler;	//定时器3通道2句柄

uint32_t FreeRTOSRunTimeTicks = 0; //FreeRtos运行状态心跳

extern vu16 USART3_RX_STA;
//extern uint32_t timerMsCount;

//基本定时器7中断初始化
//这里时钟选择为APB1的2倍，而APB1为42M
//arr：自动重装值。
//psc：时钟预分频数
//这里使用的是定时器7!
void TIM7_Int_Init(u16 arr,u16 psc){
	TIM7_Handler.Instance=TIM7;                          //通用定时器7
    TIM7_Handler.Init.Prescaler=psc;                     //分频系数
    TIM7_Handler.Init.CounterMode=TIM_COUNTERMODE_UP;    //向上计数器
    TIM7_Handler.Init.Period=arr;                        //自动装载值
    TIM7_Handler.Init.ClockDivision=TIM_CLOCKDIVISION_DIV1;//时钟分频因子
    
	HAL_TIM_Base_Init(&TIM7_Handler);
    HAL_TIM_Base_Start_IT(&TIM7_Handler); //使能定时器7和定时器7更新中断：TIM_IT_UPDATE									 
}

/*******************************************公用函数**************************************/
//定时器底层驱动，开启时钟，设置中断优先级
//此函数会被HAL_TIM_Base_Init()函数调用
void HAL_TIM_Base_MspInit(TIM_HandleTypeDef *htim){//定时器7用于检测串口接收ESP8266发送数据状态
    if(htim->Instance==TIM7){
		__HAL_RCC_TIM7_CLK_ENABLE();            //使能TIM7时钟
		HAL_NVIC_SetPriority(TIM7_IRQn,1,0);    //设置中断优先级，抢占优先级1，子优先级0//0、1
		HAL_NVIC_EnableIRQ(TIM7_IRQn);          //开启ITM7中断   
	}
	else if(htim->Instance==TIM2){//定时器2用于超声波溢出计数
		__HAL_RCC_TIM2_CLK_ENABLE();            //使能TIM2时钟
		HAL_NVIC_SetPriority(TIM2_IRQn,5,0);    //设置中断优先级，抢占优先级5，子优先级0
		HAL_NVIC_EnableIRQ(TIM2_IRQn);          //开启ITM2中断   
	}
}


/*******************************************公用函数**************************************/
//回调函数，定时器中断服务函数调用
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim){
    uint32_t status_value;
#if SYSTEM_SUPPORT_OS	 	//使用OS
	status_value=taskENTER_CRITICAL_FROM_ISR();//中断级保护    
#endif	
	if(htim==(&TIM2_Handler)){       //定时器2
		overFlowCount++;//接收端未收到返回信号或者信号丢失  
    }
    else if(htim==(&TIM7_Handler)){  //定时器7
		FreeRTOSRunTimeTicks++;
//		LED0=!LED0;//数据接收状态标志灯
//		USART3_RX_STA|=1<<15;	//标记接收完成
//        TIM7->CR1&=~(1<<0);     			//关闭定时器7  
//		gizTimerMs(); //机智云1ms心跳
//		printf("gizTimerMs:%d\r\n",1000);
//		keyHandle((keysTypedef_t *)&keys); //按键处理 
    }
#if SYSTEM_SUPPORT_OS	 	//使用OS
	taskEXIT_CRITICAL_FROM_ISR(status_value);//退出临界区  											 
#endif
}

/*******************************************公用函数**************************************/


//定时器底层驱动，时钟使能，引脚配置
//此函数会被HAL_TIM_PWM_Init()调用
//htim:定时器句柄
void HAL_TIM_PWM_MspInit(TIM_HandleTypeDef *htim){
	if(htim==(&TIM3_Handler)){/*舵机pwm输出*/
		GPIO_InitTypeDef GPIO_Initure;
		__HAL_RCC_TIM3_CLK_ENABLE();			//使能定时器3
		__HAL_RCC_GPIOA_CLK_ENABLE();			//开启GPIOA时钟
		
		GPIO_Initure.Pin=GPIO_PIN_7;           	//PA7（PA6是LED0引脚）
		GPIO_Initure.Mode=GPIO_MODE_AF_PP;  	//复用推挽输出
		GPIO_Initure.Pull=GPIO_PULLUP;          //上拉
		GPIO_Initure.Speed=GPIO_SPEED_FAST;     //高速50MHz
		GPIO_Initure.Alternate= GPIO_AF2_TIM3;	//PF2复用为TIM3_CH2
		HAL_GPIO_Init(GPIOA,&GPIO_Initure);
	}
	else if(htim==(&TIM5_Handler)){/*RGB三色灯pwm输出*/
		GPIO_InitTypeDef GPIO_Initure;
		__HAL_RCC_TIM5_CLK_ENABLE();			//使能定时器5
		__HAL_RCC_GPIOA_CLK_ENABLE();			//开启GPIOA时钟
		
		GPIO_Initure.Pin=GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3;  //PA1、PA2、PA3
		GPIO_Initure.Mode=GPIO_MODE_AF_PP;  	//复用推挽输出
		GPIO_Initure.Pull=GPIO_PULLUP;          //上拉
		GPIO_Initure.Speed=GPIO_SPEED_FAST;     //高速50MHz
		GPIO_Initure.Alternate= GPIO_AF2_TIM5;	//PF2复用为TIM5_CH2、TIM5_CH3、TIM5_CH4
		HAL_GPIO_Init(GPIOA,&GPIO_Initure);
	}
	
}

//设置TIMX通道X的占空比
//compare:比较值
void Set_TIMx_Comparex(TIM_TypeDef *TIMx,u8 CCRx,u32 compare)
{
	if(CCRx==1){
		TIMx->CCR1=compare; /*CCR0决定频率，CCR1/CCR2决定占空比(CCR1控制通道CH1、2；CCR2控制通道3、4)*/
	}
	else if(CCRx==2){
		TIMx->CCR2=compare;
	}
	else if(CCRx==3){
		TIMx->CCR3=compare;
	}
	else if(CCRx==4){
		TIMx->CCR4=compare;
	}
	else{/*同时清零*/
		TIMx->CCR1=TIMx->CCR2=TIMx->CCR3=TIMx->CCR4=0;
	}
}
/*******************************************公用函数**************************************/

//定时器7中断服务程序		    
void TIM7_IRQHandler(void){	    		    
	uint32_t status_value;
#if SYSTEM_SUPPORT_OS	 	//使用OS
	status_value=taskENTER_CRITICAL_FROM_ISR();//中断级保护    
#endif	
	//__HAL_TIM_CLEAR_FLAG(&TIM7_Handler,TIM_EventSource_Update);//清除TIM7更新中断标志  
	HAL_TIM_IRQHandler(&TIM7_Handler);//内部会自动清除TIM7更新中断标志	
#if SYSTEM_SUPPORT_OS	 	//使用OS
	taskEXIT_CRITICAL_FROM_ISR(status_value);//退出临界区  											 
#endif
} 


//通用定时器2初始化
//arr：自动重装值。
//psc：时钟预分频数。
//定时器溢出时间计算方法:Tout=((arr+1)*(psc+1))/Ft us.
//Ft=定时器工作频率,单位:Mhz
//这里使用的是定时器6!(定时器6挂在APB1上，时钟为HCLK/2)
void TIM2_Int_Init(u16 arr,u16 psc){
	TIM2_Handler.Instance=TIM2;                          //通用定时器2
    TIM2_Handler.Init.Prescaler=psc;                     //分频系数
    TIM2_Handler.Init.CounterMode=TIM_COUNTERMODE_UP;    //向上计数器
    TIM2_Handler.Init.Period=arr;                        //自动装载值
    TIM2_Handler.Init.ClockDivision=TIM_CLOCKDIVISION_DIV1;//时钟分频因子：不分频
    
	HAL_TIM_Base_Init(&TIM2_Handler);//根据TIM_TimeBaseInitStruct中指定的参数初始化TIMx的时间基数单位
    HAL_TIM_Base_Start_IT(&TIM2_Handler); //使能定时器2和定时器2更新中断：TIM_IT_UPDATE	
	
//	__HAL_TIM_CLEAR_FLAG(&TIM2_Handler,TIM_EventSource_Update);//清除TIM2更新中断标志,避免开启中断就进入中断 
	TIM2->CR1&=~(1<<0);        //关闭定时器2	
}


//定时器2中断服务程序		    
void TIM2_IRQHandler(void){	    		    
	uint32_t status_value;
#if SYSTEM_SUPPORT_OS	 	//使用OS
	status_value=taskENTER_CRITICAL_FROM_ISR();//中断级保护    
#endif	
	HAL_TIM_IRQHandler(&TIM2_Handler);//内部会自动清除TIM2更新中断标志	 
#if SYSTEM_SUPPORT_OS	 	//使用OS
	taskEXIT_CRITICAL_FROM_ISR(status_value);//退出临界区  											 
#endif
} 


//TIM3 PWM部分初始化 
//arr：自动重装值。
//psc：时钟预分频数
//定时器溢出时间计算方法:Tout=((arr+1)*(psc+1))/Ft us.
//Ft=定时器工作频率,单位:Mhz
void TIM3_PWM_Init(u16 arr,u16 psc){
    TIM3_Handler.Instance=TIM3;          	//定时器3
    TIM3_Handler.Init.Prescaler=psc;       //定时器分频
    TIM3_Handler.Init.CounterMode=TIM_COUNTERMODE_UP;//向上计数模式
    TIM3_Handler.Init.Period=arr;          //自动重装载值
    TIM3_Handler.Init.ClockDivision=TIM_CLOCKDIVISION_DIV1;
    HAL_TIM_PWM_Init(&TIM3_Handler);       //初始化PWM
    
    TIM3_CH2Handler.OCMode=TIM_OCMODE_PWM1; //模式选择PWM1
    TIM3_CH2Handler.Pulse=0;          //设置比较值,此值用来确定占空比，默认比较值为自动重装载值的一半,即占空比为50%
    TIM3_CH2Handler.OCPolarity=TIM_OCPOLARITY_HIGH; //输出比较极性为高[初始输出脉冲为高电平CNT<CCR1输出1] 
	
    HAL_TIM_PWM_ConfigChannel(&TIM3_Handler,&TIM3_CH2Handler,TIM_CHANNEL_2);//配置TIM3通道2
    HAL_TIM_PWM_Start(&TIM3_Handler,TIM_CHANNEL_2);//开启PWM通道2
}


//2-R, 3-G, 1-B
//TIM5_CH2/CH3/CH4 PWM配置输出
void TIM5_RGB_Init(u16 arr,u16 psc){	
	TIM5_Handler.Instance=TIM5;          	//定时器5
    TIM5_Handler.Init.Prescaler=psc;       //定时器分频
    TIM5_Handler.Init.CounterMode=TIM_COUNTERMODE_UP;//向上计数模式
    TIM5_Handler.Init.Period=arr;          //自动重装载值
    TIM5_Handler.Init.ClockDivision=TIM_CLOCKDIVISION_DIV1;//0
    HAL_TIM_PWM_Init(&TIM5_Handler);       //初始化PWM
//模式选择PWM1[向上计数时CNT<CCRx(向下计数时CNT>CCRx),OCREFx=1,此时如果OCREFx和OCPolarity相同，则输出1，否则输出0；PWM2模式则是与pwm1相反]	
	TIM5_CHxHandler.OCMode=TIM_OCMODE_PWM1; 
    TIM5_CHxHandler.Pulse=0;          //设置比较值,此值用来确定占空比
    TIM5_CHxHandler.OCPolarity=TIM_OCPOLARITY_LOW; //输出比较极性为低
	
    HAL_TIM_PWM_ConfigChannel(&TIM5_Handler,&TIM5_CHxHandler,TIM_CHANNEL_2);//配置TIM5通道2、3、4
	HAL_TIM_PWM_ConfigChannel(&TIM5_Handler,&TIM5_CHxHandler,TIM_CHANNEL_3);
	HAL_TIM_PWM_ConfigChannel(&TIM5_Handler,&TIM5_CHxHandler,TIM_CHANNEL_4);
	
    HAL_TIM_PWM_Start(&TIM5_Handler,TIM_CHANNEL_2);//开启PWM通道2、3、4
	HAL_TIM_PWM_Start(&TIM5_Handler,TIM_CHANNEL_3);
	HAL_TIM_PWM_Start(&TIM5_Handler,TIM_CHANNEL_4);
}











