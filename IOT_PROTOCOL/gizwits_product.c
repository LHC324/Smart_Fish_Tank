/**
************************************************************
* @file         gizwits_product.c
* @brief        Gizwits control protocol processing, and platform-related       hardware initialization 
* @author       Gizwits
* @date         2017-07-19
* @version      V03030000
* @copyright    Gizwits
* 
* @note         机智云.只为智能硬件而生
*               Gizwits Smart Cloud  for Smart Products
*               链接|增值ֵ|开放|中立|安全|自有|自由|生态
*               www.gizwits.com
*
***********************************************************/

#include <stdio.h>
#include <string.h>
#include "hal_key.h"
#include "gizwits_product.h"
#include "common.h"
#include "rtc.h" //时钟
#include "pwm.h" //灯光
//#include "rng.h" //随机函数发生器
#include "FreeRTOS.h"	//FreeRTOS 使用	 
#include "task.h"    //访问临界区 
#include "queue.h" //包含消息队列

#include "usart.h"

#define SYSTEM_SUPPORT_OS		1

static uint32_t timerMsCount;
uint8_t aRxBuffer;
uint8_t auto_flag = 0x00; //自动控制标志位
uint8_t allow_flag = 0x00; //允许控制标志位

bool wifi_success_flag = 0;
extern RTC_TimeTypeDef RTC_TimeStruct;
extern RTC_DateTypeDef RTC_DateStruct;

/** User area the current device state structure*/
dataPoint_t currentDataPoint;
extern keysTypedef_t keys;

extern UART_HandleTypeDef UART3_Handler; //串口3句柄



/**@} */
/**@name Gizwits User Interface
* @{
*/

