#include "esp8266.h"
#include "stdlib.h"
#include "string.h"
#include "delay.h"
#include "lcd.h"
#include "led.h"
#include "malloc.h"

//
//初始化ESP8266模块
//0:初始化成功
//1:初始化失败
//
u8 ESP8266_Init(){
	u8 i=3;//6;
//	atk_8266_send_cmd("ATE0","OK",20);//关闭回显功能
	while(atk_8266_send_cmd("AT","OK",20)){
		--i;
		delay_ms(1000);
		if(i==0){
			return 1;
		}
	}
	return 0;
}


//
//连接AP
//
u8 connect_AP(char *ap,char *pw){
	char at[20];
	atk_8266_send_cmd("AT+CWMODE=3","OK",50);		//设置WIFI为AP+STA模式
	delay_ms(10);
	sprintf(at,"AT+CWJAP=\"%s\",\"%s\"",ap,pw);
	if(atk_8266_send_cmd((u8 *)at,"OK",20)){
		return 0;
	}
	return 1;
}


//建立TCP链接
//1:建立失败
//0:建立成功
u8 connect_TCP(char *serverip,char* portnum){
	u8 *p;//该指针所指向地址需要存放数据，必须分配内存
	uint32_t status_value;
#if SYSTEM_SUPPORT_OS	 	//使用OS
	status_value=taskENTER_CRITICAL_FROM_ISR();//中断级保护    
#endif		
//	p=pvPortMalloc(40);//申请40字节内存
	p=mymalloc(SRAMIN,40);
#if SYSTEM_SUPPORT_OS	 	//使用OS
	taskEXIT_CRITICAL_FROM_ISR(status_value);//退出临界区  											 
#endif
	sprintf((char*)p,"AT+CIPSTART=\"TCP\",\"%s\",%s",serverip,portnum);//配置目标TCP服务器
	
	if(atk_8266_send_cmd(p,"OK",200)){//连接到目标TCP服务器
//		vPortFree(p);
#if SYSTEM_SUPPORT_OS	 	//使用OS
	status_value=taskENTER_CRITICAL_FROM_ISR();//中断级保护    
#endif	
		myfree(SRAMIN,p);
#if SYSTEM_SUPPORT_OS	 	//使用OS
	taskEXIT_CRITICAL_FROM_ISR(status_value);//退出临界区  											 
#endif
		return 1;
	}
//	vPortFree(p);
#if SYSTEM_SUPPORT_OS	 	//使用OS
	status_value=taskENTER_CRITICAL_FROM_ISR();//中断级保护    
#endif	
	myfree(SRAMIN,p);
#if SYSTEM_SUPPORT_OS	 	//使用OS
	taskEXIT_CRITICAL_FROM_ISR(status_value);//退出临界区  											 
#endif
	delay_ms(300);//延时稳定

	return 0;
}


//
//建立SSL链接：安全套接层
//
u8 connect_SSL(){
	atk_8266_send_cmd("AT+CIPSSLSIZE=4096","OK",10);
	delay_ms(500);
	if(atk_8266_send_cmd("AT+CIPSTART=\"SSL\",\"api.seniverse.com\",443","OK",20)){
		return 0;
	}
	return 1;
}


//将收到的AT指令应答数据返回给电脑串口
//mode:0,不清零USART2_RX_STA;
//     1,清零USART2_RX_STA;
void atk_8266_at_response(u8 mode){
    if (USART3_RX_STA & 0X8000){     //接收到一次数据了
        USART3_RX_BUF[USART3_RX_STA & 0X7FFF] = 0; //添加结束符
        printf("%s", USART3_RX_BUF); //发送到串口
        if (mode)USART3_RX_STA = 0;
    }
}


//ATK-ESP8266发送命令后,检测接收到的应答
//str:期待的应答结果
//返回值:0,没有得到期待的应答结果
//    其他,期待应答结果的位置(str的位置)
u8 *atk_8266_check_cmd(u8 *str){

    char *strx = 0;
    if (USART3_RX_STA & 0X8000){     //接收到一次数据了
        USART3_RX_BUF[USART3_RX_STA & 0X7FFF] = 0; //添加结束符
        strx = strstr((const char *)USART3_RX_BUF, (const char *)str);
    }
    return (u8 *)strx;
}


//向ATK-ESP8266发送命令
//cmd:发送的命令字符串
//ack:期待的应答结果,如果为空,则表示不需要等待应答
//waittime:等待时间(单位:10ms)
//返回值:0,发送成功(得到了期待的应答结果)
//       1,发送失败
u8 atk_8266_send_cmd(u8 *cmd, u8 *ack, u16 waittime){
    u8 res = 0;
    USART3_RX_STA = 0;
	u3_printf("%s\r\n",cmd);	//发送命令
    if (ack && waittime){    //需要等待应答
        while (--waittime){  //等待倒计时
            delay_ms(10);
            if (USART3_RX_STA & 0X8000){ //接收到期待的应答结果
                if (atk_8266_check_cmd(ack)){
//				LED1=!LED1;
                    printf("发送：%s 回应:%s\r\n", (char *)cmd, (char *)ack);				
                    break;//得到有效数据
                }
                USART3_RX_STA = 0;
            }
        }
        if (waittime == 0){res = 1; printf("发送失败！！！！\r\n");}
    }
    return res;
}


//获取Client ip地址
//ipbuf:ip地址输出缓存区
void atk_8266_get_wanip(u8* ipbuf){
	u8 *p,*p1;
		if(atk_8266_send_cmd("AT+CIFSR","OK",50)){//获取WAN IP地址失败
			ipbuf[0]=0;
			return;
		}		
		p=atk_8266_check_cmd("\"");
		p1=(u8*)strstr((const char*)(p+1),"\"");
		*p1=0;
		sprintf((char*)ipbuf,"%s",p+1);	
}


//设置为透传
//1:失败
//0:成功
u8 set_trans(){
//	atk_8266_send_cmd("AT+CIPMODE=1","OK",20);
//	atk_8266_send_cmd("AT+CIPSEND","",20); //开启发送标识
	USART3_RX_STA = 0;//接受状态变为未接收
	memset(USART3_RX_BUF,0,strlen((const char*)USART3_RX_BUF));//清空接收缓冲区
//	delay_ms(50);
	return (atk_8266_send_cmd("AT+CIPMODE=1","OK",50) &  atk_8266_send_cmd("AT+CIPSEND","",50));
}


//ATK-ESP8266退出透传模式
//返回值:0,退出成功;
//       1,退出失败
u8 exit_trans(void){
	while((USART3->SR&0X40)==0);	//等待发送空
	USART3->DR='+';      
	delay_ms(15);					//大于串口组帧时间(10ms)
	while((USART3->SR&0X40)==0);	//等待发送空
	USART3->DR='+';      
	delay_ms(15);					//大于串口组帧时间(10ms)
	while((USART3->SR&0X40)==0);	//等待发送空
	USART3->DR='+';      
	delay_ms(200);					//等待100ms
	u3_printf("AT+CIPCLOSEMODE=0\r\n");//关闭TCP连接 
	delay_ms(200);
	atk_8266_send_cmd("AT+CIPCLOSE\r\n","OK",50);   //关闭连接
	delay_ms(200);
	return atk_8266_send_cmd("AT","OK",20);//退出透传判断.
}


