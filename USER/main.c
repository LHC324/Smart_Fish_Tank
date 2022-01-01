#include "main.h"
//��ͬ�ṹ�����͵ı���ָ����ͬ�ṹ�壬���Ǵ洢��ַ��ȫ��ͬ[��������ͬ�������ͣ���ͬ������]
extern void keyInit(void);
extern UART_HandleTypeDef UART3_Handler; //����3���

lv_ui guider_ui;


/*ע�������ж����ȼ����������ȼ�*/
//u8 tbuf[40];
RTC_TimeTypeDef RTC_TimeStruct;
RTC_DateTypeDef RTC_DateStruct;
protocolTime_t *GET_NTPTime; //����ʱ��Э����
volatile short temperature=0;
volatile short Distance=0;
volatile uint32_t random;

uint8_t TasK_Buffer[500]; //���������Ϣ
uint8_t Cpu_Buffer[400]; //cup״̬������Ϣ

/*��Ϣ���ж�����*/

QueueHandle_t Flag_Message_Queue; //�����־λ��Ϣ���о��

sideparm side_temperature ={0,{0.0},&side_temperature.sidebuff[0],&side_temperature.sidebuff[0],0.0}; //�ṹ���������ֵ 
sideparm side_waterlevel ={0,{0.0},&side_waterlevel.sidebuff[0],&side_waterlevel.sidebuff[0],0.0};

nexttime nextTime={0};
nexttime nextTime1={0};



/*������ʼ�߳�*/
/*���ȼ���ֵԽС����ô����������ȼ�Խ�ͣ�������������ȼ���0(systick��pendsvĬ��)��ע�������ж����ȼ�*/
#define START_TASK_PRIO			1
#define START_STK_SIZE			128
void start_task(void * pvParameters);  //������
TaskHandle_t StartTask_Handler;		//������	 
 
/*����LCD��ʾ�߳�*/ 
#define LCD_TASK_PRIO			3 //������2Ĭ�Ϸ���Ϊ�����ʱ�����ȼ�
#define LCD_STK_SIZE			512
void lcd_task(void * pvParameters);
TaskHandle_t LcdTask_Handler;		//������

/*���������¼��߳�*/ 
#define EVENT_TASK_PRIO		4
#define EVENT_STK_SIZE		164
void event_task(void * pvParameters);
TaskHandle_t EventTask_Handler;//������

TimerHandle_t AutoReloadTimer1_Handler,AutoReloadTimer2_Handler; //�������ڶ�ʱ�����
void AutoReloadCallback(TimerHandle_t xTimer);//��ʱ���ص�����

/*����COLLECT�߳�*/
#define COLLECT_TASK_PRIO		5
#define COLLECT_STK_SIZE		150//50*��32bit/8��=50*4B=200Byte��Ĭ�ϵ�λ��word��32bit����
void collect_task(void * pvParameters);
TaskHandle_t CollectTask_Handler;		//������	 
 
/*����IOT�߳�*/
#define IOT_TASK_PRIO			6
#define IOT_STK_SIZE			256//IOT�߳����ڴ��̶߳�Э�����񣬱��뱣���������Ķ�ջ�ռ�
void iot_task(void * pvParameters);
TaskHandle_t IotTask_Handler;		//������	

SemaphoreHandle_t BinarySemaphore;/*����һ��NULL��ֵ�ź���*/




/******************************����ϵͳ���*************************************************/
int main(void){

	HAL_Init();                    	 			//��ʼ��HAL��    
    Stm32_Clock_Init(336,8,2,7);   				//����ʱ��,168Mhz
	delay_init(168);               	            //��ʼ����ʱ����
	Init_All();   				                //��ʼ����������

	if(xTaskCreate((TaskFunction_t	) start_task,//����һ������ָ�룬ָ��ִ������ĺ���
				(const char*	) "start_task",//������������ƣ�������ԣ����õĻ�������ΪNull
				(uint16_t		) START_STK_SIZE,//ÿ���������Լ���ջ�ռ䣬�����������ռ����������ջ�ռ�Ĵ�С
				(void * 		) NULL,//���ڴ��ݸ�����Ĳ��������õĻ�������ΪNull
				(UBaseType_t	) START_TASK_PRIO,//������������ȼ�����Χ��0��(configMAX_PRIORITIES �C 1)����ֵԽ�󣬵ȼ�Խ��
				(TaskHandle_t*	) &StartTask_Handler)){//����ľ߱���handle����ͨ���߱����Զ�����������ã�����ı��������ȼ��ȣ����ÿ�����ΪNull
		vTaskStartScheduler(); /*�����������*/
	}         
	else
		return -1;/*�������������ʧ��*/
}
/******************************����ϵͳ���*************************************************/

