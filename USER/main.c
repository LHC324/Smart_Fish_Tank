#include "main.h"
//不同结构体类型的变量指向相同结构体，但是存储地址完全不同[类似于相同数据类型，不同变量名]
extern void keyInit(void);
extern UART_HandleTypeDef UART3_Handler; //串口3句柄

lv_ui guider_ui;


/*注意区分中断优先级和任务优先级*/
//u8 tbuf[40];
RTC_TimeTypeDef RTC_TimeStruct;
RTC_DateTypeDef RTC_DateStruct;
protocolTime_t *GET_NTPTime; //网络时间协议句柄
volatile short temperature=0;
volatile short Distance=0;
volatile uint32_t random;

uint8_t TasK_Buffer[500]; //任务调试信息
uint8_t Cpu_Buffer[400]; //cup状态调试信息

/*消息队列定义区*/

QueueHandle_t Flag_Message_Queue; //定义标志位消息队列句柄

sideparm side_temperature ={0,{0.0},&side_temperature.sidebuff[0],&side_temperature.sidebuff[0],0.0}; //结构体变量赋初值 
sideparm side_waterlevel ={0,{0.0},&side_waterlevel.sidebuff[0],&side_waterlevel.sidebuff[0],0.0};

nexttime nextTime={0};
nexttime nextTime1={0};



/*创建开始线程*/
/*优先级数值越小，那么此任务的优先级越低，空闲任务的优先级是0(systick、pendsv默认)，注意区别中断优先级*/
#define START_TASK_PRIO			1
#define START_STK_SIZE			128
void start_task(void * pvParameters);  //任务函数
TaskHandle_t StartTask_Handler;		//任务句柄	 
 
/*创建LCD显示线程*/ 
#define LCD_TASK_PRIO			3 //优先数2默认分配为软件定时器优先级
#define LCD_STK_SIZE			512
void lcd_task(void * pvParameters);
TaskHandle_t LcdTask_Handler;		//任务句柄

/*创建控制事件线程*/ 
#define EVENT_TASK_PRIO		4
#define EVENT_STK_SIZE		164
void event_task(void * pvParameters);
TaskHandle_t EventTask_Handler;//任务句柄

TimerHandle_t AutoReloadTimer1_Handler,AutoReloadTimer2_Handler; //创建周期定时器句柄
void AutoReloadCallback(TimerHandle_t xTimer);//定时器回调函数

/*创建COLLECT线程*/
#define COLLECT_TASK_PRIO		5
#define COLLECT_STK_SIZE		150//50*（32bit/8）=50*4B=200Byte（默认单位字word（32bit））
void collect_task(void * pvParameters);
TaskHandle_t CollectTask_Handler;		//任务句柄	 
 
/*创建IOT线程*/
#define IOT_TASK_PRIO			6
#define IOT_STK_SIZE			256//IOT线程属于大线程多协程任务，必须保障其足量的堆栈空间
void iot_task(void * pvParameters);
TaskHandle_t IotTask_Handler;		//任务句柄	

SemaphoreHandle_t BinarySemaphore;/*定义一个NULL二值信号量*/




/******************************操作系统入口*************************************************/
int main(void){

	HAL_Init();                    	 			//初始化HAL库    
    Stm32_Clock_Init(336,8,2,7);   				//设置时钟,168Mhz
	delay_init(168);               	            //初始化延时函数
	Init_All();   				                //初始化所有外设

	if(xTaskCreate((TaskFunction_t	) start_task,//这是一个函数指针，指向执行任务的函数
				(const char*	) "start_task",//任务的描述名称，方便调试，不用的话可以设为Null
				(uint16_t		) START_STK_SIZE,//每个任务有自己的栈空间，这里根据任务占用需求设置栈空间的大小
				(void * 		) NULL,//用于传递给任务的参数，不用的话可以设为Null
				(UBaseType_t	) START_TASK_PRIO,//设置任务的优先级，范围由0到(configMAX_PRIORITIES – 1)。数值越大，等级越高
				(TaskHandle_t*	) &StartTask_Handler)){//任务的具柄（handle），通过具柄可以对任务进行设置，比如改变任务优先级等，不用可以设为Null
		vTaskStartScheduler(); /*开启任务调度*/
	}         
	else
		return -1;/*开启任务调度器失败*/
}
/******************************操作系统入口*************************************************/

