#include "hcsr04.h"
#include "timer.h"
#include "delay.h"
#include "stdio.h"
#include "FreeRTOS.h"	//FreeRTOS 使用	 
#include "task.h"    //访问临界区 

/********************************************************************************/	 
//超声波原理：
//1．给超声波模块接入电源和地；
//2.给脉冲触发引脚（trig）输入一个长为20us的高电平方波；
//3.输入方波后，模块会自动发射8个40KHz的声波，与此同时回波引脚（echo）端的电平会由0变为1；（此时应该启动定时器计时）；
//4.当超声波返回被模块接收到时，回波引 脚端的电平会由1变为0；（此时应该停止定时器计数），定时器记下的这个时间即为超声波由发射到返回的总时长；
//5.根据声音在空气中的速度为344米/秒，即可计算出所测的距离。
//方法：1、distance_cm = (定时器时间us* 34000cm)/1000000/2)=(us) * 34)/2000);//声速340m/s
//2、distance_cm=（us)/58
//声音在干燥、20摄氏度的空气中的传播速度大约为343米/秒，合34.300厘米/秒。
//或者，我们作一下单位换算，34.300除以10^6厘米/微秒。
//即为：0.0343厘米/微秒,再换一个角度，1/（0.0343 厘米/微秒）即：29.15 微秒/厘米。
//这就意味着，每291.5微秒表示10CM的距离。1厘米就是29.15微秒。
//但是发送后到接收到回波，声音走过的是2倍的距离呀。
//所以实际距离就是1厘米，对应58.3微秒。
//实际上整个测距过程是测的发出声波到收到回波的时间，你的程序里的第一个distance实际上是时间us。
//所以换成距离cm，要除以58.3。
//3、Distance =定时器时间us*0.017。
//注意：此处的中断可要可不要，中断的作用在于检测超声波模块是否超距或者未知错误；最好的做法是采用外部中断触发，避免临界区中断卡死
/********************************************************************************/

u8 overFlowCount = 0;//ms计数

void Hcsr04_Init(void){
    GPIO_InitTypeDef  GPIO_Initure;
	HCSR04_CLK();//使能GPIOA时钟

    //IO初始化
	GPIO_Initure.Pin=HCSR04_TRIG; //发送电平引脚
	GPIO_Initure.Mode=GPIO_MODE_OUTPUT_PP;//推挽输出模式
	GPIO_Initure.Pull=GPIO_PULLUP;//上拉
	GPIO_Initure.Speed=GPIO_SPEED_MEDIUM;//快速50MHZGPIO_SPEED_HIGH;
	HAL_GPIO_Init(HCSR04_PORT,&GPIO_Initure);//初始化
	
	HAL_GPIO_WritePin(HCSR04_PORT,HCSR04_TRIG,GPIO_PIN_RESET);//发送引脚置零
	
    GPIO_Initure.Pin =   HCSR04_ECHO;//接收电平引脚
    GPIO_Initure.Mode = GPIO_MODE_INPUT;//浮空输入
    HAL_GPIO_Init(HCSR04_PORT, &GPIO_Initure);  
    HAL_GPIO_WritePin(HCSR04_PORT,HCSR04_ECHO,GPIO_PIN_RESET);//接收引脚置零 
//T=4M(max)/340(M/S)=0.011764S,所需计数时间为T1(ms)=T*2=0.023529S=23.529ms,取25ms足以
	TIM2_Int_Init(25000-1,84-1);//采用定时器2做为高电平计数[25ms，必须保障计数频率为1us] 
}



//tips：static函数的作用域仅限于定义它的源文件内，所以不需要在头文件里声明
static void Open_Timer_ForHc(){        //打开定时器
	//TIM_HandleTypeDef TIM2_Handler;//定时器句柄
	TIM2->CNT = 0;            //定时器计数器置零，因为从这里开始记录高电平时间
    overFlowCount = 0;			  //溢出次数清零
    TIM2->CR1|=1<<0;     	  //使能定时器2
	//__HAL_TIM_ENABLE(&TIM2_Handler);//使能定时器2	
}
 
static void Close_Timer_ForHc(){        //关闭定时器  
	TIM2->CR1&=~(1<<0);        //关闭定时器2
}
 

//获取定时器时间
u32 Get_Echo_Timer(void){
//	TIM_HandleTypeDef TIM2_Handler;//定时器句柄
    u32 t = 0;
//    t = msHcCount*1000;//得到MS
//    t += __HAL_TIM_GET_COUNTER(&TIM2_Handler);//得到US
	t =TIM2->CNT;
    TIM2->CNT = 0;  //将TIM2计数寄存器的计数值清零
//    delay_ms(50);
    return t;
}
 

float Hcsr04_Get_Length(void )
{
	int i = 0;
    float length_Temp = 0;
    float sum = 0;
	uint32_t overtime =0; //超时机制

#if SYSTEM_SUPPORT_OS	 	//使用OS
	taskENTER_CRITICAL();//任务级保护：关闭所有具有包括硬件在内中断[有个问题：关中断后串口1中断会有延时] 
#endif	
    while(i++ != 5){ 
	   overtime =0; //重新为超时时间赋初值
       TRIG_Send = 1;      //发送口高电平输出
       delay_us(20);
       TRIG_Send = 0;
       while((ECHO_Recive == 0) && (overtime++ <= OVERTIME));     //等待接收口高电平输出
            overtime =0; //重新为超时时间赋初值
			Open_Timer_ForHc();        //打开定时器
            while((ECHO_Recive) == 1 && (overtime++ <= OVERTIME));
            Close_Timer_ForHc();        //关闭定时器
            length_Temp = Get_Echo_Timer()/58.3;        //获取时间,分辨率为1us
        sum += length_Temp;
    }
    length_Temp = sum/5.0;//取平均值
	
#if SYSTEM_SUPPORT_OS	 	//使用OS
	taskEXIT_CRITICAL();//退出临界区，任务级保护：开启所有具有包括硬件在内中断
#endif
//	printf("%d\r\n",lengthTemp);
//	printf("%d\r\n",overFlowCount);
    return length_Temp;
}