/**
* @brief Event handling interface

* Description:

* 1. Users can customize the changes in WiFi module status

* 2. Users can add data points in the function of event processing logic, such as calling the relevant hardware peripherals operating interface

* @param [in] info: event queue
* @param [in] data: protocol data
* @param [in] len: protocol data length
* @return NULL
* @ref gizwits_protocol.h
*/
int8_t gizwitsEventProcess(eventInfo_t *info, uint8_t *gizdata, uint32_t len){
  uint8_t i = 0;
  dataPoint_t *dataPointPtr = (dataPoint_t *)gizdata;
  moduleStatusInfo_t *wifiData = (moduleStatusInfo_t *)gizdata;
  protocolTime_t *ptime = (protocolTime_t *)gizdata;
//  QueueHandle_t xQueue; //返回一个消息类型句柄
#if MODULE_TYPE
  gprsInfo_t *gprsInfoData = (gprsInfo_t *)gizdata;
#else
  moduleInfo_t *ptModuleInfo = (moduleInfo_t *)gizdata;
#endif

  if((NULL == info) || (NULL == gizdata)){
    return -1;
  }

  for(i=0; i<info->num; i++){  
    switch(info->event[i]){
      case EVENT_Led_Auto://自动灯光
        currentDataPoint.valueLed_Auto = dataPointPtr->valueLed_Auto;
        GIZWITS_LOG("Evt: EVENT_Led_Auto %d \r\n", currentDataPoint.valueLed_Auto);
        if(0x01 == currentDataPoint.valueLed_Auto){
			auto_flag |=0x01;
        }
        else{
			auto_flag &=0xFE;	
        }
        break;
      case EVENT_Temperature_Auto://自动温控
        currentDataPoint.valueTemperature_Auto = dataPointPtr->valueTemperature_Auto;
        GIZWITS_LOG("Evt: EVENT_Temperature_Auto %d \r\n", currentDataPoint.valueTemperature_Auto);
        if(0x01 == currentDataPoint.valueTemperature_Auto){
          auto_flag |=0x02;
        }
        else{
          auto_flag &=0xFD;   
        }
        break;
	  case EVENT_Oxygen_Auto://自动加氧
		currentDataPoint.valueOxygen_Auto = dataPointPtr->valueOxygen_Auto;
        GIZWITS_LOG("Evt: EVENT_Oxygen_Auto %d \r\n", currentDataPoint.valueOxygen_Auto);
        if(0x01 == currentDataPoint.valueOxygen_Auto){
         auto_flag |=0x04;
        }
        else{
          auto_flag &=0xFB;   
        }
        break;
	  case EVENT_Water_Level_Auto://自动水位
        currentDataPoint.valueWater_Level_Auto = dataPointPtr->valueWater_Level_Auto;
        GIZWITS_LOG("Evt: EVENT_Water_Level_Auto %d \r\n", currentDataPoint.valueWater_Level_Auto);
        if(0x01 == currentDataPoint.valueWater_Level_Auto){
		  auto_flag |=0x08;
        }
        else{
          auto_flag &=0xF7;   
        }
        break;
	  case EVENT_Feed_Auto://自动投食
        currentDataPoint.valueFeed_Auto = dataPointPtr->valueFeed_Auto;
        GIZWITS_LOG("Evt: EVENT_Feed_Auto %d \r\n", currentDataPoint.valueFeed_Auto);
        if(0x01 == currentDataPoint.valueFeed_Auto){
		  auto_flag |=0x10;
        }
        else{
          auto_flag &=0xEF;   
        }
        break;
	  case EVENT_RGB_R://红色灯光
        currentDataPoint.valueRGB_R = dataPointPtr->valueRGB_R;
        GIZWITS_LOG("Evt:EVENT_RGB_R %d\r\n",currentDataPoint.valueRGB_R);
        break;
      case EVENT_RGB_G://绿色灯光
        currentDataPoint.valueRGB_G = dataPointPtr->valueRGB_G;
        GIZWITS_LOG("Evt:EVENT_RGB_G %d\r\n",currentDataPoint.valueRGB_G);
        break;
      case EVENT_RGB_B://蓝色灯光
        currentDataPoint.valueRGB_B = dataPointPtr->valueRGB_B;
        GIZWITS_LOG("Evt:EVENT_RGB_B %d\r\n",currentDataPoint.valueRGB_B);
        break;
	  case EVENT_Temperature_Max://温度上限
        currentDataPoint.valueTemperature_Max = dataPointPtr->valueTemperature_Max;
        GIZWITS_LOG("Evt:EVENT_Temperature_Max %4f\r\n",currentDataPoint.valueTemperature_Max);
        //user handle
        break;
      case EVENT_Temperature_Min://温度下限
        currentDataPoint.valueTemperature_Min = dataPointPtr->valueTemperature_Min;
        GIZWITS_LOG("Evt:EVENT_Temperature_Min %4f\r\n",currentDataPoint.valueTemperature_Min);
        //user handle
        break;
      case EVENT_Add_Temperature: //加温
        currentDataPoint.valueAdd_Temperature = dataPointPtr->valueAdd_Temperature;
        GIZWITS_LOG("Evt: EVENT_Add_Temperature %d \r\n", currentDataPoint.valueAdd_Temperature);
        if(0x01 == currentDataPoint.valueAdd_Temperature){
			if((auto_flag & 0x02) !=0x02){ //检查是否开启自动温控（没有开启）
				if((allow_flag & 0x01) == 0x01){ //允许加热
					//开启加热继电器
					SWITCH(HEATING_PORT,true);
				}
			}
//          else{
//			//交给自动温控处理程序处理
//		  }
        }
        else{ //app端控制加热继电器关闭
          if((auto_flag & 0x02) !=0x02){ //没有开启自动温控
				//关闭加热继电器
				SWITCH(HEATING_PORT,false);
			}    
        }
        break;
      case EVENT_Add_Oxygen_Interval://加氧间隔
        currentDataPoint.valueAdd_Oxygen_Interval = dataPointPtr->valueAdd_Oxygen_Interval;
        GIZWITS_LOG("Evt:EVENT_Add_Oxygen_Interval %d\r\n",currentDataPoint.valueAdd_Oxygen_Interval);
        //user handle
        break;
	  case EVENT_Add_Oxygen_Duration://加氧时长
        currentDataPoint.valueAdd_Oxygen_Duration = dataPointPtr->valueAdd_Oxygen_Duration;
        GIZWITS_LOG("Evt:EVENT_Add_Oxygen_Duration %d\r\n",currentDataPoint.valueAdd_Oxygen_Duration);
        //user handle
        break;
      case EVENT_Oxygen_Pump://加氧气
        currentDataPoint.valueOxygen_Pump = dataPointPtr->valueOxygen_Pump;
        GIZWITS_LOG("Evt: EVENT_Oxygen_Pump %d \r\n", currentDataPoint.valueOxygen_Pump);
        if(0x01 == currentDataPoint.valueOxygen_Pump)
        {
          if((auto_flag & 0x04) !=0x04){ //检查是否开启自动加氧
				if((allow_flag & 0x04) == 0x04){ //检查是否允许加氧
					//开启加氧继电器
					SWITCH(OXYGEN_PORT,true);
				}
			}
        }
        else
        {
          if((auto_flag & 0x04) !=0x04){ //没有开启自动加氧
				//关闭加氧继电器
				SWITCH(OXYGEN_PORT,false);
			}        
        }
        break;
      case EVENT_Default_Water_Max://最高水位
        currentDataPoint.valueDefault_Water_Max = dataPointPtr->valueDefault_Water_Max;
        GIZWITS_LOG("Evt:EVENT_Default_Water_Max %4f\r\n",currentDataPoint.valueDefault_Water_Max);
        //user handle
        break;
      case EVENT_Default_Water_Min://最低水位
        currentDataPoint.valueDefault_Water_Min = dataPointPtr->valueDefault_Water_Min;
        GIZWITS_LOG("Evt:EVENT_Default_Water_Min %4f\r\n",currentDataPoint.valueDefault_Water_Min);
        //user handle
        break;
      case EVENT_Pump://加水
        currentDataPoint.valuePump = dataPointPtr->valuePump;
        GIZWITS_LOG("Evt: EVENT_Pump %d \r\n", currentDataPoint.valuePump);
        if(0x01 == currentDataPoint.valuePump)
        {
          if((auto_flag & 0x08) !=0x08){ //检查是否开启自动水位
				if((allow_flag & 0x08) == 0x08){ //检查是否允许加水
					//开启加水继电器
					SWITCH(WATER_PORT,true);
				}
			}
        }
        else
        {
          if((auto_flag & 0x08) !=0x08){ //没有开启自动水位
				//关闭加水继电器
				SWITCH(WATER_PORT,false);
			}       
        }
        break;
	   case EVENT_Feed_Hour://投食时
        currentDataPoint.valueFeed_Hour = dataPointPtr->valueFeed_Hour;
        GIZWITS_LOG("Evt:EVENT_Feed_Hour %d\r\n",currentDataPoint.valueFeed_Hour);
        //user handle
        break;
      case EVENT_Feed_Minute://投食分
        currentDataPoint.valueFeed_Minute = dataPointPtr->valueFeed_Minute;
        GIZWITS_LOG("Evt:EVENT_Feed_Minute %d\r\n",currentDataPoint.valueFeed_Minute);
        //user handle
        break;
      case EVENT_Feed_Second://投食秒
        currentDataPoint.valueFeed_Second = dataPointPtr->valueFeed_Second;
        GIZWITS_LOG("Evt:EVENT_Feed_Second %d\r\n",currentDataPoint.valueFeed_Second);
        //user handle
        break;
      case EVENT_Feed_Interval://投食间隔
        currentDataPoint.valueFeed_Interval = dataPointPtr->valueFeed_Interval;
        GIZWITS_LOG("Evt:EVENT_Feed_Interval %d\r\n",currentDataPoint.valueFeed_Interval);
        //user handle
        break;
      case EVENT_Feed_Count://投食次数
        currentDataPoint.valueFeed_Count = dataPointPtr->valueFeed_Count;
        GIZWITS_LOG("Evt:EVENT_Feed_Count %d\r\n",currentDataPoint.valueFeed_Count);
        //user handle
        break;
      case EVENT_Servo://投食
        currentDataPoint.valueServo = dataPointPtr->valueServo;
        GIZWITS_LOG("Evt: EVENT_Servo %d\r\n", currentDataPoint.valueServo);
		if((auto_flag & 0x10) != 0x10){ //检查是否开启自动投食
			if((allow_flag & 0x10) == 0x10){ //检查是否允许投食
			switch(currentDataPoint.valueServo)
			{
			case Servo_VALUE0: //正转和反转：解决卡食物问题
				servo_angle(-3); break; //反转
				
			case Servo_VALUE1:
				servo_angle(0); break; //停止
				
			case Servo_VALUE2:
				servo_angle(3); break; //正转
				
			case Servo_VALUE3:
				servo_angle(4); break; //小食量
				
			case Servo_VALUE4:
				servo_angle(5); break; //中等食量

			case Servo_VALUE5:
				servo_angle(6); break; //大食量
				
			default:
				servo_angle(0); break; //停止
        }
			}	
		}
        break;
		
      case WIFI_SOFTAP:
        break;
      case WIFI_AIRLINK:
        break;
      case WIFI_STATION:
        break;
      case WIFI_CON_ROUTER:
        break;
      case WIFI_DISCON_ROUTER:
        break;
      case WIFI_CON_M2M://wifi连接
	    wifi_success_flag=1; //wifi连接成功
		 GIZWITS_LOG("wifi connection succeeded\r\n");
        break;
      case WIFI_DISCON_M2M://wifi断开
		wifi_success_flag=0; //wifi连接失败
		 GIZWITS_LOG("wifi connection failed\r\n");
        break;
      case WIFI_RSSI:
        GIZWITS_LOG("RSSI %d\r\n", wifiData->rssi);
        break;
      case TRANSPARENT_DATA:
        GIZWITS_LOG("TRANSPARENT_DATA \r\n");
        //user handle , Fetch data from [data] , size is [len]
        break;
      case WIFI_NTP: //更新本地RTC时间
		if((ptime->hour!=RTC_TimeStruct.Hours) ||(ptime->year!=RTC_DateStruct.Year)){//本地时钟出错
			RTC_Set_Time((ptime->hour),ptime->minute,ptime->second,RTC_HOURFORMAT12_PM); //设置时间 ,根据实际时间修改		
			RTC_Set_Date((ptime->year)%100,ptime->month,ptime->day,4);	//该ntp时间没有周
			GIZWITS_LOG("RTC_clock is update!\r\n");
		}					
        GIZWITS_LOG("WIFI_NTP : [%d-%d-%d %02d:%02d:%02d][%d] \r\n",ptime->year,ptime->month,ptime->day,ptime->hour,ptime->minute,ptime->second,ptime->ntp);
        break;
      case MODULE_INFO:
            GIZWITS_LOG("MODULE INFO ...\r\n");
      #if MODULE_TYPE
            GIZWITS_LOG("GPRS MODULE ...\r\n");
            //Format By gprsInfo_t
      #else
            GIZWITS_LOG("WIF MODULE ...\r\n");
            //Format By moduleInfo_t
            GIZWITS_LOG("moduleType : [%d] \r\n",ptModuleInfo->moduleType);
      #endif
    break;
      default:
        break;
    }
  } //操作结束后通过标志消息队列发送
  /* Send the message to the queue, waiting for 10 ticks for space to become
   available if the queue is already full. */
// if(xQueueSendToBack(xQueue,&auto_flag,10) != pdPASS )
// {
//	/* Data could not be sent to the queue even after waiting 10 ticks. */
// }

  return 0;
}