/******************************此区域用于放置任务、软定时器处理*****************************/
void start_task(void * pvParameters){
//	QueueHandle_t Flag_Message_Queue; //定义消息队列句柄
/*任务级保护：进入临界区，代码要求精简;若是中断级保护：此时屏蔽的是>=宏configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY值中断优先级*/
	taskENTER_CRITICAL();

	BinarySemaphore=xSemaphoreCreateBinary(); /* Attempt to create a semaphore. */
	if(BinarySemaphore!=NULL){
		xSemaphoreGive(BinarySemaphore);/*先释放一下二值信号量*/
	}
	
	/*创建LCD进程*/
	xTaskCreate((TaskFunction_t	) lcd_task,
				(const char*	) "lcd_task",
				(const TickType_t) LCD_STK_SIZE,
				(void * 		) NULL,
				(UBaseType_t	) LCD_TASK_PRIO,
				(TaskHandle_t*	) &LcdTask_Handler);
	
	/*创建软件定时器1初始化进程*/			
	AutoReloadTimer1_Handler=(TimerHandle_t)xTimerCreate(
				(const char *     ) "time1_task",//定时器的第一个参数，字符串，定时器的名字
                (const TickType_t ) 1000,/*第二个参数，是定时时间，毫秒级别10min(600000)*/
                (const UBaseType_t) pdTRUE,//第三个参数，pdFALSE只定时一次，pdTRUE自动加载
                (void *           ) 1,//第4个参数吗，定时器的ID，一般为0
                (TimerCallbackFunction_t) AutoReloadCallback);//第5个参数，定时到了的回调函数
				
	/*创建软件定时器2初始化线程*/			
	AutoReloadTimer2_Handler=(TimerHandle_t)xTimerCreate(
				(const char *     ) "time2_task",//定时器的第一个参数，字符串，定时器的名字
                (const TickType_t ) 60,/*第二个参数，是定时时间，毫秒级别60ms*/
                (const UBaseType_t) pdTRUE,//第三个参数，pdFALSE只定时一次，pdTRUE自动加载
                (void *           ) 10,//第4个参数吗，定时器的ID，一般为0
                (TimerCallbackFunction_t) AutoReloadCallback);//第5个参数，定时到了的回调函数
	xTimerStart(AutoReloadTimer1_Handler,0);//开启定时器1
	xTimerStart(AutoReloadTimer2_Handler,0);//开启定时器2
	/*if(AutoReloadTimer1_Handler!=NULL){开启周期定时器：如果阻塞时间不为0，则本任务会因为等待入队而进入阻塞
		if(xTimerStart(AutoReloadTimer1_Handler,0)!=pdPASS){
//					printf("开启定时器1失败！\r\n");
		}
	}*/
				
	/*创建软件定时器处理线程*/			
	xTaskCreate((TaskFunction_t	) event_task,
				(const char*	) "event_task",
				(uint16_t		) EVENT_STK_SIZE,
				(void * 		) NULL,
				(UBaseType_t	) EVENT_TASK_PRIO,
				(TaskHandle_t*	) &EventTask_Handler);
				
	/*创建collect线程*/
	xTaskCreate((TaskFunction_t	) collect_task,
				(const char*	) "coll_task",
				(uint16_t		) COLLECT_STK_SIZE,
				(void * 		) NULL,
				(UBaseType_t	) COLLECT_TASK_PRIO,
				(TaskHandle_t*	) &CollectTask_Handler);
				
	/*创建IOT线程*/
	xTaskCreate((TaskFunction_t	) iot_task,
				(const char*	) "iot_task",
				(uint16_t		) IOT_STK_SIZE,
				(void * 		) NULL,
				(UBaseType_t	) IOT_TASK_PRIO,
				(TaskHandle_t*	) &IotTask_Handler);	
				
	vTaskDelete(StartTask_Handler); //删除创建线程
	taskEXIT_CRITICAL();//退出临界区
}
 


