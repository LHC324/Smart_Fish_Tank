#ifndef __ESP8266_H
#define __ESP8266_H

#include "sys.h"
#include "usart.h"
#include "FreeRTOS.h"//分配内存时使用 
#include "task.h"						//访问临界区

u8 ESP8266_Init(void);//初始化ESP8266
u8 connect_AP(char *ap,char *pw);//连接热点
u8 connect_TCP(char *serverip,char* portnum);//建立TCP连接
u8 connect_SSL(void);//建立SSL连接

u8 set_trans(void); //设置为透传模式
u8 exit_trans(void);//退出透传模式

void atk_8266_at_response(u8 mode);
u8 *atk_8266_check_cmd(u8 *str);
u8 atk_8266_send_cmd(u8 *cmd, u8 *ack, u16 waittime);
void atk_8266_get_wanip(u8* ipbuf);//获取Client ip地址,ipbuf:ip地址输出缓存区



#endif