/**
* User data acquisition

* Here users need to achieve in addition to data points other than the collection of data collection, can be self-defined acquisition frequency and design data filtering algorithm

* @param none
* @return none
*/
void userHandle(void){
//    currentDataPoint.valueDS18B20 = 20;//Add Sensor Data Collection
//    currentDataPoint.valueWater_level = 50;//Add Sensor Data Collection
//    currentDataPoint.valueTemperature_Alarm = 0x00;//Add Sensor Data Collection
//    currentDataPoint.valueWater_Level_Alarm = 0x00;//Add Sensor Data Collection
//    currentDataPoint.valueDS18B20_Malfunction = 0x00;//Add Sensor Data Collection
//    currentDataPoint.valueWater_Level_Malfunction = 0x00;//Add Sensor Data Collection
//    currentDataPoint.valueFeed_Malfunction = 0x00;//Add Sensor Data Collection
 
}

/**
* Data point initialization function

* In the function to complete the initial user-related data
* @param none
* @return none
* @note The developer can add a data point state initialization value within this function
*/
void userInit(void){
    memset((uint8_t*)&currentDataPoint, 0, sizeof(dataPoint_t));
    
    /** Warning !!! DataPoint Variables Init , Must Within The Data Range **/ 
	  /*自动控制位*/
      currentDataPoint.valueLed_Auto = 0x00; //在没有接入控制平台时，默认处于自动控制化状态
      currentDataPoint.valueTemperature_Auto = 0x00;
	  currentDataPoint.valueWater_Level_Auto = 0x00;
	  currentDataPoint.valueOxygen_Auto = 0x00;
	  currentDataPoint.valueFeed_Auto = 0x00;
	  /*灯光*/
	  currentDataPoint.valueRGB_R = 0x00;
      currentDataPoint.valueRGB_G = 0x00;
      currentDataPoint.valueRGB_B = 0x00;
	  /*温度*/
      currentDataPoint.valueAdd_Temperature = 0x00;
	  currentDataPoint.valueDS18B20 = 0x00;
	  currentDataPoint.valueTemperature_Max = 26;
      currentDataPoint.valueTemperature_Min = 24;//18      
	  currentDataPoint.valueTemperature_Alarm = 0x00;
      currentDataPoint.valueDS18B20_Malfunction = 0x00;
	  /*水位*/
	  currentDataPoint.valuePump = 0x00;
	  currentDataPoint.valueWater_level = 29; //25+4
	  currentDataPoint.valueDefault_Water_Max = 25;//45
      currentDataPoint.valueDefault_Water_Min = 4;//25
	  currentDataPoint.valueWater_Level_Alarm = 0x00;
	  currentDataPoint.valueWater_Level_Malfunction = 0x00;
	  /*氧气*/
      currentDataPoint.valueOxygen_Pump = 0x00;
	  currentDataPoint.valueAdd_Oxygen_Duration = 1;//1min时长 
	  currentDataPoint.valueAdd_Oxygen_Interval = 1;//1min间隔
	  /*投食*/
      currentDataPoint.valueServo = Servo_VALUE1;//停止 
      currentDataPoint.valueFeed_Hour = 12;
      currentDataPoint.valueFeed_Minute = 0;
      currentDataPoint.valueFeed_Second = 0;
      currentDataPoint.valueFeed_Interval = 2;//h
      currentDataPoint.valueFeed_Count = 0x01;
      currentDataPoint.valueFeed_Malfunction = 0x00;
}