/*lcd任务函数*/
void lcd_task(void * pvParameters){
	while(1){	
//		taskENTER_CRITICAL();
//		HAL_GPIO_WritePin(GPIOC,(GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3),GPIO_PIN_RESET);
//		Show_Str(30,50,200,16,"李红才开发于10月4日",16,0);
//		tp_dev.scan(0); //触摸检测
		lv_task_handler();
//		if(xQueueReceive(Temperature_Message_Queue,&random,0) !=pdPASS){
//		
//		}
		
		show_time();
		
		if(xSemaphoreTake(BinarySemaphore,0) == pdTRUE){/*获取信号量(信号量变量，超时时间)*/
			Show_Str(60,60,200,16,"当前液位：",16,0);
			LCD_ShowxNum(140,60,Distance/100,3,16,0x00);
			LCD_ShowChar(164,60,'.',16,0);				
			LCD_ShowxNum(172,60,Distance%100,2,16,0x00); //显示小数部分 
			LCD_ShowString(188,60,200,16,16,"CM");
//			LCD_ShowxNum(30,182,Distance,5,16,0x00);
		}
		if(temperature<0){
				LCD_ShowChar(140,140,'-',16,0);			//显示负号
				temperature=-temperature;					//转为正数
			}
		else 
				LCD_ShowChar(140,140,' ',16,0);			//去掉负号
				
		Show_Str(60,100,200,16,"随机数值：",16,0x00);	
		LCD_ShowxNum(140,100,random,8,16,0x00);
		
		Show_Str(60,140,200,16,"当前液温：",16,0x00);
		LCD_ShowxNum(148,140,temperature/10,2,16,0x00);	//显示正数部分	
		LCD_ShowChar(164,140,'.',16,0);	
   		LCD_ShowxNum(172,140,temperature%10,1,16,0x00);	//显示小数部分
//		LCD_ShowString(180,130,200,12,12,"."); 
		LCD_ShowString(180,140,200,16,16,"C");
		
//		LCD_ShowxNum(30,100,temperature,4,16,0x00);	//显示小数部分 
		
//		show_weather();

//		taskEXIT_CRITICAL();//退出临界区
//		LCD_ShowString(30,70,200,16,16,"CPU USED:");
//		LCD_ShowNum(30+8*9,70,OSStatTaskCPUUsage/100,2,16);
//		LCD_ShowString(30+8*11,70,200,16,16,".");
//		LCD_ShowNum(30+8*12,70,OSStatTaskCPUUsage%100,2,16);
//		LCD_ShowString(30+8*9+5*8,70,200,16,16,"%");
		
		vTaskDelay(10);//该延时函数会引起任务调度，delay开头的则不会
	}
}

/*自动化事件处理线程*/
void event_task(void *parameter){
	while(1){
#if OSTASK_DEBUG 
		FreeRtos_Task_Debug(); //打开系统任务状态跟踪
		FreeRtos_CPU_state_Debug();
#endif	
//		HAL_UART_Transmit_DMA(&UART1_Handler, "\xFF", 0x01); 
		
		auto_control_logic(); //进入控制处理过程

		vTaskDelay(1500);//延时10ms
	}
}


void collect_task(void * pvParameters){
	while(1){ 
//		taskENTER_CRITICAL();//该宏屏蔽所有中断（中断优先级>=6的中断被屏蔽[串口1]）

		HAL_RTC_GetTime(&RTC_Handler,&RTC_TimeStruct,RTC_FORMAT_BIN); //读取本地时钟
        HAL_RTC_GetDate(&RTC_Handler,&RTC_DateStruct,RTC_FORMAT_BIN);
		
		temperature = sidefilter((float)DS18B20_Get_Temperature(),&side_temperature);
        currentDataPoint.valueDS18B20 = temperature/10.0;//单精度强制转换为双精度
//		printf("温度：%f\r\n",currentDataPoint.valueDS18B20);

//		taskEXIT_CRITICAL();//退出临界区
		LED0 =! LED0; //系统运行指示灯
		vTaskDelay(100);
	}
}


/*最高优先级任务：物联网数据采集处理线程*/
void iot_task(void * pvParameters){
static bool update_time=false; //仅初次开机更新本地时间
	while(1){
	
		if(UART3IDLE_RxOverFlag){
			for(uint8_t i = 0;i < UART3IDLE_RxSize;i++)
				gizPutData((uint8_t *)&USART3_RX_BUF[i], 1);
				
			UART3IDLE_RxOverFlag = 0;
			UART3IDLE_RxSize = 0;
			memset(&USART3_RX_BUF,0,UART3IDLE_RxSize);
			HAL_UART_Receive_DMA(&UART3_Handler,USART3_RX_BUF,USART3_MAX_RECV_LEN);	//重新打开DMA接收
		}
		
		//userHandle();
		tp_dev.scan(0); //触摸检测
		gizwitsHandle((dataPoint_t *)&currentDataPoint); //机智云任务[gizwitsHandle调用gizwitsEventProcess]
		if((wifi_success_flag) && (update_time==false)){ //wifi成功连接且时间未更新过
			gizwitsGetNTP(); //获取网络时间
			update_time=true; //置更新标志
		}
		vTaskDelay(5);//5ms
	}
}
/******************************此区域用于放置任务、软定时器处理*****************************/