/******************************���������ڷ���������ʱ������*****************************/
void start_task(void * pvParameters){
//	QueueHandle_t Flag_Message_Queue; //������Ϣ���о��
/*���񼶱����������ٽ���������Ҫ�󾫼�;�����жϼ���������ʱ���ε���>=��configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITYֵ�ж����ȼ�*/
	taskENTER_CRITICAL();

	BinarySemaphore=xSemaphoreCreateBinary(); /* Attempt to create a semaphore. */
	if(BinarySemaphore!=NULL){
		xSemaphoreGive(BinarySemaphore);/*���ͷ�һ�¶�ֵ�ź���*/
	}
	
	/*����LCD����*/
	xTaskCreate((TaskFunction_t	) lcd_task,
				(const char*	) "lcd_task",
				(const TickType_t) LCD_STK_SIZE,
				(void * 		) NULL,
				(UBaseType_t	) LCD_TASK_PRIO,
				(TaskHandle_t*	) &LcdTask_Handler);
	
	/*���������ʱ��1��ʼ������*/			
	AutoReloadTimer1_Handler=(TimerHandle_t)xTimerCreate(
				(const char *     ) "time1_task",//��ʱ���ĵ�һ���������ַ�������ʱ��������
                (const TickType_t ) 1000,/*�ڶ����������Ƕ�ʱʱ�䣬���뼶��10min(600000)*/
                (const UBaseType_t) pdTRUE,//������������pdFALSEֻ��ʱһ�Σ�pdTRUE�Զ�����
                (void *           ) 1,//��4�������𣬶�ʱ����ID��һ��Ϊ0
                (TimerCallbackFunction_t) AutoReloadCallback);//��5����������ʱ���˵Ļص�����
				
	/*���������ʱ��2��ʼ���߳�*/			
	AutoReloadTimer2_Handler=(TimerHandle_t)xTimerCreate(
				(const char *     ) "time2_task",//��ʱ���ĵ�һ���������ַ�������ʱ��������
                (const TickType_t ) 60,/*�ڶ����������Ƕ�ʱʱ�䣬���뼶��60ms*/
                (const UBaseType_t) pdTRUE,//������������pdFALSEֻ��ʱһ�Σ�pdTRUE�Զ�����
                (void *           ) 10,//��4�������𣬶�ʱ����ID��һ��Ϊ0
                (TimerCallbackFunction_t) AutoReloadCallback);//��5����������ʱ���˵Ļص�����
	xTimerStart(AutoReloadTimer1_Handler,0);//������ʱ��1
	xTimerStart(AutoReloadTimer2_Handler,0);//������ʱ��2
	/*if(AutoReloadTimer1_Handler!=NULL){�������ڶ�ʱ�����������ʱ�䲻Ϊ0�����������Ϊ�ȴ���Ӷ���������
		if(xTimerStart(AutoReloadTimer1_Handler,0)!=pdPASS){
//					printf("������ʱ��1ʧ�ܣ�\r\n");
		}
	}*/
				
	/*���������ʱ�������߳�*/			
	xTaskCreate((TaskFunction_t	) event_task,
				(const char*	) "event_task",
				(uint16_t		) EVENT_STK_SIZE,
				(void * 		) NULL,
				(UBaseType_t	) EVENT_TASK_PRIO,
				(TaskHandle_t*	) &EventTask_Handler);
				
	/*����collect�߳�*/
	xTaskCreate((TaskFunction_t	) collect_task,
				(const char*	) "coll_task",
				(uint16_t		) COLLECT_STK_SIZE,
				(void * 		) NULL,
				(UBaseType_t	) COLLECT_TASK_PRIO,
				(TaskHandle_t*	) &CollectTask_Handler);
				
	/*����IOT�߳�*/
	xTaskCreate((TaskFunction_t	) iot_task,
				(const char*	) "iot_task",
				(uint16_t		) IOT_STK_SIZE,
				(void * 		) NULL,
				(UBaseType_t	) IOT_TASK_PRIO,
				(TaskHandle_t*	) &IotTask_Handler);	
				
	vTaskDelete(StartTask_Handler); //ɾ�������߳�
	taskEXIT_CRITICAL();//�˳��ٽ���
}
 