/**
* @brief Millisecond timing maintenance function, milliseconds increment, overflow to zero

* @param none
* @return none
*/
void gizTimerMs(void){
    timerMsCount++;
}

/**
* @brief Read millisecond count

* @param none
* @return millisecond count
*/
uint32_t gizGetTimerCount(void){
    return timerMsCount;
}

/**
* @brief MCU reset function

* @param none
* @return none
*/
void mcuRestart(void){
    __set_FAULTMASK(1);
    HAL_NVIC_SystemReset();
}

/**
* @brief Serial port write operation, send data to WiFi module
*
* @param buf      : buf address
* @param len      : buf length
*
* @return : Return effective data length;-1，return failure
*/
int32_t uartWrite(uint8_t *buf, uint32_t len){
uint32_t status_value;
#if SYSTEM_SUPPORT_OS	 	//使用OS
	status_value=taskENTER_CRITICAL_FROM_ISR();//中断级保护    
#endif	
//	uint8_t crc[1] = {0x55};
//    uint32_t i = 0;
	uint16_t  i = 0;
	uint16_t buffer_size = 0;
	
    if(NULL == buf){
        return -1;
    }

//    for(i=0; i<len; i++){
//        HAL_UART_Transmit_IT(&UART3_Handler, (uint8_t *)&buf[i], 1);		
//		  while (UART3_Handler.gState != HAL_UART_STATE_READY){} //Loop until the end of transmission

		for(i = 0; i < len; i++){ //对发送的数据进行重新组包，完成后交由DMA发送
		
			USART3_TX_BUF[buffer_size++] = buf[i];
			
			if(i >=2 && buf[i] == 0xFF){
			USART3_TX_BUF[buffer_size++] = 0x55; //加上一个字节的CRC校验码
			}	
		}
		
		HAL_UART_Transmit_DMA(&UART3_Handler, (uint8_t *)&USART3_TX_BUF, buffer_size);
		while(__HAL_UART_GET_FLAG(&UART3_Handler,UART_FLAG_TC) == RESET){} //等待DMA发送数据丢包问题
		buffer_size = 0;
		
//        if(i >=2 && buf[i] == 0xFF){
////			HAL_UART_Transmit_IT(&UART3_Handler, (uint8_t *)&crc, 1);
////			while (UART3_Handler.gState != HAL_UART_STATE_READY){}//Loop until the end of transmission

//			HAL_UART_Transmit_DMA(&UART3_Handler, (uint8_t *)&crc, 0x01);
//			while(__HAL_UART_GET_FLAG(&UART3_Handler,UART_FLAG_TC) == RESET){} //等待DMA发送数据丢包问题
//        }
//    }
#if SYSTEM_SUPPORT_OS	 	//使用OS
	taskEXIT_CRITICAL_FROM_ISR(status_value);//退出临界区  											 
#endif

#ifdef PROTOCOL_DEBUG
    GIZWITS_LOG("MCU2WiFi[%4d:%4d]: ", gizGetTimerCount(), len);
    for(i=0; i<len; i++){    
        GIZWITS_LOG("%02x ", buf[i]);

        if(i >=2 && buf[i] == 0xFF){
            GIZWITS_LOG("%02x ", 0x55);
        }
    }
    GIZWITS_LOG("\r\n");
#endif
		
		return len;
}  

int null_founction(const char *format, ...){
return 0;
}
