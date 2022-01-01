#include "sys.h"
#include "usart3.h"	  
#include "stdarg.h"	 	 
#include "stdio.h"	 	 
#include "string.h"
#include "timer.h"
#include "led.h"
//#include "FreeRTOS.h"					//FreeRTOS 使用	 
//#include "task.h" //访问临界区 
//////////////////////////////////////////////////////////////////////////////////	   
//本程序只供学习使用，未经作者许可，不得用于其它任何用途
//ALIENTEK STM32F429开发板 
//串口3 HAL库函数初始化代码
//正点原子@ALIENTEK
//技术论坛:www.openedv.com
//修改日期:2016/3/14
//版本：V1.0
//版权所有，盗版必究。
//Copyright(C) 广州市星翼电子科技有限公司 2014-2024
//All rights reserved
//********************************************************************************
//修改说明
//无
////////////////////////////////////////////////////////////////////////////////// 	


//串口接收缓存区
u8 aRxBuffer3[BUFFSIZE];//HAL库使用的串口接收缓冲
u8 USART3_RX_BUF[USART3_MAX_RECV_LEN]; 				//接收缓冲,最大USART3_MAX_RECV_LEN个字节.
u8  USART3_TX_BUF[USART3_MAX_SEND_LEN]; 			//发送缓冲,最大USART3_MAX_SEND_LEN字节

//通过判断接收连续2个字符之间的时间差不大于10ms来决定是不是一次连续的数据.
//如果2个字符接收间隔超过10ms,则认为不是1次连续数据.也就是超过10ms没有接收到
//任何数据,则表示此次接收完毕.
//接收到的数据状态
//[15]:0,没有接收到数据;1,接收到了一批数据.
//[14:0]:接收到的数据长度
vu16 USART3_RX_STA=0;  
//UART_HandleTypeDef UART3_Handler; //UART句柄

//TIM_HandleTypeDef TIM7_Handler;   //TIM句柄

//void USART3_IRQHandler(void)
//{
//	u8 res;	
//	LED0=!LED0;
//	
//	if(__HAL_UART_GET_FLAG(&UART3_Handler,UART_FLAG_RXNE)!=RESET)//接收到数据
//	{	 
////		HAL_UART_Receive_IT(&UART3_Handler,(u8 *)aRxBuffer3,1);
//		HAL_UART_Receive(&UART3_Handler,&res,1,1000);
////		res=USART3->DR; 			 
//		if((USART3_RX_STA&(1<<15))==0)//接收完的一批数据,还没有被处理,则不再接收其他数据
//		{ 
//			if(USART3_RX_STA<USART3_MAX_RECV_LEN)	//还可以接收数据
//			{
////				__HAL_TIM_SetCounter(&TIM7_Handler,0);	
//				TIM7->CNT=0;         				//计数器清空	
//				if(USART3_RX_STA==0) 				//使能定时器7的中断 
//				{
////					__HAL_RCC_TIM7_CLK_ENABLE();            //使能TIM7时钟
//					TIM7->CR1|=1<<0;     			//使能定时器7
//				}
//				USART3_RX_BUF[USART3_RX_STA++]=res;	//记录接收到的值	 
//			}else 
//			{
//				USART3_RX_STA|=1<<15;				//强制标记接收完成
//			} 
//		}
//	}	
//}  


////初始化IO 串口3
////bound:波特率 
//void usart3_init(u32 bound)
//{  	 
//	//UART 初始化设置
//	UART3_Handler.Instance=USART3;					    //USART1
//	UART3_Handler.Init.BaudRate=bound;				    //波特率
//	UART3_Handler.Init.WordLength=UART_WORDLENGTH_8B;   //字长为8位数据格式
//	UART3_Handler.Init.StopBits=UART_STOPBITS_1;	    //一个停止位
//	UART3_Handler.Init.Parity=UART_PARITY_NONE;		    //无奇偶校验位
//	UART3_Handler.Init.HwFlowCtl=UART_HWCONTROL_NONE;   //无硬件流控
//	UART3_Handler.Init.Mode=UART_MODE_TX_RX;		    //收发模式
//	HAL_UART_Init(&UART3_Handler);					    //HAL_UART_Init()会使能UART3
//	TIM7_Int_Init(1000-1,8400-1);		//100ms中断[Tout= ((arr+1)*(psc+1))/Tclk]s=10^3*84*10^2/(84*10^6)APB1
//	HAL_UART_Receive_IT(&UART3_Handler, (u8 *)aRxBuffer3, BUFFSIZE);//该函数会开启接收中断：标志位UART_IT_RXNE，并且设置接收缓冲以及接收缓冲接收最大数据量
//	USART3_RX_STA=0;		//清零
//	TIM7->CR1&=~(1<<0);        //关闭定时器7
////	__HAL_TIM_DISABLE(&TIM7_Handler);      //关闭定时器7
//}
//UART底层初始化，时钟使能，引脚配置，中断配置
//此函数会被HAL_UART_Init()调用
//huart:串口句柄
/*void HAL_UART_MspInit(UART_HandleTypeDef *huart)
{
    //GPIO端口设置
	GPIO_InitTypeDef GPIO_Initure;
	
	__HAL_RCC_GPIOB_CLK_ENABLE();			//使能GPIOA时钟
	__HAL_RCC_USART3_CLK_ENABLE();			//使能USART3时钟
	
	GPIO_Initure.Pin=GPIO_PIN_10;			//PB10
	GPIO_Initure.Mode=GPIO_MODE_AF_PP;		//复用推挽输出
	GPIO_Initure.Pull=GPIO_PULLUP;			//上拉
	GPIO_Initure.Speed=GPIO_SPEED_FAST;		//高速
	GPIO_Initure.Alternate=GPIO_AF7_USART3;	//复用为USART1
	HAL_GPIO_Init(GPIOB,&GPIO_Initure);	   	//初始化PB10

	GPIO_Initure.Pin=GPIO_PIN_11;			//PB11
	HAL_GPIO_Init(GPIOB,&GPIO_Initure);	   	//初始化PB11
	
	__HAL_UART_DISABLE_IT(huart,UART_IT_TC);
	__HAL_UART_ENABLE_IT(huart,UART_IT_RXNE);		//开启接收中断
	HAL_NVIC_EnableIRQ(USART3_IRQn);				//使能USART3中断
	HAL_NVIC_SetPriority(USART3_IRQn,2,3);			//抢占优先级3，子优先级3	
}*/
//串口3,printf 函数
//确保一次发送数据不超过USART3_MAX_SEND_LEN字节
void u3_printf(char* fmt,...) //可变参数函数 
{  
	u16 i,j; 
	va_list ap; //存储参数地址的指针
	va_start(ap,fmt); //ap指向被传递给函数的可变参数表中的第一个参数
	vsprintf((char*)USART3_TX_BUF,fmt,ap); //vsprintf()会根据参数format 字符串来转换并格式化数据, 然后将结果复制到参数str 所指的字符串数组, 直到出现字符串结束('\0')为止
	va_end(ap);		//该宏用于被调用函数完成正常返回，功能就是把指针ap赋值为0，使它不指向内存的变量
	i=strlen((const char*)USART3_TX_BUF);		//此次发送数据的长度
	for(j=0;j<i;j++)							//循环发送数据
	{
		while((USART3->SR&0X40)==0);			//循环发送,直到发送完毕   
		USART3->DR=USART3_TX_BUF[j];  
	} 
}



