/******************************此区域用于放置软件定时器回调或者中断*************************/
/*定时器1回调函数*/
void AutoReloadCallback(TimerHandle_t xTimer){
	if(xTimer==AutoReloadTimer1_Handler){//定时器1
//		Show_Str(30,118,lcddev.width,lcddev.height,"回调函数",12,0);
	}
	else if(xTimer == AutoReloadTimer2_Handler){
		if(BinarySemaphore !=NULL){
			Distance = sidefilter((float)Hcsr04_Get_Length()*100,&side_waterlevel);//超声波水位监测
			currentDataPoint.valueWater_level = (currentDataPoint.valueDefault_Water_Max+WATER_DEVIATION)-Distance/100.0;//（有bug，应该除以100）
			xSemaphoreGive(BinarySemaphore);/*定时时间到，释放二值信号量*/
		}
	}
}


/*********************************************************************************************/

void Init_All(void){/*所有外设初始化*/
	/*进入FREERTOS前调整中断优先级分组为4（4bit抢占优先级，0级子优先级，默认设置分组2在#include "stm32f4xx_hal.h）"*/
//    HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);
#if (USE_DMA_PRINTF == 1) //使用DMA
	MX_DMA_Init();
#endif
	uart1_init(115200);             	//初始化USART1:用于printf打印到电脑
	usart3_init(9600);          	    //初始化USART3
//	HAL_UART_Receive_IT(&UART3_Handler, (uint8_t *)&aRxBuffer, 1);//本行为添加，不用回调函数时不用添加
	TIM5_RGB_Init(256-1,84-1);          //初始化RGB灯
//	TIM7_Int_Init(50-1,84-1);         //定时器7初始化（1ms的1/20倍）50us，配置freeRtos调试用

//	HAL_UART_Receive_IT(&UART1_Handler, (uint8_t*)&recv_buf, 1);
//	User_Shell_Init();	//初始化letter shell调试系统
	
//	usmart_dev.init(84); 		        //初始化USMART
//	WKUP_Init();
    RTC_Init();  //初始化RTC [怀疑RTC中断会切断文件传输到FLASH芯片]
	LED_Init();  //初始化板载LED灯
	LCD_Init();  //初始化LCD
	KEY_Init();  //初始化按键扫描
	IIC_Init();  //IIC初始化
	AT24CXX_Init(); //初始化24c02
	W25QXX_Init();  //初始化W25Q64
	font_init();    //初始化字库	
	TP_Init();   //初始化XTP2046电阻触摸屏
//	LCD_Clear(WHITE);//清屏
//	TP_Adjust();  	//屏幕校准:横竖屏幕转换时需要校准
//	TP_Save_Adjdata();
//    RTC_Set_WakeUp(RTC_WAKEUPCLOCK_CK_SPRE_16BITS,0); //配置WAKE UP中断,1秒钟中断一次 
	my_mem_init(SRAMIN);			//初始化内部内存池5K
//	my_mem_init(SRAMCCM);			//初始化CCM内存池
//	prvHeapInit();
	
	Set_Duty_Cycle(R_LED, 0);
	Set_Duty_Cycle(G_LED, 0);
	Set_Duty_Cycle(B_LED, 0);
	
	servo_init();         //初始化舵机
	Hcsr04_Init(); //初始化超声波模块
	Relay_Init(); //初始化继电器模块
	
	userInit(); //采集数据的初值
	gizwitsInit(); //初始化机智云相关协议
	keyInit();
	GIZWITS_LOG("MCU Init Success \r\n");

	lv_init(); //初始化littleVGL
	lv_port_disp_init(); //lvgl 显示接口初始化,放在 lv_init()的后面
	lv_port_indev_init(); //lvgl 输入接口初始化,放在 lv_init()的后面
	
	/*Create a GUI-Guider app */
	setup_ui(&guider_ui);
//    events_init(&guider_ui);
	
//	lv_ex_btn_1(); //
//	lv_demo_widgets();
//	
//	exfuns_init();					//为fatfs相关变量申请内存  
// 	f_mount(fs[0],"0:",1); 			//挂载SD卡 
// 	f_mount(fs[1],"1:",1); 			//挂载FLASH.

//	LCD_Clear(WHITE);		   	//清屏
// 	POINT_COLOR=RED;			//设置字体为红色
	LCD_Clear(BLACK);
	POINT_COLOR = BLACK;//WHITE
	BACK_COLOR = RGB888toRGB565(150, 255, 255);//LIGHTBLUE;
//	LCD_ShowString(30,50,200,16,16,"Explorer STM32F4");

//	Show_Str(20,70,200,12,"李红才开发于10月",12,0);
//	while(SD_Init()){			//检测SD卡
//		LCD_ShowString(30,70,200,16,16,"SD Card Failed!");
//		delay_ms(200);
//		LCD_Fill(30,70,200+30,70+16,WHITE);
//		delay_ms(200);
//		break;
//	}
	
	while(AT24CXX_Check()){ //检测24c02
		LCD_ShowString(30,70,200,16,16,"AT24C02 Failed!");
		delay_ms(1000);
		LCD_Fill(30,70,200+30,70+16,BLACK);
		delay_ms(200);
		break;
	}
	
	while(DS18B20_Init()){	//DS18B20初始化	
		LCD_ShowString(30,70,200,16,16,"DS18B20 Error!");
		delay_ms(1000);
		LCD_Fill(30,70,200+30,70+16,BLACK);
 		delay_ms(200);
		break;
	}  
	
	while(RNG_Init()){	 		//初始化随机数发生器
		LCD_ShowString(30,130,200,16,16,"  RNG Error! ");	 
		delay_ms(1000);
		LCD_ShowString(30,130,200,16,16,"RNG Trying...");
		LCD_Fill(30,70,200+30,70+16,BLACK);
		delay_ms(200);
		break;		
	}   
	
//	LCD_ShowString(30,150,200,16,16,"Temp:   . C");
//	LCD_ShowString(30,50,200,16,16,"distance:   .  cm");
	
	show_time();
}

