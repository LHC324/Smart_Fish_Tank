#ifndef _USART_H
#define _USART_H
#include "sys.h"
#include "stdio.h"	
#include "stdarg.h"	 	  	 
#include "string.h"	
#include "timer.h"

#define USE_MISCROLIB  1	//�Ƿ�ʹ��΢��
#define USE_DMA_PRINTF 1	//�Ƿ�ʹ��DMA��ʽ��printf


/********************************************************************************/
#define USART1_RX_EN  			1		//ʹ�ܣ�1��/��ֹ��0������1����	
#define USART_REC_LEN  			256  	//�����������ֽ���256

extern u8 USART_DmaTxBuf[USART_REC_LEN]; 	
//extern u8  USART_RX_BUF[USART_REC_LEN]; //���ջ���,���USART_REC_LEN���ֽ�.ĩ�ֽ�Ϊ���з� 
extern u16 USART_RX_STA;         		//����״̬���	
extern UART_HandleTypeDef UART1_Handler; //UART���

//#define RXBUFFERSIZE   1 //�����С
//extern u8 aRxBuffer[RXBUFFERSIZE];//HAL��USART����Buffer

//����봮���жϽ��գ��벻Ҫע�����º궨��
void uart1_init(u32 bound);
extern void Usart1_DmaPrintf(const char *format,...);

//����3��غ궨��
#define USART3_RX_EN 			1					  //0,������;1,����.
#define USART3_MAX_RECV_LEN		512			        //�����ջ����ֽ���
#define USART3_MAX_SEND_LEN		256				    //����ͻ����ֽ���

extern u8  USART3_RX_BUF[USART3_MAX_RECV_LEN]; 		//���ջ���,���USART3_MAX_RECV_LEN�ֽ�
extern u8  USART3_TX_BUF[USART3_MAX_SEND_LEN]; 		//���ͻ���,���USART3_MAX_SEND_LEN�ֽ�
extern u16 USART3_RX_STA;   						//��������״̬
extern volatile uint8_t UART3IDLE_RxSize;     		//����һ֡���ݵĳ���
extern volatile uint8_t UART3IDLE_RxOverFlag; 		//һ֡���ݽ�����ɱ�־


//����봮���жϽ��գ��벻Ҫע�����º궨��
void usart3_init(u32 bound);		//����3��ʼ�� 
//void u3_printf(char* fmt, ...);
#endif
