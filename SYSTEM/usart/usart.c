#include "usart.h"
#include "delay.h"
#include "timer.h"	
//#include "led.h"
#include "gizwits_product.h" //������Э��
//#include "shell_port.h" 
////////////////////////////////////////////////////////////////////////////////// 	 
//���ʹ��os,����������ͷ�ļ�����.
#if SYSTEM_SUPPORT_OS
#include "FreeRTOS.h"					//FreeRTOS ʹ��	 
#include "task.h"						//�����ٽ���
#endif
//////////////////////////////////////////////////////////////////////////////////	 
//������ֻ��ѧϰʹ�ã�δ��������ɣ��������������κ���;
//ALIENTEK STM32F407������
//����1��ʼ��		   
//����ԭ��@ALIENTEK
//������̳:www.openedv.com
//�޸�����:2017/4/6
//�汾��V1.5
//��Ȩ���У�����ؾ���
//Copyright(C) ������������ӿƼ����޹�˾ 2009-2019
//All rights reserved
//********************************************************************************
//V1.0�޸�˵�� 
////////////////////////////////////////////////////////////////////////////////// 	  
//�������´���,֧��printf����,������Ҫѡ��use MicroLIB	  
//#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)	

UART_HandleTypeDef UART1_Handler,UART3_Handler; //UART���
DMA_HandleTypeDef hdma_usart1_rx;
DMA_HandleTypeDef hdma_usart1_tx;
DMA_HandleTypeDef hdma_usart3_rx;
DMA_HandleTypeDef hdma_usart3_tx;

__attribute__((aligned(8))) u8 USART_DmaTxBuf[USART_REC_LEN];	//����DMA���ͻ���

#if USART1_RX_EN   //���ʹ���˴���1����
//����1�жϷ������
//ע��,��ȡUSARTx->SR�ܱ���Ī������Ĵ���   	
//u8 USART_RX_BUF[USART_REC_LEN];//���ջ���,���USART_REC_LEN���ֽ�.
//����״̬
//bit15��	������ɱ�־
//bit14��	���յ�0x0d
//bit13~0��	���յ�����Ч�ֽ���Ŀ
u16 USART_RX_STA = 0;       //����״̬���
//u8 recv_buf = 0;        	
//u8 aRxBuffer[RXBUFFERSIZE];//HAL��ʹ�õĴ��ڽ��ջ���

#endif

#if USART3_RX_EN//���ʹ���˴���3����
//���ڷ��ͻ����� 	
__attribute__((aligned(8))) u8 USART3_TX_BUF[USART3_MAX_SEND_LEN];//���ͻ���,���USART3_MAX_SEND_LEN�ֽ�  	  
//���ڽ��ջ����� 	
u8 USART3_RX_BUF[USART3_MAX_RECV_LEN]; 				//���ջ���,���USART3_MAX_RECV_LEN���ֽ�.
//ͨ���жϽ�������2���ַ�֮���ʱ������100ms�������ǲ���һ������������.
//���2���ַ����ռ������100ms,����Ϊ����1����������.Ҳ���ǳ���100msû�н��յ�
//�κ�����,���ʾ�˴ν������.
//���յ�������״̬
//[15]:0,û�н��յ�����;1,���յ���һ������.
//[14:0]:���յ������ݳ���
u16 USART3_RX_STA=0; 

volatile uint8_t UART3IDLE_RxSize = 0;     //����һ֡���ݵĳ���
volatile uint8_t UART3IDLE_RxOverFlag = 0; //һ֡���ݽ�����ɱ�־
#endif


#if (USE_MISCROLIB == 1)
//ʹ�ã�΢�⽻������������
#else
#pragma import(__use_no_semihosting)  //ȥ��MicroLIB           
                
struct __FILE{ //��׼����Ҫ��֧�ֺ���  
	int handle; 
}; 

FILE __stdout;       
 
void _sys_exit(int x){ //����_sys_exit()�Ա���ʹ�ð�����ģʽ   
	x = x; 
} 

void _ttywrch(int ch){ //__use_no_semihosting was requested, but _ttywrch was 
    ch =ch;
}
#endif 

#if(USE_DMA_PRINTF == 1)
/*��������ǰ���жϷ���״̬�����в���������*/
//static bool UART1_IsSendIdle(void)
//{
//    if(HAL_UART_GetState(&UART1_Handler) != HAL_UART_STATE_BUSY_TX)
//    {
//        if(__HAL_UART_GET_FLAG(&UART1_Handler,UART_FLAG_TC) == SET)
//        {
//            return true;
//        }
//    }
//    return false;
//}