/*自动控制逻辑*/
void auto_control_logic(){
	led_transaction();
	temperature_transaction();
	oxygen_transaction();
	water_level_transaction();
	feed_transaction();
}

/**********************************************控制事物处理区*******************************************/

void led_transaction(void){ //灯光处理事物
	if((auto_flag & 0x01) == 0x01){ //自动灯光
		random=RNG_Get_RandomRange(0,RANDNUM);//获取[0,2^24]区间的随机数
		Set_Duty_Cycle(R_LED,random>>16);
		Set_Duty_Cycle(G_LED,random>>8);
		Set_Duty_Cycle(B_LED,random);
	}
	else{ //自定义灯光
		Set_Duty_Cycle(R_LED,currentDataPoint.valueRGB_R);
		Set_Duty_Cycle(G_LED,currentDataPoint.valueRGB_G);
		Set_Duty_Cycle(B_LED,currentDataPoint.valueRGB_B);
	}
}

void temperature_transaction(void){ //温度处理事物
	if((auto_flag & 0x02) == 0x02){ //自动温控：不需要判断允许控制标志位
		if(currentDataPoint.valueDS18B20 < currentDataPoint.valueTemperature_Min){ //低于温度下限值
			currentDataPoint.valueTemperature_Alarm = 0x01; //低温报警
			/*加热，达到合适温度范围*/
			SWITCH(HEATING_PORT,true);
			currentDataPoint.valueAdd_Temperature = 0x01; //试图让app端加热开关自动可开启（必须要亲自测试可行再用）
		}
		else if(currentDataPoint.valueDS18B20 > currentDataPoint.valueTemperature_Max){ //高于温度上限值
			currentDataPoint.valueDS18B20_Malfunction = 0x01; //高温报警视为温度传感器故障（正常不会）
			/*降温，加氧气*/
			SWITCH(COLLDOWN_PORT,true);
			
//			if((auto_flag & 0x04) != 0x04){ //在没有开启自动加氧
//				SWITCH(OXYGEN_PORT,true);
//				currentDataPoint.valueOxygen_Pump = 0x01; //app端开启氧气开关*/
//			}
			currentDataPoint.valueAdd_Temperature = 0x00;
		}
	}
	else{ //自定义温控
		if(currentDataPoint.valueDS18B20 < currentDataPoint.valueTemperature_Min){ //<温度下限才允许加热
			currentDataPoint.valueTemperature_Alarm = 0x01; //低温报警	
		}
		
		if(currentDataPoint.valueDS18B20 < currentDataPoint.valueTemperature_Min || \
		((currentDataPoint.valueDS18B20 >= currentDataPoint.valueTemperature_Min) && \
		(currentDataPoint.valueDS18B20 <= currentDataPoint.valueTemperature_Max))){
		//温度低于温度下限、温度处于温度下限和温度上限之间，允许加热
			//允许加热，具体操作交由用户决定
			allow_flag |= 0x01; //允许加热
			
			allow_flag &= 0xFD; //不允许降温
			/*自动关闭降温器*/
			SWITCH(COLLDOWN_PORT,false);
			
//			if((auto_flag & 0x04) != 0x04){ //在没有开启自动加氧
//				SWITCH(OXYGEN_PORT,false);
//				currentDataPoint.valueOxygen_Pump = 0x00; //app端关闭氧气开关
//			}
		}
		else{ //高于温度上限值
			allow_flag &= 0xFE; //不允许加热（手动加热存在超温情况）
			/*关闭加热器*/
			SWITCH(HEATING_PORT,false);
			currentDataPoint.valueAdd_Temperature = 0x00; //主动关闭开关状态
			currentDataPoint.valueDS18B20_Malfunction = 0x01; //高温报警视为温度传感器故障（正常不会）
			
			//允许降温、加氧，具体操作交由用户决定
			allow_flag |= 0x02; //允许降温（数据点中未加入降温开关）
			SWITCH(COLLDOWN_PORT,true);
			
//			if((auto_flag & 0x04) != 0x04){ //在没有开启自动加氧
//				SWITCH(OXYGEN_PORT,true);
//				currentDataPoint.valueOxygen_Pump = 0x01; //app端开启氧气开关
//			}
		}
	}
	
	/*不论是自动还是手动，温度处于合理范围就用这个*/
	if((currentDataPoint.valueDS18B20 >= currentDataPoint.valueTemperature_Min) 
	&& (currentDataPoint.valueDS18B20 <= currentDataPoint.valueTemperature_Max)){ 
		if((auto_flag & 0x02) == 0x02){ //自动温控清除，手动不用
			currentDataPoint.valueAdd_Temperature = 0x00; //试图让app端加热开关自动可关闭
			/*关闭加热器*/
			SWITCH(HEATING_PORT,false);
		} 	
		
		currentDataPoint.valueTemperature_Alarm = 0x00; //解除低温报警
		currentDataPoint.valueDS18B20_Malfunction = 0x00; //解除温度传感器故障
		/*关闭降温器和加氧器*/
		SWITCH(COLLDOWN_PORT,false);
		
//		if((auto_flag & 0x04) != 0x04){ //在没有开启自动加氧
//			SWITCH(OXYGEN_PORT,false);
//			currentDataPoint.valueOxygen_Pump = 0x00; //app端关闭氧气开关	
//		}		
	}
}

