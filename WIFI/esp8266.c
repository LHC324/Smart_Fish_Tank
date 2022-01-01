#include "esp8266.h"
#include "stdlib.h"
#include "string.h"
#include "delay.h"
#include "lcd.h"
#include "led.h"
#include "malloc.h"

//
//��ʼ��ESP8266ģ��
//0:��ʼ���ɹ�
//1:��ʼ��ʧ��
//
u8 ESP8266_Init(){
	u8 i=3;//6;
//	atk_8266_send_cmd("ATE0","OK",20);//�رջ��Թ���
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
//����AP
//
u8 connect_AP(char *ap,char *pw){
	char at[20];
	atk_8266_send_cmd("AT+CWMODE=3","OK",50);		//����WIFIΪAP+STAģʽ
	delay_ms(10);
	sprintf(at,"AT+CWJAP=\"%s\",\"%s\"",ap,pw);
	if(atk_8266_send_cmd((u8 *)at,"OK",20)){
		return 0;
	}
	return 1;
}


//����TCP����
//1:����ʧ��
//0:�����ɹ�
u8 connect_TCP(char *serverip,char* portnum){
	u8 *p;//��ָ����ָ���ַ��Ҫ������ݣ���������ڴ�
	uint32_t status_value;
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	status_value=taskENTER_CRITICAL_FROM_ISR();//�жϼ�����    
#endif		
//	p=pvPortMalloc(40);//����40�ֽ��ڴ�
	p=mymalloc(SRAMIN,40);
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	taskEXIT_CRITICAL_FROM_ISR(status_value);//�˳��ٽ���  											 
#endif
	sprintf((char*)p,"AT+CIPSTART=\"TCP\",\"%s\",%s",serverip,portnum);//����Ŀ��TCP������
	
	if(atk_8266_send_cmd(p,"OK",200)){//���ӵ�Ŀ��TCP������
//		vPortFree(p);
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	status_value=taskENTER_CRITICAL_FROM_ISR();//�жϼ�����    
#endif	
		myfree(SRAMIN,p);
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	taskEXIT_CRITICAL_FROM_ISR(status_value);//�˳��ٽ���  											 
#endif
		return 1;
	}
//	vPortFree(p);
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	status_value=taskENTER_CRITICAL_FROM_ISR();//�жϼ�����    
#endif	
	myfree(SRAMIN,p);
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	taskEXIT_CRITICAL_FROM_ISR(status_value);//�˳��ٽ���  											 
#endif
	delay_ms(300);//��ʱ�ȶ�

	return 0;
}


//
//����SSL���ӣ���ȫ�׽Ӳ�
//
u8 connect_SSL(){
	atk_8266_send_cmd("AT+CIPSSLSIZE=4096","OK",10);
	delay_ms(500);
	if(atk_8266_send_cmd("AT+CIPSTART=\"SSL\",\"api.seniverse.com\",443","OK",20)){
		return 0;
	}
	return 1;
}


//���յ���ATָ��Ӧ�����ݷ��ظ����Դ���
//mode:0,������USART2_RX_STA;
//     1,����USART2_RX_STA;
void atk_8266_at_response(u8 mode){
    if (USART3_RX_STA & 0X8000){     //���յ�һ��������
        USART3_RX_BUF[USART3_RX_STA & 0X7FFF] = 0; //��ӽ�����
        printf("%s", USART3_RX_BUF); //���͵�����
        if (mode)USART3_RX_STA = 0;
    }
}


//ATK-ESP8266���������,�����յ���Ӧ��
//str:�ڴ���Ӧ����
//����ֵ:0,û�еõ��ڴ���Ӧ����
//    ����,�ڴ�Ӧ������λ��(str��λ��)
u8 *atk_8266_check_cmd(u8 *str){

    char *strx = 0;
    if (USART3_RX_STA & 0X8000){     //���յ�һ��������
        USART3_RX_BUF[USART3_RX_STA & 0X7FFF] = 0; //��ӽ�����
        strx = strstr((const char *)USART3_RX_BUF, (const char *)str);
    }
    return (u8 *)strx;
}


//��ATK-ESP8266��������
//cmd:���͵������ַ���
//ack:�ڴ���Ӧ����,���Ϊ��,���ʾ����Ҫ�ȴ�Ӧ��
//waittime:�ȴ�ʱ��(��λ:10ms)
//����ֵ:0,���ͳɹ�(�õ����ڴ���Ӧ����)
//       1,����ʧ��
u8 atk_8266_send_cmd(u8 *cmd, u8 *ack, u16 waittime){
    u8 res = 0;
    USART3_RX_STA = 0;
	u3_printf("%s\r\n",cmd);	//��������
    if (ack && waittime){    //��Ҫ�ȴ�Ӧ��
        while (--waittime){  //�ȴ�����ʱ
            delay_ms(10);
            if (USART3_RX_STA & 0X8000){ //���յ��ڴ���Ӧ����
                if (atk_8266_check_cmd(ack)){
//				LED1=!LED1;
                    printf("���ͣ�%s ��Ӧ:%s\r\n", (char *)cmd, (char *)ack);				
                    break;//�õ���Ч����
                }
                USART3_RX_STA = 0;
            }
        }
        if (waittime == 0){res = 1; printf("����ʧ�ܣ�������\r\n");}
    }
    return res;
}


//��ȡClient ip��ַ
//ipbuf:ip��ַ���������
void atk_8266_get_wanip(u8* ipbuf){
	u8 *p,*p1;
		if(atk_8266_send_cmd("AT+CIFSR","OK",50)){//��ȡWAN IP��ַʧ��
			ipbuf[0]=0;
			return;
		}		
		p=atk_8266_check_cmd("\"");
		p1=(u8*)strstr((const char*)(p+1),"\"");
		*p1=0;
		sprintf((char*)ipbuf,"%s",p+1);	
}


//����Ϊ͸��
//1:ʧ��
//0:�ɹ�
u8 set_trans(){
//	atk_8266_send_cmd("AT+CIPMODE=1","OK",20);
//	atk_8266_send_cmd("AT+CIPSEND","",20); //�������ͱ�ʶ
	USART3_RX_STA = 0;//����״̬��Ϊδ����
	memset(USART3_RX_BUF,0,strlen((const char*)USART3_RX_BUF));//��ս��ջ�����
//	delay_ms(50);
	return (atk_8266_send_cmd("AT+CIPMODE=1","OK",50) &  atk_8266_send_cmd("AT+CIPSEND","",50));
}


//ATK-ESP8266�˳�͸��ģʽ
//����ֵ:0,�˳��ɹ�;
//       1,�˳�ʧ��
u8 exit_trans(void){
	while((USART3->SR&0X40)==0);	//�ȴ����Ϳ�
	USART3->DR='+';      
	delay_ms(15);					//���ڴ�����֡ʱ��(10ms)
	while((USART3->SR&0X40)==0);	//�ȴ����Ϳ�
	USART3->DR='+';      
	delay_ms(15);					//���ڴ�����֡ʱ��(10ms)
	while((USART3->SR&0X40)==0);	//�ȴ����Ϳ�
	USART3->DR='+';      
	delay_ms(200);					//�ȴ�100ms
	u3_printf("AT+CIPCLOSEMODE=0\r\n");//�ر�TCP���� 
	delay_ms(200);
	atk_8266_send_cmd("AT+CIPCLOSE\r\n","OK",50);   //�ر�����
	delay_ms(200);
	return atk_8266_send_cmd("AT","OK",20);//�˳�͸���ж�.
}