/*lcd������*/
void lcd_task(void * pvParameters){
	while(1){	
//		taskENTER_CRITICAL();
//		HAL_GPIO_WritePin(GPIOC,(GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3),GPIO_PIN_RESET);
//		Show_Str(30,50,200,16,"���ſ�����10��4��",16,0);
//		tp_dev.scan(0); //�������
		lv_task_handler();
//		if(xQueueReceive(Temperature_Message_Queue,&random,0) !=pdPASS){
//		
//		}
		
		show_time();
		
		if(xSemaphoreTake(BinarySemaphore,0) == pdTRUE){/*��ȡ�ź���(�ź�����������ʱʱ��)*/
			Show_Str(60,60,200,16,"��ǰҺλ��",16,0);
			LCD_ShowxNum(140,60,Distance/100,3,16,0x00);
			LCD_ShowChar(164,60,'.',16,0);				
			LCD_ShowxNum(172,60,Distance%100,2,16,0x00); //��ʾС������ 
			LCD_ShowString(188,60,200,16,16,"CM");
//			LCD_ShowxNum(30,182,Distance,5,16,0x00);
		}
		if(temperature<0){
				LCD_ShowChar(140,140,'-',16,0);			//��ʾ����
				temperature=-temperature;					//תΪ����
			}
		else 
				LCD_ShowChar(140,140,' ',16,0);			//ȥ������
				
		Show_Str(60,100,200,16,"�����ֵ��",16,0x00);	
		LCD_ShowxNum(140,100,random,8,16,0x00);
		
		Show_Str(60,140,200,16,"��ǰҺ�£�",16,0x00);
		LCD_ShowxNum(148,140,temperature/10,2,16,0x00);	//��ʾ��������	
		LCD_ShowChar(164,140,'.',16,0);	
   		LCD_ShowxNum(172,140,temperature%10,1,16,0x00);	//��ʾС������
//		LCD_ShowString(180,130,200,12,12,"."); 
		LCD_ShowString(180,140,200,16,16,"C");
		
//		LCD_ShowxNum(30,100,temperature,4,16,0x00);	//��ʾС������ 
		
//		show_weather();

//		taskEXIT_CRITICAL();//�˳��ٽ���
//		LCD_ShowString(30,70,200,16,16,"CPU USED:");
//		LCD_ShowNum(30+8*9,70,OSStatTaskCPUUsage/100,2,16);
//		LCD_ShowString(30+8*11,70,200,16,16,".");
//		LCD_ShowNum(30+8*12,70,OSStatTaskCPUUsage%100,2,16);
//		LCD_ShowString(30+8*9+5*8,70,200,16,16,"%");
		
		vTaskDelay(10);//����ʱ����������������ȣ�delay��ͷ���򲻻�
	}
}

/*�Զ����¼������߳�*/
void event_task(void *parameter){
	while(1){
#if OSTASK_DEBUG 
		FreeRtos_Task_Debug(); //��ϵͳ����״̬����
		FreeRtos_CPU_state_Debug();
#endif	
//		HAL_UART_Transmit_DMA(&UART1_Handler, "\xFF", 0x01); 
		
		auto_control_logic(); //������ƴ������

		vTaskDelay(1500);//��ʱ10ms
	}
}


void collect_task(void * pvParameters){
	while(1){ 
//		taskENTER_CRITICAL();//�ú����������жϣ��ж����ȼ�>=6���жϱ�����[����1]��

		HAL_RTC_GetTime(&RTC_Handler,&RTC_TimeStruct,RTC_FORMAT_BIN); //��ȡ����ʱ��
        HAL_RTC_GetDate(&RTC_Handler,&RTC_DateStruct,RTC_FORMAT_BIN);
		
		temperature = sidefilter((float)DS18B20_Get_Temperature(),&side_temperature);
        currentDataPoint.valueDS18B20 = temperature/10.0;//������ǿ��ת��Ϊ˫����
//		printf("�¶ȣ�%f\r\n",currentDataPoint.valueDS18B20);

//		taskEXIT_CRITICAL();//�˳��ٽ���
		LED0 =! LED0; //ϵͳ����ָʾ��
		vTaskDelay(100);
	}
}