void water_level_transaction(void){ //水位处理事物
	if((auto_flag & 0x08) == 0x08){ //自动水位	
		//存在异常行为
		if(currentDataPoint.valueWater_level < currentDataPoint.valueDefault_Water_Min){ //低于水位下限
			currentDataPoint.valueWater_Level_Alarm = 0x01; //低水位报警
			/*加水*/
			SWITCH(WATER_PORT,true);
			currentDataPoint.valuePump = 0x01; //APP端状态显示
		}
		else if(currentDataPoint.valueWater_level > currentDataPoint.valueDefault_Water_Max){ //高于水位上限
			currentDataPoint.valueWater_Level_Malfunction = 0x01; //视为水位传感器异常,正常不会出现这种情况
			/*关闭水泵，并放水*/
			SWITCH(WATER_PORT,false);
			currentDataPoint.valuePump = 0x00;
		}
	}
	else{ //自定义水位
		if(currentDataPoint.valueWater_level < currentDataPoint.valueDefault_Water_Min){ 
			currentDataPoint.valueWater_Level_Alarm = 0x01; //低水位报警
		}
		
		if(currentDataPoint.valueWater_level < currentDataPoint.valueDefault_Water_Min || \
		((currentDataPoint.valueWater_level >= currentDataPoint.valueDefault_Water_Min) && \
		(currentDataPoint.valueWater_level <= currentDataPoint.valueDefault_Water_Max))){
		//水位低于水位下限、水位处于水位下限和水位上限之间，允许加水
			allow_flag |= 0x08; //允许加水
		}
		else{ //水位高于水位上限值：禁止人为导致水溢出
			allow_flag &= 0xF7; //禁止加水
			currentDataPoint.valueWater_Level_Malfunction = 0x01; //视为水位传感器异常,正常不会出现这种情况
			/*关闭水泵，并放水*/
			SWITCH(WATER_PORT,false);
		}	
	}
	/*不论是自动还是手动，水位处于合理范围就用这个*/
	if((currentDataPoint.valueWater_level >= currentDataPoint.valueDefault_Water_Min) && \
		(currentDataPoint.valueWater_level <= currentDataPoint.valueDefault_Water_Max)){ //处于合适水位
		if((auto_flag & 0x08) == 0x08){//自动水位才需要清除，手动不需要
			currentDataPoint.valuePump = 0x00;
			/*加水水泵关闭*/
			SWITCH(WATER_PORT,false);
		} 
			
		currentDataPoint.valueWater_Level_Alarm = 0x00; //解除低水位报警
		currentDataPoint.valueWater_Level_Malfunction = 0x00; //解除低水位传感器故障
	}
}

