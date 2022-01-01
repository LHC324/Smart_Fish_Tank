/**
 * @brief	shell移植到STM32L431时的接口实现
 * @author	mculover666
 * @date	2020/03/27 
*/

#include "shell.h"
#include "usart.h"
#include "shell_port.h"


extern UART_HandleTypeDef UART1_Handler;

/* 1. 创建shell对象，开辟shell缓冲区 */
Shell shell;
char shell_buffer[512];


/* 2. 自己实现shell写函数 */

//shell写函数原型：typedef void (*shellWrite)(const char);
void User_Shell_Write(const char ch)
{
	//调用STM32 HAL库 API 使用查询方式发送
	HAL_UART_Transmit(&UART1_Handler, (uint8_t*)&ch, 1, 0xFFFF);
}

/* 3. 编写初始化函数 */
void User_Shell_Init(void)
{
	//注册自己实现的写函数
    shell.write = User_Shell_Write;
	
	//调用shell初始化函数
    shellInit(&shell, shell_buffer, 512);
}
