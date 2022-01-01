#include "usart.h"
#include "delay.h"
#include "timer.h"	
//#include "led.h"
#include "gizwits_product.h" //机智云协议
//#include "shell_port.h" 
////////////////////////////////////////////////////////////////////////////////// 	 
//如果使用os,则包括下面的头文件即可.
#if SYSTEM_SUPPORT_OS
#include "FreeRTOS.h"					//FreeRTOS 使用	 
#include "task.h"						//访问临界区
#endif
//////////////////////////////////////////////////////////////////////////////////	 
//本程序只供学习使用，未经作者许可，不得用于其它任何用途
//ALIENTEK STM32F407开发板
//串口1初始化		   
//正点原子@ALIENTEK
//技术论坛:www.openedv.com
//修改日期:2017/4/6
//版本：V1.5
//版权所有，盗版必究。
//Copyright(C) 广州市星翼电子科技有限公司 2009-2019
//All rights reserved
//********************************************************************************
//V1.0修改说明 
////////////////////////////////////////////////////////////////////////////////// 	  
//加入以下代码,支持printf函数,而不需要选择use MicroLIB	  
//#define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)	

UART_HandleTypeDef UART1_Handler,UART3_Handler; //UART句柄
DMA_HandleTypeDef hdma_usart1_rx;
DMA_HandleTypeDef hdma_usart1_tx;
DMA_HandleTypeDef hdma_usart3_rx;
DMA_HandleTypeDef hdma_usart3_tx;

__attribute__((aligned(8))) u8 USART_DmaTxBuf[USART_REC_LEN];	//串口DMA发送缓冲

#if USART1_RX_EN   //如果使能了串口1接收
//串口1中断服务程序
//注意,读取USARTx->SR能避免莫名其妙的错误   	
//u8 USART_RX_BUF[USART_REC_LEN];//接收缓冲,最大USART_REC_LEN个字节.
//接收状态
//bit15，	接收完成标志
//bit14，	接收到0x0d
//bit13~0，	接收到的有效字节数目
u16 USART_RX_STA = 0;       //接收状态标记
//u8 recv_buf = 0;        	
//u8 aRxBuffer[RXBUFFERSIZE];//HAL库使用的串口接收缓冲

#endif

#if USART3_RX_EN//如果使能了串口3接收
//串口发送缓存区 	
__attribute__((aligned(8))) u8 USART3_TX_BUF[USART3_MAX_SEND_LEN];//发送缓冲,最大USART3_MAX_SEND_LEN字节  	  
//串口接收缓存区 	
u8 USART3_RX_BUF[USART3_MAX_RECV_LEN]; 				//接收缓冲,最大USART3_MAX_RECV_LEN个字节.
//通过判断接收连续2个字符之间的时间差不大于100ms来决定是不是一次连续的数据.
//如果2个字符接收间隔超过100ms,则认为不是1次连续数据.也就是超过100ms没有接收到
//任何数据,则表示此次接收完毕.
//接收到的数据状态
//[15]:0,没有接收到数据;1,接收到了一批数据.
//[14:0]:接收到的数据长度
u16 USART3_RX_STA=0; 

volatile uint8_t UART3IDLE_RxSize = 0;     //接收一帧数据的长度
volatile uint8_t UART3IDLE_RxOverFlag = 0; //一帧数据接收完成标志
#endif


#if (USE_MISCROLIB == 1)
//使用，微库交给编译器处理
#else
#pragma import(__use_no_semihosting)  //去掉MicroLIB           
                
struct __FILE{ //标准库需要的支持函数  
	int handle; 
}; 

FILE __stdout;       
 
void _sys_exit(int x){ //定义_sys_exit()以避免使用半主机模式   
	x = x; 
} 

void _ttywrch(int ch){ //__use_no_semihosting was requested, but _ttywrch was 
    ch =ch;
}
#endif 

#if(USE_DMA_PRINTF == 1)
/*发送数据前先判断发送状态，空闲才启动发送*/
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
	
	//等待DMA上一次数据发送完成
   while(__HAL_UART_GET_FLAG(&UART1_Handler,UART_FLAG_TC) == RESET){} //解决DMA发送数据丢包问题
}
#else
int fputc(int ch,FILE *f){	//重定义fputc函数[串口1能使用printf函数]
	while((USART1->SR&0X40)==0){}	//循环发送,直到发送完毕   
	USART1->DR =(u8)ch; 
	return ch;
}
#endif

