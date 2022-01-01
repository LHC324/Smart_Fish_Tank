/**
************************************************************
* @file         gizwits_product.h
* @brief        Corresponding gizwits_product.c header file (including product hardware and software version definition)
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
#ifndef _GIZWITS_PRODUCT_H
#define _GIZWITS_PRODUCT_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include <stm32f4xx.h>
#include "gizwits_protocol.h"

/**
* MCU software version
*/
#define SOFTWARE_VERSION "20210501"
/**
* MCU hardware version
*/
#define HARDWARE_VERSION "20210201"


/**
* Communication module model
*/
#define MODULE_TYPE 0 //0,WIFI ;1,GPRS


/**@name TIM3 related macro definition
* @{
*/
#define TIMER 					TIM3
#define TIMER_IRQ 				TIM3_IRQn
#define TIMER_RCC 				RCC_APB1Periph_TIM3
#define TIMER_IRQ_FUN 			TIM3_IRQHandler
/**@} */

/**@name USART related macro definition
* @{
*/
#define UART_BAUDRATE 			9600
#define UART_PORT     			3
#define UART          			USART3
#define UART_IRQ      			USART3_IRQn
#define UART_IRQ_FUN  			USART3_IRQHandler

#if (UART_PORT == 1)
#define UART_GPIO_Cmd          RCC_APB2PeriphClockCmd
#define UART_GPIO_CLK          RCC_APB2Periph_GPIOA

#define UART_AFIO_Cmd          RCC_APB2PeriphClockCmd
#define UART_AFIO_CLK          RCC_APB2Periph_AFIO

#define UART_CLK_Cmd           RCC_APB2PeriphClockCmd
#define UART_CLK               RCC_APB2Periph_USART1 

#define UART_GPIO_PORT         GPIOA
#define UART_RxPin             GPIO_Pin_10
#define UART_TxPin             GPIO_Pin_9
#endif

#if (UART_PORT == 2)
#define UART_GPIO_Cmd          RCC_APB2PeriphClockCmd
#define UART_GPIO_CLK          RCC_APB2Periph_GPIOA

#define UART_AFIO_Cmd          RCC_APB2PeriphClockCmd
#define UART_AFIO_CLK          RCC_APB2Periph_AFIO

#define UART_CLK_Cmd           RCC_APB1PeriphClockCmd
#define UART_CLK               RCC_APB1Periph_USART2 

#define UART_GPIO_PORT         GPIOA
#define UART_RxPin             GPIO_Pin_3
#define UART_TxPin             GPIO_Pin_2
#endif


#if (UART_PORT == 3)

#define UART_GPIO_Cmd          RCC_APB2PeriphClockCmd
#define UART_GPIO_CLK          RCC_APB2Periph_GPIOC

#define UART_AFIO_Cmd          RCC_APB2PeriphClockCmd
#define UART_AFIO_CLK          RCC_APB2Periph_AFIO

#define UART_CLK_Cmd           RCC_APB1PeriphClockCmd
#define UART_CLK               RCC_APB1Periph_USART3 

#define UART_GPIO_PORT         GPIOC
#define UART_RxPin             GPIO_Pin_11
#define UART_TxPin             GPIO_Pin_10

/***************************继电器引脚处理***********************************/
#define HEATING_PORT GPIO_PIN_0 //加热引脚
#define COLLDOWN_PORT GPIO_PIN_1 //降温引脚
#define WATER_PORT GPIO_PIN_2 //加水引脚
#define OXYGEN_PORT GPIO_PIN_3 //加氧引脚
#define SWITCH(GPIO_X,SWITCH_FLAG) ((SWITCH_FLAG == true) ? \
(HAL_GPIO_WritePin(GPIOC,GPIO_X,GPIO_PIN_SET)): \
((HAL_GPIO_WritePin(GPIOC,GPIO_X,GPIO_PIN_RESET))))
/***************************继电器引脚处理***********************************/
#endif
/**@} */

/** User area the current device state structure*/
extern dataPoint_t currentDataPoint;
extern uint8_t aRxBuffer;
extern bool wifi_success_flag; //连接wifi成功标志
extern uint8_t auto_flag; //自动控制标志组
extern uint8_t allow_flag; //允许控制标志位

void gizTimerMs(void);
void timerInit(void);
void uartInit(void);
void userInit(void);
void userHandle(void);
void mcuRestart(void);
uint32_t gizGetTimerCount(void);
int32_t uartWrite(uint8_t *buf, uint32_t len);
int8_t gizwitsEventProcess(eventInfo_t *info, uint8_t *data, uint32_t len);

#ifdef __cplusplus
}
#endif

#endif
