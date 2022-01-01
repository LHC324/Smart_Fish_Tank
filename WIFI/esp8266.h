#ifndef __ESP8266_H
#define __ESP8266_H

#include "sys.h"
#include "usart.h"
#include "FreeRTOS.h"//�����ڴ�ʱʹ�� 
#include "task.h"						//�����ٽ���

u8 ESP8266_Init(void);//��ʼ��ESP8266
u8 connect_AP(char *ap,char *pw);//�����ȵ�
u8 connect_TCP(char *serverip,char* portnum);//����TCP����
u8 connect_SSL(void);//����SSL����

u8 set_trans(void); //����Ϊ͸��ģʽ
u8 exit_trans(void);//�˳�͸��ģʽ

void atk_8266_at_response(u8 mode);
u8 *atk_8266_check_cmd(u8 *str);
u8 atk_8266_send_cmd(u8 *cmd, u8 *ack, u16 waittime);
void atk_8266_get_wanip(u8* ipbuf);//��ȡClient ip��ַ,ipbuf:ip��ַ���������



#endif
