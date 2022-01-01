#ifndef _USART_H
#define _USART_H
#include "sys.h"
#include "stdio.h"	
#include "stdarg.h"	 	  	 
#include "string.h"	
#include "timer.h"

#define USE_MISCROLIB  1	//是否使用微库
#define USE_DMA_PRINTF 1	//是否使用DMA方式的printf


/********************************************************************************/
#define USART1_RX_EN  			1		//使能（1）/禁止（0）串口1接收	
#define USART_REC_LEN  			256  	//定义最大接收字节数256

extern u8 USART_DmaTxBuf[USART_REC_LEN]; 	
//extern u8  USART_RX_BUF[USART_REC_LEN]; //接收缓冲,最大USART_REC_LEN个字节.末字节为换行符 
extern u16 USART_RX_STA;         		//接收状态标记	
extern UART_HandleTypeDef UART1_Handler; //UART句柄

//#define RXBUFFERSIZE   1 //缓存大小
//extern u8 aRxBuffer[RXBUFFERSIZE];//HAL库USART接收Buffer

//如果想串口中断接收，请不要注释以下宏定义
void uart1_init(u32 bound);
extern void Usart1_DmaPrintf(const char *format,...);

//串口3相关宏定义
#define USART3_RX_EN 			1					  //0,不接收;1,接收.
#define USART3_MAX_RECV_LEN		512			        //最大接收缓存字节数
#define USART3_MAX_SEND_LEN		256				    //最大发送缓存字节数

extern u8  USART3_RX_BUF[USART3_MAX_RECV_LEN]; 		//接收缓冲,最大USART3_MAX_RECV_LEN字节
extern u8  USART3_TX_BUF[USART3_MAX_SEND_LEN]; 		//发送缓冲,最大USART3_MAX_SEND_LEN字节
extern u16 USART3_RX_STA;   						//接收数据状态
extern volatile uint8_t UART3IDLE_RxSize;     		//接收一帧数据的长度
extern volatile uint8_t UART3IDLE_RxOverFlag; 		//一帧数据接收完成标志


//如果想串口中断接收，请不要注释以下宏定义
void usart3_init(u32 bound);		//串口3初始化 
//void u3_printf(char* fmt, ...);
#endif
