#include "weather.h"
#include "FreeRTOS.h"					//FreeRTOS ʹ��	 
#include "task.h"						//�����ٽ���
nt_calendar_obj nwt={2020,0,0,00,00,00,0};  //����ṹ�����������ֵ


//��ȡ����ʱ��
u8 get_time(void)
{
	connect_TCP(TIME_SERVERIP,TIME_PORTNUM);//ͨ��IP��ַ�Ͷ˿ںŽ���TCP����
	set_trans();//����Ϊ͸��ģʽ
	USART3_RX_STA=0;	//δ����
	memset(USART3_RX_BUF,0,strlen((const char*)USART3_RX_BUF));//��ս��ջ�����
	u3_printf("GET http://api.k780.com:88/?app=life.time&appkey=10003&sign=b59bc3ef6191eb9f747dd4e83c99f2a4&format=json&HTTP/1.1\r\n");
	delay_ms(1000);//1s��ʱ�жϽ��ܴ�������
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	taskENTER_CRITICAL();//���񼶱������ر����о��а���Ӳ�������ж�    
#endif	
	parse_now_time();//������ǰ��õ�ʱ����Ϣ
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	taskEXIT_CRITICAL();//�˳��ٽ��������񼶱������������о��а���Ӳ�������ж�    
#endif	
	exit_trans();//�˳�͸��
	return 0;
}


//��ȡһ��ʵʱ����
//���أ�0---��ȡ�ɹ���1---��ȡʧ��
u8 get_current_weather(void)
{
//	taskENTER_CRITICAL();
	connect_TCP(WEATHER_SERVERIP,WEATHER_PORTNUM);//ͨ��IP��ַ�Ͷ˿ںŽ���TCP����
	set_trans();//����Ϊ͸��ģʽ
	
	printf("start trans...\r\n");
	
	USART3_RX_STA=0;	//���㴮��3����
	memset(USART3_RX_BUF,0,strlen((const char*)USART3_RX_BUF));//��ս��ջ�����
	u3_printf("GET https://api.seniverse.com/v3/weather/now.json?key=SQefNGN4Y6gSdfM5x&location=kunming&language=zh-Hans&unit=c\r\n");	
//	delay_ms(20);//��ʱ20ms���ص���ָ��ͳɹ���״̬
//	USART3_RX_STA=0;	//���㴮��3����
//	memset(USART3_RX_BUF,0,strlen((const char*)USART3_RX_BUF));//��ս��ջ�����
	delay_ms(1000); //1s��ʱ�жϽ��ܴ�������
//	printf("weather sizeof:%d\r\n",sizeof(USART3_RX_BUF));
	
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	taskENTER_CRITICAL();//���񼶱������ر����о��а���Ӳ�������ж�[�и����⣺���жϺ󴮿�1�жϻ�����ʱ]   
#endif	
	parse_now_weather();//������ǰ��ȡ��������Ϣ
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	taskEXIT_CRITICAL();//�˳��ٽ��������񼶱������������о��а���Ӳ�������ж�    
#endif		
	exit_trans();//�˳�͸��
//	taskEXIT_CRITICAL();//�˳��ٽ���
	return 0;
}

//��ȡ3�������
u8 get_3days_weather(void)
{
	u8 *p;
	u8 res;
	u8 ipbuf[16]; 	//IP����
	p=mymalloc(SRAMIN,40);							//����40�ֽ��ڴ�
	sprintf((char*)p,"AT+CIPSTART=\"TCP\",\"%s\",%s",WEATHER_SERVERIP,WEATHER_PORTNUM);    //����Ŀ��TCP������
	res = atk_8266_send_cmd(p,"OK",200);//���ӵ�Ŀ��TCP������
	if(res==1)
	{
		myfree(SRAMIN,p);
		return 1;
	}
	delay_ms(300);
	atk_8266_send_cmd("AT+CIPMODE=1","OK",100);      //����ģʽΪ��͸��	
//	atk_8266_get_wanip(ipbuf);//��ȡWAN IP
	sprintf((char*)p,"IP��ַ:%s �˿�:%s",ipbuf,(u8*)WEATHER_PORTNUM);
//	Show_Str(30,65,200,12,p,12,0);				//��ʾIP��ַ�Ͷ˿�	
	USART3_RX_STA=0;
	atk_8266_send_cmd("AT+CIPSEND","OK",100);         //��ʼ͸��
	printf("start trans...\r\n");
	
  //�ҵ���Կ 50alegxkcaehcge6
	//������Կ x3owc7bndhbvi8oq
	u3_printf("GET https://api.seniverse.com/v3/weather/now.json?key=SXr2ouYQuD6pXc6SI&location=kunming&language=zh-Hans&unit=c&start=0&hours=3\r\n");
//	delay_ms(20);//��ʱ20ms���ص���ָ��ͳɹ���״̬
//	atk_8266_at_response(1);
	USART3_RX_STA=0;//���㴮��3����
	delay_ms(1000);//1s��ʱ�жϽ��ܴ�������
//	atk_8266_at_response(0);
	if(USART3_RX_STA&0X8000)		//��ʱ�ٴνӵ�һ�����ݣ�Ϊ����������
	{ 
		USART3_RX_BUF[USART3_RX_STA&0X7FFF]=0;//��ӽ�����
	} 
	
//	parse_3days_weather();

	
	exit_trans();//�˳�͸��
//	atk_8266_send_cmd("AT+CIPCLOSE","OK",50);         //�ر�����
	myfree(SRAMIN,p);
	return 0;
}


