#include "weather.h"
#include "FreeRTOS.h"					//FreeRTOS 使用	 
#include "task.h"						//访问临界区
nt_calendar_obj nwt={2020,0,0,00,00,00,0};  //定义结构体变量并赋初值


//获取北京时间
u8 get_time(void)
{
	connect_TCP(TIME_SERVERIP,TIME_PORTNUM);//通过IP地址和端口号建立TCP连接
	set_trans();//设置为透传模式
	USART3_RX_STA=0;	//未接收
	memset(USART3_RX_BUF,0,strlen((const char*)USART3_RX_BUF));//清空接收缓冲区
	u3_printf("GET http://api.k780.com:88/?app=life.time&appkey=10003&sign=b59bc3ef6191eb9f747dd4e83c99f2a4&format=json&HTTP/1.1\r\n");
	delay_ms(1000);//1s延时中断接受串口数据
#if SYSTEM_SUPPORT_OS	 	//使用OS
	taskENTER_CRITICAL();//任务级保护：关闭所有具有包括硬件在内中断    
#endif	
	parse_now_time();//解析当前获得的时间信息
#if SYSTEM_SUPPORT_OS	 	//使用OS
	taskEXIT_CRITICAL();//退出临界区，任务级保护：开启所有具有包括硬件在内中断    
#endif	
	exit_trans();//退出透传
	return 0;
}


//获取一次实时天气
//返回：0---获取成功，1---获取失败
u8 get_current_weather(void)
{
//	taskENTER_CRITICAL();
	connect_TCP(WEATHER_SERVERIP,WEATHER_PORTNUM);//通过IP地址和端口号建立TCP连接
	set_trans();//设置为透传模式
	
	printf("start trans...\r\n");
	
	USART3_RX_STA=0;	//清零串口3数据
	memset(USART3_RX_BUF,0,strlen((const char*)USART3_RX_BUF));//清空接收缓冲区
	u3_printf("GET https://api.seniverse.com/v3/weather/now.json?key=SQefNGN4Y6gSdfM5x&location=kunming&language=zh-Hans&unit=c\r\n");	
//	delay_ms(20);//延时20ms返回的是指令发送成功的状态
//	USART3_RX_STA=0;	//清零串口3数据
//	memset(USART3_RX_BUF,0,strlen((const char*)USART3_RX_BUF));//清空接收缓冲区
	delay_ms(1000); //1s延时中断接受串口数据
//	printf("weather sizeof:%d\r\n",sizeof(USART3_RX_BUF));
	
#if SYSTEM_SUPPORT_OS	 	//使用OS
	taskENTER_CRITICAL();//任务级保护：关闭所有具有包括硬件在内中断[有个问题：关中断后串口1中断会有延时]   
#endif	
	parse_now_weather();//解析当前获取的天气信息
#if SYSTEM_SUPPORT_OS	 	//使用OS
	taskEXIT_CRITICAL();//退出临界区，任务级保护：开启所有具有包括硬件在内中断    
#endif		
	exit_trans();//退出透传
//	taskEXIT_CRITICAL();//退出临界区
	return 0;
}

//获取3天的天气
u8 get_3days_weather(void)
{
	u8 *p;
	u8 res;
	u8 ipbuf[16]; 	//IP缓存
	p=mymalloc(SRAMIN,40);							//申请40字节内存
	sprintf((char*)p,"AT+CIPSTART=\"TCP\",\"%s\",%s",WEATHER_SERVERIP,WEATHER_PORTNUM);    //配置目标TCP服务器
	res = atk_8266_send_cmd(p,"OK",200);//连接到目标TCP服务器
	if(res==1)
	{
		myfree(SRAMIN,p);
		return 1;
	}
	delay_ms(300);
	atk_8266_send_cmd("AT+CIPMODE=1","OK",100);      //传输模式为：透传	
//	atk_8266_get_wanip(ipbuf);//获取WAN IP
	sprintf((char*)p,"IP地址:%s 端口:%s",ipbuf,(u8*)WEATHER_PORTNUM);
//	Show_Str(30,65,200,12,p,12,0);				//显示IP地址和端口	
	USART3_RX_STA=0;
	atk_8266_send_cmd("AT+CIPSEND","OK",100);         //开始透传
	printf("start trans...\r\n");
	
  //我的密钥 50alegxkcaehcge6
	//例题密钥 x3owc7bndhbvi8oq
	u3_printf("GET https://api.seniverse.com/v3/weather/now.json?key=SXr2ouYQuD6pXc6SI&location=kunming&language=zh-Hans&unit=c&start=0&hours=3\r\n");
//	delay_ms(20);//延时20ms返回的是指令发送成功的状态
//	atk_8266_at_response(1);
	USART3_RX_STA=0;//清零串口3数据
	delay_ms(1000);//1s延时中断接受串口数据
//	atk_8266_at_response(0);
	if(USART3_RX_STA&0X8000)		//此时再次接到一次数据，为天气的数据
	{ 
		USART3_RX_BUF[USART3_RX_STA&0X7FFF]=0;//添加结束符
	} 
	
//	parse_3days_weather();

	
	exit_trans();//退出透传
//	atk_8266_send_cmd("AT+CIPCLOSE","OK",50);         //关闭连接
	myfree(SRAMIN,p);
	return 0;
}