/*������ȼ��������������ݲɼ������߳�*/
void iot_task(void * pvParameters){
static bool update_time=false; //�����ο������±���ʱ��
	while(1){
	
		if(UART3IDLE_RxOverFlag){
			for(uint8_t i = 0;i < UART3IDLE_RxSize;i++)
				gizPutData((uint8_t *)&USART3_RX_BUF[i], 1);
				
			UART3IDLE_RxOverFlag = 0;
			UART3IDLE_RxSize = 0;
			memset(&USART3_RX_BUF,0,UART3IDLE_RxSize);
			HAL_UART_Receive_DMA(&UART3_Handler,USART3_RX_BUF,USART3_MAX_RECV_LEN);	//���´�DMA����
		}
		
		//userHandle();
		tp_dev.scan(0); //�������
		gizwitsHandle((dataPoint_t *)&currentDataPoint); //����������[gizwitsHandle����gizwitsEventProcess]
		if((wifi_success_flag) && (update_time==false)){ //wifi�ɹ�������ʱ��δ���¹�
			gizwitsGetNTP(); //��ȡ����ʱ��
			update_time=true; //�ø��±�־
		}
		vTaskDelay(5);//5ms
	}
}
/******************************���������ڷ���������ʱ������*****************************/

/******************************���������ڷ��������ʱ���ص������ж�*************************/
/*��ʱ��1�ص�����*/
void AutoReloadCallback(TimerHandle_t xTimer){
	if(xTimer==AutoReloadTimer1_Handler){//��ʱ��1
//		Show_Str(30,118,lcddev.width,lcddev.height,"�ص�����",12,0);
	}
	else if(xTimer == AutoReloadTimer2_Handler){
		if(BinarySemaphore !=NULL){
			Distance = sidefilter((float)Hcsr04_Get_Length()*100,&side_waterlevel);//������ˮλ���
			currentDataPoint.valueWater_level = (currentDataPoint.valueDefault_Water_Max+WATER_DEVIATION)-Distance/100.0;//����bug��Ӧ�ó���100��
			xSemaphoreGive(BinarySemaphore);/*��ʱʱ�䵽���ͷŶ�ֵ�ź���*/
		}
	}
}


/*********************************************************************************************/