void Usart1_DmaPrintf(const char *format,...)
{
	uint16_t len;
	va_list args;	
	va_start(args,format);
	len = vsnprintf((char*)USART_DmaTxBuf,sizeof(USART_DmaTxBuf)+1,(char*)format,args);
	va_end(args);
	HAL_UART_Transmit_DMA(&UART1_Handler, USART_DmaTxBuf, len);
	
	//�ȴ�DMA��һ�����ݷ������
   while(__HAL_UART_GET_FLAG(&UART1_Handler,UART_FLAG_TC) == RESET){} //���DMA�������ݶ�������
}
#else
int fputc(int ch,FILE *f){	//�ض���fputc����[����1��ʹ��printf����]
	while((USART1->SR&0X40)==0){}	//ѭ������,ֱ���������   
	USART1->DR =(u8)ch; 
	return ch;
}
#endif

//��ʼ�����ô���1������printf����
//bound:������
void uart1_init(u32 bound){
	UART1_Handler.Instance=USART1;					    //USART1
	UART1_Handler.Init.BaudRate=bound;				    //������
	UART1_Handler.Init.WordLength=UART_WORDLENGTH_8B;   //�ֳ�Ϊ8λ���ݸ�ʽ
	UART1_Handler.Init.StopBits=UART_STOPBITS_1;	    //һ��ֹͣλ
	UART1_Handler.Init.Parity=UART_PARITY_NONE;		    //����żУ��λ
	UART1_Handler.Init.HwFlowCtl=UART_HWCONTROL_NONE;   //��Ӳ������
	UART1_Handler.Init.Mode=UART_MODE_TX_RX;		    //�շ�ģʽ
	UART1_Handler.Init.OverSampling = UART_OVERSAMPLING_16; //16���������ʣ�����ٶ�[����ʱ��/16]Mbps��
	HAL_UART_Init(&UART1_Handler);					    //HAL_UART_Init()��ʹ��UART1
}

//��ʼ�����ô���3
//bound:������ 
void usart3_init(u32 bound){ 
	UART3_Handler.Instance=USART3;					    //USART3
	UART3_Handler.Init.BaudRate=bound;				    //������
	UART3_Handler.Init.WordLength=UART_WORDLENGTH_8B;   //�ֳ�Ϊ8λ���ݸ�ʽ
	UART3_Handler.Init.StopBits=UART_STOPBITS_1;	    //һ��ֹͣλ
	UART3_Handler.Init.Parity=UART_PARITY_NONE;		    //����żУ��λ
	UART3_Handler.Init.HwFlowCtl=UART_HWCONTROL_NONE;   //��Ӳ������
	UART3_Handler.Init.Mode=UART_MODE_TX_RX;		    //�շ�ģʽ
	UART3_Handler.Init.OverSampling = UART_OVERSAMPLING_16; //16���������ʣ�����ٶ�[����ʱ��/16]Mbps��
	HAL_UART_Init(&UART3_Handler);					    //HAL_UART_Init()��ʹ��UART3
	
	__HAL_UART_ENABLE_IT(&UART3_Handler, UART_IT_IDLE); //ʹ��IDLE�����ж�
	//DMA���պ������˾�һ��Ҫ�ӣ����ӽ��ղ�����һ�δ�������ʵ���ݣ��ǿյģ��Ҵ�ʱ���յ������ݳ���Ϊ�����������ݳ���
	HAL_UART_Receive_DMA(&UART3_Handler,USART3_RX_BUF,USART3_MAX_RECV_LEN);
}