void oxygen_transaction(void){ //加氧操作事物
static bool state_mutex = true; //布尔类型占1Byte
	static bool help_flag = true;
	static bool lock = true;

	if((auto_flag & 0x04) == 0x04){ //自动加氧气
		allow_flag &= 0xFB; //自动控制状态：禁止手动加氧气
		if(state_mutex == true){
			if(lock == true){
				lock = false;
				get_DurationEndTime();
				/*加氧气开关开启*/
				SWITCH(OXYGEN_PORT,true);
				currentDataPoint.valueOxygen_Pump = 0x01; //app端开启氧气开关
			}
		}
		else{
			if(lock == true){
				lock = false;
				get_IntervalEndTime();
				/*加氧气开关关闭*/
				SWITCH(OXYGEN_PORT,false);
				currentDataPoint.valueOxygen_Pump = 0x00; 
			}
		}
		
		if((RTC_TimeStruct.Hours == nextTime.nexthour) && (RTC_TimeStruct.Minutes == nextTime.nextmin) && (help_flag == true)){
			help_flag =false;
			lock = true;
			state_mutex = !state_mutex;
		}
		
		if(RTC_TimeStruct.Minutes != nextTime.nextmin){
			help_flag = true;
		}	
	}
	else{ //自定义加氧气操作
		allow_flag |= 0x04; //允许加氧气		
	}
}

void feed_transaction(void){ //投食事物
	uint8_t count = currentDataPoint.valueFeed_Count;
	
	if((auto_flag & 0x10) == 0x10){ //自动投食
		allow_flag &= 0xEF; //自动状态下禁用手动投食
		
		if((RTC_TimeStruct.Hours == nextTime1.nexthour) && (RTC_TimeStruct.Minutes == nextTime1.nextmin)){
			if(count > 0){
				/*投食器开关开启*/
				servo_angle(5); //自动投食选用中等食量
				currentDataPoint.valueServo = Servo_VALUE4;//app端开启投食开关
				count--;
			}
		}
		else{ //在间隔时间段内不允许开启
			get_FeedEndTime(); //首次获取开始时间
			/*投食器开关关闭*/
			servo_angle(0);
			currentDataPoint.valueServo = Servo_VALUE1;//停止 
		}
		
		if(RTC_TimeStruct.Hours == 0){ //次日重新获取次数，往复循环
			count = currentDataPoint.valueFeed_Count;
		}
	}
	else{ //自定义投食操作
		allow_flag |= 0x10; //允许投食		
	}
}

/*获取加氧时间耗尽时间*/
void get_DurationEndTime(void){
	static bool first_flag = false;
	
	if(first_flag == false){ //仅仅第一次取时钟时间作为开始对照
		nextTime.nexthour = RTC_TimeStruct.Hours;
		nextTime.nextmin = RTC_TimeStruct.Minutes;
		first_flag = true; //第二次开始直接在第一次间隔结束时时间加时长
	}
	nextTime.nexthour += (currentDataPoint.valueAdd_Oxygen_Duration / 60);
	nextTime.nextmin +=  (currentDataPoint.valueAdd_Oxygen_Duration % 60);
	resovle_TimeOver();
}

/*获取加氧间隔耗尽时间*/
void get_IntervalEndTime(void){
	nextTime.nexthour +=  (currentDataPoint.valueAdd_Oxygen_Interval / 60);
	nextTime.nextmin  +=  (currentDataPoint.valueAdd_Oxygen_Interval % 60);
	resovle_TimeOver();
}

void resovle_TimeOver(void){
	/*针对时间溢出特殊处理*/
	if(nextTime.nextmin >= 60){
		nextTime.nexthour += 1; //分钟大于60，小时加1
		nextTime.nextmin %= 60;
	}
	
	if(nextTime.nexthour >= 24){ //二十四小时制
		nextTime.nexthour %= 24;
	}
}

