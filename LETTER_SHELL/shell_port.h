#ifndef _SHELL_PORT_H_
#define	_SHELL_PORT_H_

#include "shell.h"

/* 将shell定义为外部变量，在串口中断回调函数中还要使用 */
extern Shell shell;

/* 声明自己编写的初始化函数 */
void User_Shell_Init(void);

#endif /* _SHELL_PORT_H_ */