//UART�ײ��ʼ����ʱ��ʹ�ܣ��������ã��ж�����
//�˺����ᱻHAL_UART_Init()����
//huart:���ھ��
void HAL_UART_MspInit(UART_HandleTypeDef *huart){
	GPIO_InitTypeDef GPIO_Initure; //GPIO���
	
	if(huart->Instance==USART1){//����Ǵ���1�����д���1 MSP��ʼ��
		__HAL_RCC_GPIOA_CLK_ENABLE();			//ʹ��GPIOAʱ��
		__HAL_RCC_USART1_CLK_ENABLE();			//ʹ��USART1ʱ��  	
		
		GPIO_Initure.Pin = GPIO_PIN_9|GPIO_PIN_10;   //PA9/PA10
		GPIO_Initure.Mode = GPIO_MODE_AF_PP;	     //�����������
		GPIO_Initure.Pull = GPIO_NOPULL;             //������
		GPIO_Initure.Speed = GPIO_SPEED_FREQ_MEDIUM; //����
		GPIO_Initure.Alternate = GPIO_AF7_USART1;    //����ΪUSART1
		HAL_GPIO_Init(GPIOA, &GPIO_Initure);         //��ʼ��PA10
		
//		__HAL_UART_DISABLE_IT(huart,UART_IT_TC);//�رմ�������ж�
#if USART1_RX_EN
//		__HAL_UART_ENABLE_IT(huart,UART_IT_RXNE);		//��������1����----		
#endif	

    /* USART1 DMA Init */
    /* USART1_TX Init */
#if (USE_DMA_PRINTF == 1)
    hdma_usart1_tx.Instance = DMA2_Stream7;
    hdma_usart1_tx.Init.Channel = DMA_CHANNEL_4;
    hdma_usart1_tx.Init.Direction = DMA_MEMORY_TO_PERIPH;
    hdma_usart1_tx.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma_usart1_tx.Init.MemInc = DMA_MINC_ENABLE;
    hdma_usart1_tx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
    hdma_usart1_tx.Init.MemDataAlignment = DMA_MDATAALIGN_BYTE;
    hdma_usart1_tx.Init.Mode = DMA_NORMAL;
    hdma_usart1_tx.Init.Priority = DMA_PRIORITY_VERY_HIGH;
    hdma_usart1_tx.Init.FIFOMode = DMA_FIFOMODE_DISABLE;
    if (HAL_DMA_Init(&hdma_usart1_tx) != HAL_OK)
    {
//      Error_Handler();
    }
    __HAL_LINKDMA(huart,hdmatx,hdma_usart1_tx);
#endif

		HAL_NVIC_SetPriority(USART1_IRQn,6,0);			//��ռ���ȼ�5�������ȼ�0//3��3
		HAL_NVIC_EnableIRQ(USART1_IRQn);				//ʹ��USART1�ж�ͨ��
	}
	else if(huart->Instance==USART3){
		__HAL_RCC_GPIOB_CLK_ENABLE();			//ʹ��GPIOBʱ��
		__HAL_RCC_USART3_CLK_ENABLE();			//ʹ��USART3ʱ��
		
		GPIO_Initure.Pin = GPIO_PIN_10|GPIO_PIN_11;     //PB10��PB11
		GPIO_Initure.Mode = GPIO_MODE_AF_PP;            //�����������
		GPIO_Initure.Pull = GPIO_PULLUP;                //����
		GPIO_Initure.Speed = GPIO_SPEED_FREQ_VERY_HIGH; //����GPIO_SPEED_MEDIUM;
		GPIO_Initure.Alternate = GPIO_AF7_USART3;       //����ΪUSART3
		HAL_GPIO_Init(GPIOB, &GPIO_Initure);            //��ʼ��PB10��PB11
	
//		__HAL_UART_ENABLE_IT(huart,UART_IT_RXNE);		//��������3����

	/* USART3 DMA Init */
    /* USART3_RX Init */
    hdma_usart3_rx.Instance = DMA1_Stream1;
    hdma_usart3_rx.Init.Channel = DMA_CHANNEL_4;
    hdma_usart3_rx.Init.Direction = DMA_PERIPH_TO_MEMORY;
    hdma_usart3_rx.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma_usart3_rx.Init.MemInc = DMA_MINC_ENABLE;
    hdma_usart3_rx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
    hdma_usart3_rx.Init.MemDataAlignment = DMA_MDATAALIGN_BYTE;
    hdma_usart3_rx.Init.Mode = DMA_NORMAL;
    hdma_usart3_rx.Init.Priority = DMA_PRIORITY_VERY_HIGH;
    hdma_usart3_rx.Init.FIFOMode = DMA_FIFOMODE_DISABLE;
    if (HAL_DMA_Init(&hdma_usart3_rx) != HAL_OK)
    {
//      Error_Handler();
    }

    __HAL_LINKDMA(&UART3_Handler,hdmarx,hdma_usart3_rx);

    /* USART3_TX Init */
    hdma_usart3_tx.Instance = DMA1_Stream3;
    hdma_usart3_tx.Init.Channel = DMA_CHANNEL_4;
    hdma_usart3_tx.Init.Direction = DMA_MEMORY_TO_PERIPH;
    hdma_usart3_tx.Init.PeriphInc = DMA_PINC_DISABLE;
    hdma_usart3_tx.Init.MemInc = DMA_MINC_ENABLE;
    hdma_usart3_tx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
    hdma_usart3_tx.Init.MemDataAlignment = DMA_MDATAALIGN_BYTE;
    hdma_usart3_tx.Init.Mode = DMA_NORMAL;
    hdma_usart3_tx.Init.Priority = DMA_PRIORITY_VERY_HIGH;
    hdma_usart3_tx.Init.FIFOMode = DMA_FIFOMODE_DISABLE;
    if (HAL_DMA_Init(&hdma_usart3_tx) != HAL_OK)
    {
//      Error_Handler();
    }

    __HAL_LINKDMA(&UART3_Handler,hdmatx,hdma_usart3_tx);

		HAL_NVIC_SetPriority(USART3_IRQn,2,0);/*��ռ���ȼ�2�������ȼ�0[0���жϺű�RTOS�����SVC]//2��3*/
		HAL_NVIC_EnableIRQ(USART3_IRQn);				//ʹ��USART3�ж�
//		/* USART3 interrupt Init */
//		HAL_NVIC_SetPriority(USART3_IRQn,2,0);
//		HAL_NVIC_EnableIRQ(USART3_IRQn);			    
		
//		TIM7_Int_Init(1000-1,8400-1);//100ms�ж�
//		USART3_RX_STA=0;		    //����
//		TIM7->CR1&=~(1<<0);        //�رն�ʱ��7  
	}
}