//初始化设置串口1：用于printf函数
//bound:波特率
void uart1_init(u32 bound){
	UART1_Handler.Instance=USART1;					    //USART1
	UART1_Handler.Init.BaudRate=bound;				    //波特率
	UART1_Handler.Init.WordLength=UART_WORDLENGTH_8B;   //字长为8位数据格式
	UART1_Handler.Init.StopBits=UART_STOPBITS_1;	    //一个停止位
	UART1_Handler.Init.Parity=UART_PARITY_NONE;		    //无奇偶校验位
	UART1_Handler.Init.HwFlowCtl=UART_HWCONTROL_NONE;   //无硬件流控
	UART1_Handler.Init.Mode=UART_MODE_TX_RX;		    //收发模式
	UART1_Handler.Init.OverSampling = UART_OVERSAMPLING_16; //16倍过采样率（最大速度[串口时钟/16]Mbps）
	HAL_UART_Init(&UART1_Handler);					    //HAL_UART_Init()会使能UART1
}

//初始化设置串口3
//bound:波特率 
void usart3_init(u32 bound){ 
	UART3_Handler.Instance=USART3;					    //USART3
	UART3_Handler.Init.BaudRate=bound;				    //波特率
	UART3_Handler.Init.WordLength=UART_WORDLENGTH_8B;   //字长为8位数据格式
	UART3_Handler.Init.StopBits=UART_STOPBITS_1;	    //一个停止位
	UART3_Handler.Init.Parity=UART_PARITY_NONE;		    //无奇偶校验位
	UART3_Handler.Init.HwFlowCtl=UART_HWCONTROL_NONE;   //无硬件流控
	UART3_Handler.Init.Mode=UART_MODE_TX_RX;		    //收发模式
	UART3_Handler.Init.OverSampling = UART_OVERSAMPLING_16; //16倍过采样率（最大速度[串口时钟/16]Mbps）
	HAL_UART_Init(&UART3_Handler);					    //HAL_UART_Init()会使能UART3
	
	__HAL_UART_ENABLE_IT(&UART3_Handler, UART_IT_IDLE); //使能IDLE接收中断
	//DMA接收函数，此句一定要加，不加接收不到第一次传进来的实数据，是空的，且此时接收到的数据长度为缓存器的数据长度
	HAL_UART_Receive_DMA(&UART3_Handler,USART3_RX_BUF,USART3_MAX_RECV_LEN);
}



//UART底层初始化，时钟使能，引脚配置，中断配置
//此函数会被HAL_UART_Init()调用
//huart:串口句柄
void HAL_UART_MspInit(UART_HandleTypeDef *huart){
	GPIO_InitTypeDef GPIO_Initure; //GPIO句柄
	
	if(huart->Instance==USART1){//如果是串口1，进行串口1 MSP初始化
		__HAL_RCC_GPIOA_CLK_ENABLE();			//使能GPIOA时钟
		__HAL_RCC_USART1_CLK_ENABLE();			//使能USART1时钟  	
		
		GPIO_Initure.Pin = GPIO_PIN_9|GPIO_PIN_10;   //PA9/PA10
		GPIO_Initure.Mode = GPIO_MODE_AF_PP;	     //复用推挽输出
		GPIO_Initure.Pull = GPIO_NOPULL;             //不上来
		GPIO_Initure.Speed = GPIO_SPEED_FREQ_MEDIUM; //中速
		GPIO_Initure.Alternate = GPIO_AF7_USART1;    //复用为USART1
		HAL_GPIO_Init(GPIOA, &GPIO_Initure);         //初始化PA10
		
//		__HAL_UART_DISABLE_IT(huart,UART_IT_TC);//关闭传输完成中断
#if USART1_RX_EN
//		__HAL_UART_ENABLE_IT(huart,UART_IT_RXNE);		//开启串口1接收----		
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

		HAL_NVIC_SetPriority(USART1_IRQn,6,0);			//抢占优先级5，子优先级0//3、3
		HAL_NVIC_EnableIRQ(USART1_IRQn);				//使能USART1中断通道
	}
	else if(huart->Instance==USART3){
		__HAL_RCC_GPIOB_CLK_ENABLE();			//使能GPIOB时钟
		__HAL_RCC_USART3_CLK_ENABLE();			//使能USART3时钟
		
		GPIO_Initure.Pin = GPIO_PIN_10|GPIO_PIN_11;     //PB10、PB11
		GPIO_Initure.Mode = GPIO_MODE_AF_PP;            //复用推挽输出
		GPIO_Initure.Pull = GPIO_PULLUP;                //上拉
		GPIO_Initure.Speed = GPIO_SPEED_FREQ_VERY_HIGH; //高速GPIO_SPEED_MEDIUM;
		GPIO_Initure.Alternate = GPIO_AF7_USART3;       //复用为USART3
		HAL_GPIO_Init(GPIOB, &GPIO_Initure);            //初始化PB10、PB11
	
//		__HAL_UART_ENABLE_IT(huart,UART_IT_RXNE);		//开启串口3接收

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

		HAL_NVIC_SetPriority(USART3_IRQn,2,0);/*抢占优先级2，子优先级0[0号中断号被RTOS分配给SVC]//2、3*/
		HAL_NVIC_EnableIRQ(USART3_IRQn);				//使能USART3中断
//		/* USART3 interrupt Init */
//		HAL_NVIC_SetPriority(USART3_IRQn,2,0);
//		HAL_NVIC_EnableIRQ(USART3_IRQn);			    
		
//		TIM7_Int_Init(1000-1,8400-1);//100ms中断
//		USART3_RX_STA=0;		    //清零
//		TIM7->CR1&=~(1<<0);        //关闭定时器7  
	}
}