void Init_All(void){/*���������ʼ��*/
	/*����FREERTOSǰ�����ж����ȼ�����Ϊ4��4bit��ռ���ȼ���0�������ȼ���Ĭ�����÷���2��#include "stm32f4xx_hal.h��"*/
//    HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);
#if (USE_DMA_PRINTF == 1) //ʹ��DMA
	MX_DMA_Init();
#endif
	uart1_init(115200);             	//��ʼ��USART1:����printf��ӡ������
	usart3_init(9600);          	    //��ʼ��USART3
//	HAL_UART_Receive_IT(&UART3_Handler, (uint8_t *)&aRxBuffer, 1);//����Ϊ��ӣ����ûص�����ʱ�������
	TIM5_RGB_Init(256-1,84-1);          //��ʼ��RGB��
//	TIM7_Int_Init(50-1,84-1);         //��ʱ��7��ʼ����1ms��1/20����50us������freeRtos������

//	HAL_UART_Receive_IT(&UART1_Handler, (uint8_t*)&recv_buf, 1);
//	User_Shell_Init();	//��ʼ��letter shell����ϵͳ
	
//	usmart_dev.init(84); 		        //��ʼ��USMART
//	WKUP_Init();
    RTC_Init();  //��ʼ��RTC [����RTC�жϻ��ж��ļ����䵽FLASHоƬ]
	LED_Init();  //��ʼ������LED��
	LCD_Init();  //��ʼ��LCD
	KEY_Init();  //��ʼ������ɨ��
	IIC_Init();  //IIC��ʼ��
	AT24CXX_Init(); //��ʼ��24c02
	W25QXX_Init();  //��ʼ��W25Q64
	font_init();    //��ʼ���ֿ�	
	TP_Init();   //��ʼ��XTP2046���败����
//	LCD_Clear(WHITE);//����
//	TP_Adjust();  	//��ĻУ׼:������Ļת��ʱ��ҪУ׼
//	TP_Save_Adjdata();
//    RTC_Set_WakeUp(RTC_WAKEUPCLOCK_CK_SPRE_16BITS,0); //����WAKE UP�ж�,1�����ж�һ�� 
	my_mem_init(SRAMIN);			//��ʼ���ڲ��ڴ��5K
//	my_mem_init(SRAMCCM);			//��ʼ��CCM�ڴ��
//	prvHeapInit();
	
	Set_Duty_Cycle(R_LED, 0);
	Set_Duty_Cycle(G_LED, 0);
	Set_Duty_Cycle(B_LED, 0);
	
	servo_init();         //��ʼ�����
	Hcsr04_Init(); //��ʼ��������ģ��
	Relay_Init(); //��ʼ���̵���ģ��
	
	userInit(); //�ɼ����ݵĳ�ֵ
	gizwitsInit(); //��ʼ�����������Э��
	keyInit();
	GIZWITS_LOG("MCU Init Success \r\n");

	lv_init(); //��ʼ��littleVGL
	lv_port_disp_init(); //lvgl ��ʾ�ӿڳ�ʼ��,���� lv_init()�ĺ���
	lv_port_indev_init(); //lvgl ����ӿڳ�ʼ��,���� lv_init()�ĺ���
	
	/*Create a GUI-Guider app */
	setup_ui(&guider_ui);
//    events_init(&guider_ui);
	
//	lv_ex_btn_1(); //
//	lv_demo_widgets();
//	
//	exfuns_init();					//Ϊfatfs��ر��������ڴ�  
// 	f_mount(fs[0],"0:",1); 			//����SD�� 
// 	f_mount(fs[1],"1:",1); 			//����FLASH.

//	LCD_Clear(WHITE);		   	//����
// 	POINT_COLOR=RED;			//��������Ϊ��ɫ
	LCD_Clear(BLACK);
	POINT_COLOR = BLACK;//WHITE
	BACK_COLOR = RGB888toRGB565(150, 255, 255);//LIGHTBLUE;
//	LCD_ShowString(30,50,200,16,16,"Explorer STM32F4");

//	Show_Str(20,70,200,12,"���ſ�����10��",12,0);
//	while(SD_Init()){			//���SD��
//		LCD_ShowString(30,70,200,16,16,"SD Card Failed!");
//		delay_ms(200);
//		LCD_Fill(30,70,200+30,70+16,WHITE);
//		delay_ms(200);
//		break;
//	}
	
	while(AT24CXX_Check()){ //���24c02
		LCD_ShowString(30,70,200,16,16,"AT24C02 Failed!");
		delay_ms(1000);
		LCD_Fill(30,70,200+30,70+16,BLACK);
		delay_ms(200);
		break;
	}
	
	while(DS18B20_Init()){	//DS18B20��ʼ��	
		LCD_ShowString(30,70,200,16,16,"DS18B20 Error!");
		delay_ms(1000);
		LCD_Fill(30,70,200+30,70+16,BLACK);
 		delay_ms(200);
		break;
	}  
	
	while(RNG_Init()){	 		//��ʼ�������������
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

/*�Զ������߼�*/
void auto_control_logic(){
	led_transaction();
	temperature_transaction();
	oxygen_transaction();
	water_level_transaction();
	feed_transaction();
}

/**********************************************�������ﴦ����*******************************************/

void led_transaction(void){ //�ƹ⴦������
	if((auto_flag & 0x01) == 0x01){ //�Զ��ƹ�
		random=RNG_Get_RandomRange(0,RANDNUM);//��ȡ[0,2^24]����������
		Set_Duty_Cycle(R_LED,random>>16);
		Set_Duty_Cycle(G_LED,random>>8);
		Set_Duty_Cycle(B_LED,random);
	}
	else{ //�Զ���ƹ�
		Set_Duty_Cycle(R_LED,currentDataPoint.valueRGB_R);
		Set_Duty_Cycle(G_LED,currentDataPoint.valueRGB_G);
		Set_Duty_Cycle(B_LED,currentDataPoint.valueRGB_B);
	}
}

void temperature_transaction(void){ //�¶ȴ�������
	if((auto_flag & 0x02) == 0x02){ //�Զ��¿أ�����Ҫ�ж�������Ʊ�־λ
		if(currentDataPoint.valueDS18B20 < currentDataPoint.valueTemperature_Min){ //�����¶�����ֵ
			currentDataPoint.valueTemperature_Alarm = 0x01; //���±���
			/*���ȣ��ﵽ�����¶ȷ�Χ*/
			SWITCH(HEATING_PORT,true);
			currentDataPoint.valueAdd_Temperature = 0x01; //��ͼ��app�˼��ȿ����Զ��ɿ���������Ҫ���Բ��Կ������ã�
		}
		else if(currentDataPoint.valueDS18B20 > currentDataPoint.valueTemperature_Max){ //�����¶�����ֵ
			currentDataPoint.valueDS18B20_Malfunction = 0x01; //���±�����Ϊ�¶ȴ��������ϣ��������ᣩ
			/*���£�������*/
			SWITCH(COLLDOWN_PORT,true);
			
//			if((auto_flag & 0x04) != 0x04){ //��û�п����Զ�����
//				SWITCH(OXYGEN_PORT,true);
//				currentDataPoint.valueOxygen_Pump = 0x01; //app�˿�����������*/
//			}
			currentDataPoint.valueAdd_Temperature = 0x00;
		}
	}
	else{ //�Զ����¿�
		if(currentDataPoint.valueDS18B20 < currentDataPoint.valueTemperature_Min){ //<�¶����޲��������
			currentDataPoint.valueTemperature_Alarm = 0x01; //���±���	
		}
		
		if(currentDataPoint.valueDS18B20 < currentDataPoint.valueTemperature_Min || \
		((currentDataPoint.valueDS18B20 >= currentDataPoint.valueTemperature_Min) && \
		(currentDataPoint.valueDS18B20 <= currentDataPoint.valueTemperature_Max))){
		//�¶ȵ����¶����ޡ��¶ȴ����¶����޺��¶�����֮�䣬�������
			//������ȣ�������������û�����
			allow_flag |= 0x01; //�������
			
			allow_flag &= 0xFD; //��������
			/*�Զ��رս�����*/
			SWITCH(COLLDOWN_PORT,false);
			
//			if((auto_flag & 0x04) != 0x04){ //��û�п����Զ�����
//				SWITCH(OXYGEN_PORT,false);
//				currentDataPoint.valueOxygen_Pump = 0x00; //app�˹ر���������
//			}
		}
		else{ //�����¶�����ֵ
			allow_flag &= 0xFE; //��������ȣ��ֶ����ȴ��ڳ��������
			/*�رռ�����*/
			SWITCH(HEATING_PORT,false);
			currentDataPoint.valueAdd_Temperature = 0x00; //�����رտ���״̬
			currentDataPoint.valueDS18B20_Malfunction = 0x01; //���±�����Ϊ�¶ȴ��������ϣ��������ᣩ
			
			//�����¡�������������������û�����
			allow_flag |= 0x02; //�����£����ݵ���δ���뽵�¿��أ�
			SWITCH(COLLDOWN_PORT,true);
			
//			if((auto_flag & 0x04) != 0x04){ //��û�п����Զ�����
//				SWITCH(OXYGEN_PORT,true);
//				currentDataPoint.valueOxygen_Pump = 0x01; //app�˿�����������
//			}
		}
	}
	
	/*�������Զ������ֶ����¶ȴ��ں���Χ�������*/
	if((currentDataPoint.valueDS18B20 >= currentDataPoint.valueTemperature_Min) 
	&& (currentDataPoint.valueDS18B20 <= currentDataPoint.valueTemperature_Max)){ 
		if((auto_flag & 0x02) == 0x02){ //�Զ��¿�������ֶ�����
			currentDataPoint.valueAdd_Temperature = 0x00; //��ͼ��app�˼��ȿ����Զ��ɹر�
			/*�رռ�����*/
			SWITCH(HEATING_PORT,false);
		} 	
		
		currentDataPoint.valueTemperature_Alarm = 0x00; //������±���
		currentDataPoint.valueDS18B20_Malfunction = 0x00; //����¶ȴ���������
		/*�رս������ͼ�����*/
		SWITCH(COLLDOWN_PORT,false);
		
//		if((auto_flag & 0x04) != 0x04){ //��û�п����Զ�����
//			SWITCH(OXYGEN_PORT,false);
//			currentDataPoint.valueOxygen_Pump = 0x00; //app�˹ر���������	
//		}		
	}
}

void water_level_transaction(void){ //ˮλ��������
	if((auto_flag & 0x08) == 0x08){ //�Զ�ˮλ	
		//�����쳣��Ϊ
		if(currentDataPoint.valueWater_level < currentDataPoint.valueDefault_Water_Min){ //����ˮλ����
			currentDataPoint.valueWater_Level_Alarm = 0x01; //��ˮλ����
			/*��ˮ*/
			SWITCH(WATER_PORT,true);
			currentDataPoint.valuePump = 0x01; //APP��״̬��ʾ
		}
		else if(currentDataPoint.valueWater_level > currentDataPoint.valueDefault_Water_Max){ //����ˮλ����
			currentDataPoint.valueWater_Level_Malfunction = 0x01; //��Ϊˮλ�������쳣,������������������
			/*�ر�ˮ�ã�����ˮ*/
			SWITCH(WATER_PORT,false);
			currentDataPoint.valuePump = 0x00;
		}
	}
	else{ //�Զ���ˮλ
		if(currentDataPoint.valueWater_level < currentDataPoint.valueDefault_Water_Min){ 
			currentDataPoint.valueWater_Level_Alarm = 0x01; //��ˮλ����
		}
		
		if(currentDataPoint.valueWater_level < currentDataPoint.valueDefault_Water_Min || \
		((currentDataPoint.valueWater_level >= currentDataPoint.valueDefault_Water_Min) && \
		(currentDataPoint.valueWater_level <= currentDataPoint.valueDefault_Water_Max))){
		//ˮλ����ˮλ���ޡ�ˮλ����ˮλ���޺�ˮλ����֮�䣬�����ˮ
			allow_flag |= 0x08; //�����ˮ
		}
		else{ //ˮλ����ˮλ����ֵ����ֹ��Ϊ����ˮ���
			allow_flag &= 0xF7; //��ֹ��ˮ
			currentDataPoint.valueWater_Level_Malfunction = 0x01; //��Ϊˮλ�������쳣,������������������
			/*�ر�ˮ�ã�����ˮ*/
			SWITCH(WATER_PORT,false);
		}	
	}
	/*�������Զ������ֶ���ˮλ���ں���Χ�������*/
	if((currentDataPoint.valueWater_level >= currentDataPoint.valueDefault_Water_Min) && \
		(currentDataPoint.valueWater_level <= currentDataPoint.valueDefault_Water_Max)){ //���ں���ˮλ
		if((auto_flag & 0x08) == 0x08){//�Զ�ˮλ����Ҫ������ֶ�����Ҫ
			currentDataPoint.valuePump = 0x00;
			/*��ˮˮ�ùر�*/
			SWITCH(WATER_PORT,false);
		} 
			
		currentDataPoint.valueWater_Level_Alarm = 0x00; //�����ˮλ����
		currentDataPoint.valueWater_Level_Malfunction = 0x00; //�����ˮλ����������
	}
}

void oxygen_transaction(void){ //������������
static bool state_mutex = true; //��������ռ1Byte
	static bool help_flag = true;
	static bool lock = true;

	if((auto_flag & 0x04) == 0x04){ //�Զ�������
		allow_flag &= 0xFB; //�Զ�����״̬����ֹ�ֶ�������
		if(state_mutex == true){
			if(lock == true){
				lock = false;
				get_DurationEndTime();
				/*���������ؿ���*/
				SWITCH(OXYGEN_PORT,true);
				currentDataPoint.valueOxygen_Pump = 0x01; //app�˿�����������
			}
		}
		else{
			if(lock == true){
				lock = false;
				get_IntervalEndTime();
				/*���������عر�*/
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
	else{ //�Զ������������
		allow_flag |= 0x04; //���������		
	}
}

void feed_transaction(void){ //Ͷʳ����
	uint8_t count = currentDataPoint.valueFeed_Count;
	
	if((auto_flag & 0x10) == 0x10){ //�Զ�Ͷʳ
		allow_flag &= 0xEF; //�Զ�״̬�½����ֶ�Ͷʳ
		
		if((RTC_TimeStruct.Hours == nextTime1.nexthour) && (RTC_TimeStruct.Minutes == nextTime1.nextmin)){
			if(count > 0){
				/*Ͷʳ�����ؿ���*/
				servo_angle(5); //�Զ�Ͷʳѡ���е�ʳ��
				currentDataPoint.valueServo = Servo_VALUE4;//app�˿���Ͷʳ����
				count--;
			}
		}
		else{ //�ڼ��ʱ����ڲ�������
			get_FeedEndTime(); //�״λ�ȡ��ʼʱ��
			/*Ͷʳ�����عر�*/
			servo_angle(0);
			currentDataPoint.valueServo = Servo_VALUE1;//ֹͣ 
		}
		
		if(RTC_TimeStruct.Hours == 0){ //�������»�ȡ����������ѭ��
			count = currentDataPoint.valueFeed_Count;
		}
	}
	else{ //�Զ���Ͷʳ����
		allow_flag |= 0x10; //����Ͷʳ		
	}
}

/*��ȡ����ʱ��ľ�ʱ��*/
void get_DurationEndTime(void){
	static bool first_flag = false;
	
	if(first_flag == false){ //������һ��ȡʱ��ʱ����Ϊ��ʼ����
		nextTime.nexthour = RTC_TimeStruct.Hours;
		nextTime.nextmin = RTC_TimeStruct.Minutes;
		first_flag = true; //�ڶ��ο�ʼֱ���ڵ�һ�μ������ʱʱ���ʱ��
	}
	nextTime.nexthour += (currentDataPoint.valueAdd_Oxygen_Duration / 60);
	nextTime.nextmin +=  (currentDataPoint.valueAdd_Oxygen_Duration % 60);
	resovle_TimeOver();
}

/*��ȡ��������ľ�ʱ��*/
void get_IntervalEndTime(void){
	nextTime.nexthour +=  (currentDataPoint.valueAdd_Oxygen_Interval / 60);
	nextTime.nextmin  +=  (currentDataPoint.valueAdd_Oxygen_Interval % 60);
	resovle_TimeOver();
}

void resovle_TimeOver(void){
	/*���ʱ��������⴦��*/
	if(nextTime.nextmin >= 60){
		nextTime.nexthour += 1; //���Ӵ���60��Сʱ��1
		nextTime.nextmin %= 60;
	}
	
	if(nextTime.nexthour >= 24){ //��ʮ��Сʱ��
		nextTime.nexthour %= 24;
	}
}

void get_FeedEndTime(void){
	static bool first_flag = false;
	
	if(first_flag == false){ 
		nextTime1.nexthour =  currentDataPoint.valueFeed_Hour; //�״λ�ȡ��һ�ο�ʼʱ��
		nextTime1.nextmin = currentDataPoint.valueFeed_Minute;
		first_flag = true; //�ڶ��ο�ʼֱ���ڵ�һ�μ������ʱʱ���ʱ��
	}
	else{
		nextTime1.nexthour += currentDataPoint.valueFeed_Interval;
	}
	
	if(nextTime1.nexthour >= 24){
		nextTime1.nexthour %= 24;
	}
}

void judgment_transaction(void){ //Ӳ��ִ�в���
//�ж��¶������������Ƿ����
//�ж�ˮλ�������Ƿ����
}
/**********************************************�������ﴦ����*******************************************/



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

/**********************************************�����˲�*******************************************/
float sidefilter(float newval,sideparm* side){
	float fliterval;
	//int number =  sizeof(side->sidebuff)/sizeof(float);
	
	if(side->firstflag){   //��һ�ζ���
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
/**********************************************�����˲�*******************************************/

/**********************************************����ϵͳ������*******************************************/
int ConfigureTimerForRunTimeStats(void){ //���ܲ���ϵͳ����ʹ��

	FreeRTOSRunTimeTicks = 0; 
	TIM7_Int_Init(50-1,84-1);       //��ʱ��7��ʼ����1ms��1/20����50us������freeRtos������
	return 0;
}

void FreeRtos_CPU_state_Debug(void){
	memset(Cpu_Buffer,0,sizeof(Cpu_Buffer)); 				//��Ϣ����������
	vTaskGetRunTimeStats((char*)Cpu_Buffer);  	//��ȡ��������ʱ����Ϣ
	Usart1_DmaPrintf("������\t\t����ʱ��\t������ռ�ٷֱ�\r\n"); 
	Usart1_DmaPrintf("%s\r\n",Cpu_Buffer); 
}

uint16_t RGB888toRGB565(uint8_t red, uint8_t green, uint8_t blue)
{
       uint16_t B = (blue >> 3) & 0x001F;
       uint16_t G = ((green >> 2) << 5) & 0x07E0;
       uint16_t R = ((red >> 3) << 11) & 0xF800;

        return (uint16_t) (R | G | B);
}
/**********************************************����ϵͳ������*******************************************/