//����1�жϷ������
void USART1_IRQHandler(void){                	
	uint32_t status_value;
//	u8 Res;
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS  
	status_value=taskENTER_CRITICAL_FROM_ISR();//�жϼ�����
#endif
//	if((__HAL_UART_GET_FLAG(&UART1_Handler,UART_FLAG_RXNE)!=RESET)){  //�����ж�(���յ������ݱ�����0x0d 0x0a��β��Ҳ����һ���س��ַ�)
//        HAL_UART_Receive(&UART1_Handler,&Res,1,1000); //��ȡ����1�Ĵ���DRֵ��1byte����ȴ�1s
//		if((USART_RX_STA&0x8000)==0){//����δ���
//			if(USART_RX_STA&0x4000){//���յ���0x0d
//				if(Res!=0x0a)USART_RX_STA=0;//���մ���,���¿�ʼ
//				else USART_RX_STA|=0x8000;	//��������� 
//			}
//			else{ //��û�յ�0X0D
//				if(Res==0x0d)USART_RX_STA|=0x4000;
//				else{
//					USART_RX_BUF[USART_RX_STA&0X3FFF]=Res ;
//					USART_RX_STA++;
//					if(USART_RX_STA>(USART_REC_LEN-1))USART_RX_STA=0;//�������ݴ���,���¿�ʼ����	  
//				}		 
//			}
//		}   		 
//	}
	HAL_UART_IRQHandler(&UART1_Handler);//����HAL�⴮�ڹ������������жϴ����߼��������ڲ������������HAL_UART_RxCpltCallback(huart);
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	taskEXIT_CRITICAL_FROM_ISR(status_value);//�˳��ٽ���
#endif
} 

/**
  * @brief  This function handles USART IDLE interrupt.
  */
void HAL_UART_RxCpltCallback(UART_HandleTypeDef*UartHandle){  //���HAL_UART_Receive_ITʹ��  
    if(UartHandle->Instance == USART1){   
//		shellHandler(&shell, recv_buf);
//		HAL_UART_Receive_IT(&UART3_Handler, (uint8_t*)&recv_buf, 1);  //ʹ�ܴ����жϽ���
	}
	if(UartHandle->Instance == USART3){        
//		gizPutData((uint8_t *)&aRxBuffer, 1); //�˴����Ը�Ϊ��Ϣ���� BaseType_t xQueueSend( QueueHandle_t xQueue, const void * pvItemToQueue,TickType_t xTicksToWait );
//        HAL_UART_Receive_IT(&UART3_Handler, (uint8_t *)&aRxBuffer, 1);//������һ�ν����ж�  
    }  
}  


//����3�жϷ�����:�˺�����Ҫ�����ٽ���Դ������䣬������
void USART3_IRQHandler(void){
	
	uint32_t status_value;
	
//	uint32_t tmp_flag = 0;
	uint32_t temp;
	
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	status_value=taskENTER_CRITICAL_FROM_ISR();//�жϼ�����
#endif

	if((__HAL_UART_GET_FLAG(&UART3_Handler,UART_FLAG_IDLE) != RESET)) //��ȡIDLE��־λ/idle��־����λ
	{ 
		__HAL_UART_CLEAR_IDLEFLAG(&UART3_Handler);		//�����־λ
		HAL_UART_DMAStop(&UART3_Handler); 				//ֹͣDMA���䣬��ֹ
		temp  =  __HAL_DMA_GET_COUNTER(&hdma_usart1_rx);// ��ȡDMA��δ��������ݸ���   
		UART3IDLE_RxSize =  USART3_MAX_RECV_LEN - temp; //�ܼ�����ȥδ��������ݸ������õ��Ѿ����յ����ݸ���
		UART3IDLE_RxOverFlag = 1;						//������ɱ�־λ��1		
	 }


	HAL_UART_IRQHandler(&UART3_Handler);
	
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS 
	taskEXIT_CRITICAL_FROM_ISR(status_value);
#endif	
}   