//串口1中断服务程序
void USART1_IRQHandler(void){                	
	uint32_t status_value;
//	u8 Res;
#if SYSTEM_SUPPORT_OS	 	//使用OS  
	status_value=taskENTER_CRITICAL_FROM_ISR();//中断级保护
#endif
//	if((__HAL_UART_GET_FLAG(&UART1_Handler,UART_FLAG_RXNE)!=RESET)){  //接收中断(接收到的数据必须是0x0d 0x0a结尾，也就是一个回车字符)
//        HAL_UART_Receive(&UART1_Handler,&Res,1,1000); //读取串口1寄存器DR值，1byte，最长等待1s
//		if((USART_RX_STA&0x8000)==0){//接收未完成
//			if(USART_RX_STA&0x4000){//接收到了0x0d
//				if(Res!=0x0a)USART_RX_STA=0;//接收错误,重新开始
//				else USART_RX_STA|=0x8000;	//接收完成了 
//			}
//			else{ //还没收到0X0D
//				if(Res==0x0d)USART_RX_STA|=0x4000;
//				else{
//					USART_RX_BUF[USART_RX_STA&0X3FFF]=Res ;
//					USART_RX_STA++;
//					if(USART_RX_STA>(USART_REC_LEN-1))USART_RX_STA=0;//接收数据错误,重新开始接收	  
//				}		 
//			}
//		}   		 
//	}
	HAL_UART_IRQHandler(&UART1_Handler);//调用HAL库串口公共处理函数：中断处理逻辑被放在内部处理，避免调用HAL_UART_RxCpltCallback(huart);
#if SYSTEM_SUPPORT_OS	 	//使用OS
	taskEXIT_CRITICAL_FROM_ISR(status_value);//退出临界区
#endif
} 

/**
  * @brief  This function handles USART IDLE interrupt.
  */
void HAL_UART_RxCpltCallback(UART_HandleTypeDef*UartHandle){  //配合HAL_UART_Receive_IT使用  
    if(UartHandle->Instance == USART1){   
//		shellHandler(&shell, recv_buf);
//		HAL_UART_Receive_IT(&UART3_Handler, (uint8_t*)&recv_buf, 1);  //使能串口中断接收
	}
	if(UartHandle->Instance == USART3){        
//		gizPutData((uint8_t *)&aRxBuffer, 1); //此处可以改为消息队列 BaseType_t xQueueSend( QueueHandle_t xQueue, const void * pvItemToQueue,TickType_t xTicksToWait );
//        HAL_UART_Receive_IT(&UART3_Handler, (uint8_t *)&aRxBuffer, 1);//开启下一次接收中断  
    }  
}  


//串口3中断服务函数:此函数不要加入临界资源访问语句，否则卡死
void USART3_IRQHandler(void){
	
	uint32_t status_value;
	
//	uint32_t tmp_flag = 0;
	uint32_t temp;
	
#if SYSTEM_SUPPORT_OS	 	//使用OS
	status_value=taskENTER_CRITICAL_FROM_ISR();//中断级保护
#endif

	if((__HAL_UART_GET_FLAG(&UART3_Handler,UART_FLAG_IDLE) != RESET)) //获取IDLE标志位/idle标志被置位
	{ 
		__HAL_UART_CLEAR_IDLEFLAG(&UART3_Handler);		//清除标志位
		HAL_UART_DMAStop(&UART3_Handler); 				//停止DMA传输，防止
		temp  =  __HAL_DMA_GET_COUNTER(&hdma_usart1_rx);// 获取DMA中未传输的数据个数   
		UART3IDLE_RxSize =  USART3_MAX_RECV_LEN - temp; //总计数减去未传输的数据个数，得到已经接收的数据个数
		UART3IDLE_RxOverFlag = 1;						//接受完成标志位置1		
	 }


	HAL_UART_IRQHandler(&UART3_Handler);
	
#if SYSTEM_SUPPORT_OS	 	//使用OS 
	taskEXIT_CRITICAL_FROM_ISR(status_value);
#endif	
}   



