/**
  ******************************************************************************
  * @file    Templates/Inc/main.h 
  * @author  MCD Application Team
  * @version V1.2.6
  * @date    17-February-2017
  * @brief   Header for main.c module
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT(c) 2017 STMicroelectronics</center></h2>
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
  
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"
#include <math.h>
#include "sys.h"
#include "delay.h"
#include "usart.h"
//#include "stm32f4xx_hal_cortex.H"
//#include "usmart.h"
#include "timer.h"
#include "led.h"
//#include "wkup.h"
//#include "st7735.h"
#include "key.h" 
//#include "hal_key.h"//包含按键底层处理函数
#include "myiic.h"
#include "24cxx.h"
#include "touch.h"
#include "rtc.h"//时钟
//#include "adc.h"
#include "malloc.h"	 
#include "sdio_sdcard.h"
#include "w25qxx.h"
#include "ff.h"
#include "exfuns.h"
#include "fontupd.h"
#include "text.h"	
#include "lcd.h"
//#include "piclib.h"	
#include "string.h"

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"

#include "lvgl/lvgl.h"
#include "lv_port_disp.h"
#include "lv_port_indev.h"

#include "gui_guider.h"//新加
#include "events_init.h"
//#include "gui_app.h"
//#include "lv_demo.h"
#include "old/lv_demo_widgets.h"

#include "timers.h"/*软件定时器*/
#include "semphr.h"/*包含信号量操作*/
#include "ds18b20.h"/*包含DS18B20操作API*/
#include "hcsr04.h"/*包含超声波使用API*/
#include "pwm.h"/*舵机驱动API*/
#include "rng.h"/*硬件随机数发生API*/
#include "gizwits_product.h"/*机智云API*/
#include "common.h"
#include "transaction.h"
#include "relay.h"

#include "dma.h"

//#include "shell_port.h"

#define OSTASK_DEBUG 1 //是否打开操作系统调试

#define RANDNUM 16777215u //随机数产生的上限

#define WATER_DEVIATION 4.0f //水位误差4cm


//#define COLOR(R,G,B) \
//((uint16_t)((B>> 3) & 0x001FU)|(uint16_t)(((G >> 2) & 0x3FU) <<5)|(uint16_t)((R >> 3) & 0x1FU))


#define FreeRtos_Task_Debug() \
{ \
	memset(TasK_Buffer,0,sizeof(TasK_Buffer)); \
	vTaskList((char *)&TasK_Buffer); \
	Usart1_DmaPrintf("任务名      任务状态  优先级   剩余栈  任务序号\r\n"); \
	Usart1_DmaPrintf("%s\r\n", TasK_Buffer); \
}

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
//extern void lv_ex_btn_1(void);

#define MAX 10
#define MIN 1
#define LENGTH 10

typedef struct{ //采用滑动滤波处理，稳定温度和水位
	int firstflag;
    float sidebuff[LENGTH];
    float *head;
    float *tail;
    float sum;
}sideparm;


typedef struct{ //记录下一次开始时间
	u8 nexthour;
	u8 nextmin;
	u8 nextsec;
}nexttime;



/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void Init_All(void);
void show_time(void);
void auto_control_logic(void);
void led_transaction(void);
void temperature_transaction(void);
void oxygen_transaction(void);
void water_level_transaction(void);
void feed_transaction(void);
void judgment_transaction(void);

void get_DurationEndTime(void);
void get_IntervalEndTime(void);
void resovle_TimeOver(void);
void get_FeedEndTime(void);

float sidefilter(float newval,sideparm* side);
void FreeRtos_CPU_state_Debug(void);
uint16_t RGB888toRGB565(uint8_t red, uint8_t green, uint8_t blue);
#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