void get_FeedEndTime(void){
	static bool first_flag = false;
	
	if(first_flag == false){ 
		nextTime1.nexthour =  currentDataPoint.valueFeed_Hour; //首次获取第一次开始时间
		nextTime1.nextmin = currentDataPoint.valueFeed_Minute;
		first_flag = true; //第二次开始直接在第一次间隔结束时时间加时长
	}
	else{
		nextTime1.nexthour += currentDataPoint.valueFeed_Interval;
	}
	
	if(nextTime1.nexthour >= 24){
		nextTime1.nexthour %= 24;
	}
}

void judgment_transaction(void){ //硬件执行操作
//判断温度上下限设置是否合理
//判断水位上下限是否合理
}
/**********************************************控制事物处理区*******************************************/



void show_time(void){
//	sprintf((char*)tbuf,"Time:%02d:%02d:%02d",RTC_TimeStruct.Hours,RTC_TimeStruct.Minutes,RTC_TimeStruct.Seconds); 
//	printf("%u, %u ,%u\r\n",RTC_TimeStruct.Hours,RTC_TimeStruct.Minutes,RTC_TimeStruct.Seconds);	
	LCD_ShowxNum(160,16,RTC_TimeStruct.Hours,2,16,0x80);
	LCD_ShowChar(176,16,'/',16,0);
	LCD_ShowxNum(184,16,RTC_TimeStruct.Minutes,2,16,0x80);
	LCD_ShowChar(200,16,'/',16,0);	
	LCD_ShowxNum(208,16,RTC_TimeStruct.Seconds,2,16,0x80);	
	
//	sprintf((char*)tbuf,"Date:20%02d-%02d-%02d",RTC_DateStruct.Year,RTC_DateStruct.Month,RTC_DateStruct.Date); 
	LCD_ShowNum(160,0,(uint16_t)RTC_DateStruct.Year+2000,4,16);
	LCD_ShowChar(192,0,'/',16,0);
	LCD_ShowxNum(200,0,RTC_DateStruct.Month,2,16,0x80);
	LCD_ShowChar(216,0,'/',16,0);
	LCD_ShowxNum(224,0,RTC_DateStruct.Date,2,16,0x80);
//	sprintf((char*)tbuf,"Week:%d",RTC_DateStruct.WeekDay); 
//	printf("%u ,%u ,%u ,%u\r\n",RTC_DateStruct.Year,RTC_DateStruct.Month,RTC_DateStruct.Date,RTC_DateStruct.WeekDay);
//	LCD_ShowxNum(120,0,RTC_DateStruct.WeekDay,2,16,0x80);	
}

/**********************************************滑动滤波*******************************************/
float sidefilter(float newval,sideparm* side){
	float fliterval;
	//int number =  sizeof(side->sidebuff)/sizeof(float);
	
	if(side->firstflag){   //第一次队列
		 if((side->head - side->sidebuff) == LENGTH){		 
			 side->head = side->sidebuff;
		 }
		 float temp = *(side->head);
		 side->tail = side->head;
		 *(side->tail) = newval;
		 side->sum = side->sum - temp + *(side->tail);
		 fliterval = side->sum/LENGTH;

		 side->head++;
	}
	else{
		*(side->tail) = newval;
		side->sum += *(side->tail);
		side->tail++;
		fliterval = side->sum/(side->tail - side->head);
		if((side->tail - side->sidebuff) == LENGTH){
			side->firstflag = 1;
		}
	}
	return fliterval;
}
/**********************************************滑动滤波*******************************************/

/**********************************************操作系统调试区*******************************************/
int ConfigureTimerForRunTimeStats(void){ //接受操作系统调度使用

	FreeRTOSRunTimeTicks = 0; 
	TIM7_Int_Init(50-1,84-1);       //定时器7初始化（1ms的1/20倍）50us，配置freeRtos调试用
	return 0;
}

void FreeRtos_CPU_state_Debug(void){
	memset(Cpu_Buffer,0,sizeof(Cpu_Buffer)); 				//信息缓冲区清零
	vTaskGetRunTimeStats((char*)Cpu_Buffer);  	//获取任务运行时间信息
	Usart1_DmaPrintf("任务名\t\t运行时间\t运行所占百分比\r\n"); 
	Usart1_DmaPrintf("%s\r\n",Cpu_Buffer); 
}

uint16_t RGB888toRGB565(uint8_t red, uint8_t green, uint8_t blue)
{
       uint16_t B = (blue >> 3) & 0x001F;
       uint16_t G = ((green >> 2) << 5) & 0x07E0;
       uint16_t R = ((red >> 3) << 11) & 0xF800;

        return (uint16_t) (R | G | B);
}
/**********************************************操作系统调试区*******************************************/

