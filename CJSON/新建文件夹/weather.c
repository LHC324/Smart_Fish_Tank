#include "weather.h"
#include "cJSON.h"
#include "usart.h"
#include "string.h"
#include "usart.h"
#include "math.h"
#include "delay.h"
#include "ESP8266.h"
#include "timer.h"
#include <stdlib.h> //显示声明malloc函数，否则报隐式声明警告

struct LocalTime Localtime={2020,0,0,00,00,00,0};
struct Weather weather;
struct RDWeather RDweather;


/*
将u8字符串数字转换成u16类型数字
*/
u16 u8Tou16(char *str){
	u8 i;
	u16 num=0;
	u8 len=strlen(str);
	for(i=len;i>0;i--){
		num+=(*str-'0')*pow(10,i-1);  //pow次方函数
		str++;
	}
	return num;
}


/*
转换成字符串时间
*/
void Parse_Time(char *str){
	u8 i=0,j=0,k=0;
	char time[6][5]={"","","","","",""};
	//time=malloc();
	u8 len=strlen(str);
	for(i=0;i<len+1;i++){
		if(*str=='-'||*str==0x20||*str==':'||*str=='\0'){  
			time[j][k]='\0';
			j++;
			str++;
			k=0;
		}
		time[j][k]=*str;
		k++;
		str++;
	}
	
	Localtime.year=u8Tou16(time[0]);
	Localtime.month=u8Tou16(time[1]);	
	Localtime.day=u8Tou16(time[2]);
	Localtime.hour=u8Tou16(time[3]);
	Localtime.min=u8Tou16(time[4]);
	Localtime.sec=u8Tou16(time[5]);
	
}

/*
获取串口数据转换可用时间常数
0:获取成功
1：接口请求错误
2：非JSON格式
*/
u8 getTime(){
	cJSON *root,*result_arr,*result;
	u8 code=0,error=0;
	const char *TimeStr;
	char *time = (char *)malloc(sizeof(char) * 20);
	ConTCP();
	delay_ms(100);
	SetPassThrough();  //透传模式
	memset(USART3_RX_BUF,0,strlen((const char*)USART3_RX_BUF));//串口缓冲区清空
	USART3_RX_STA = 0;
	//Usart_SendString(USART3,"GET http://api.tianapi.com/txapi/worldtime/index?key=652e7ab06ae02d789f04e2b08dbfd5f6&city=上海\r\n\r\n"); //发送GET请求获取当前时间
	u3_printf("%s\r\n","GET http://api.tianapi.com/txapi/worldtime/index?key=652e7ab06ae02d789f04e2b08dbfd5f6&city=上海");	//发送命令
	delay_ms(1000);
	printf("%s\r\n", USART3_RX_BUF);//////////////////
	if(USART3_RX_BUF[0]=='{'){	
		root=cJSON_Parse((const char*)USART3_RX_BUF);  //"{\"code\": 200,\"newslist\": [{\"strtime\": \"2020-09-26 19:02:16\",\"weeknum\": \"6\"}]}"
		RstPassThrough();
		if(root!=0){	
				code=cJSON_GetObjectItem(root,"code")->valueint;
				
				if(code==200){
					result_arr=cJSON_GetObjectItem(root,"newslist");
					if(result_arr->type==cJSON_Array){					
						result=cJSON_GetObjectItem(result_arr,0);
						TimeStr=(const char *)cJSON_GetObjectItem(result,"strtime")->valuestring;
						Localtime.weeknum=(u8 *)cJSON_GetObjectItem(result,"weeknum")->valuestring;
				}			
			}else{ error=1;}
		}else{
			error=3;
			printf("JSON format error:%s\r\n", cJSON_GetErrorPtr());  //堆尺寸太小，导致转换失败
		}
		strcpy(time,TimeStr);	
		cJSON_Delete(root); //用来释放你第一步获取的句柄，来释放整个内存
		Parse_Time(time);	
//		TIM_Cmd(TIM2,ENABLE);  //获取到时间后，启动TIM2
	}else{ error=2;}
	USART3_RX_STA = 0;
	u3_printf("%s\r\n","AT+CIPCLOSEMODE=0\r\n");//关闭TCP连接
//	Usart_SendString(USART3,"AT+CIPCLOSEMODE=0\r\n");  
	delay_ms(500);
	u3_printf("%s\r\n","AT+CIPCLOSE=0\r\n"); //关闭 TCP/UDP/SSL 传输
//	Usart_SendString(USART3,"AT+CIPCLOSE=0\r\n");
	return error;
}

u8 getRTWeather(u8 start){
	
	cJSON *root,*results,*result_arr,*result0,*results_arr,*item;
	u8 error=0;
	int i=0;
	char url[150];
	ConSSL();
	delay_ms(100);
	SetPassThrough();
	memset(USART3_RX_BUF,0,strlen((const char*)USART3_RX_BUF));
	USART3_RX_STA = 0;
	sprintf(url,"GET https://api.seniverse.com/v3/weather/now.json?key=SQefNGN4Y6gSdfM5x&location=kunming&language=zh-Hans&unit=c&start=%d&hours=3",start);  //指定获取从何值开始的天气，0表示从当前时间开始
	u3_printf("%s\r\n",url);//调用api获取当地天气
	printf("%s\r\n",url);/////////////////测试
	//	Usart_SendString(USART3,url);   
	delay_ms(1000);
	printf("%s\r\n",USART3_RX_BUF);/////////////////测试
	root=cJSON_Parse((char*)USART3_RX_BUF);
//	printf("%s\r\n",root);/////////////////测试
	RstPassThrough(); //获取到数据关闭透传
	if(root!=0){			
			results=cJSON_GetObjectItem(root,"results");
			results_arr=cJSON_GetArrayItem(results,0);
			result_arr=cJSON_GetObjectItem(results_arr,"hourly");
			if(result_arr->type==cJSON_Array){
				for(i=0;i<3;i++){
					result0=cJSON_GetArrayItem(result_arr,i);
					
					item=cJSON_GetObjectItem(result0,"time");
					memcpy(weather.time[i],&item->valuestring[11],8);  //从第12位数8位就是天气的时间数据
					
					item=cJSON_GetObjectItem(result0,"code");
					memcpy(weather.code[i],item->valuestring,strlen(item->valuestring));
					
					item=cJSON_GetObjectItem(result0,"temperature");
					memcpy(weather.temperature[i],item->valuestring,strlen(item->valuestring));		
					
					item=cJSON_GetObjectItem(result0,"humidity");
					memcpy(weather.humidity[i],item->valuestring,strlen(item->valuestring));					
					
					item=cJSON_GetObjectItem(result0,"wind_speed");
					memcpy(weather.wind_speed[i],item->valuestring,strlen(item->valuestring));

				}
			}
		}else{
			error=1;
			printf("Error before: [%s]\n",cJSON_GetErrorPtr());
		}
		
	cJSON_Delete(root);
	USART3_RX_STA = 0;
	u3_printf("%s\r\n","AT+CIPCLOSE");	
//	Usart_SendString(USART3,"AT+CIPCLOSE\r\n");	//关闭连接
	return error;
}

u8 getRDWeather(){	
	cJSON *root,*results,*result_arr,*result0,*results_arr,*item;
	u8 error=0;
	int i=0;
	ConSSL();
	delay_ms(500);
	SetPassThrough();
	memset(USART3_RX_BUF,0,strlen((const char*)USART3_RX_BUF));
	USART3_RX_STA = 0;
//	Usart_SendString(USART3,"GET https://api.seniverse.com/v3/weather/daily.json?key=SRpZAIwb07j1twRHA&location=shanghai&language=zh-Hans&unit=c&start=0&days=3\r\n\r\n");   //获取当地天气
	u3_printf("%s\r\n","GET https://api.seniverse.com/v3/weather/daily.json?key=SRpZAIwb07j1twRHA&location=shanghai&language=zh-Hans&unit=c&start=0&days=3");
	delay_ms(1000);
	root=cJSON_Parse((char*)USART3_RX_STA);
	RstPassThrough();
	if(root!=0){
			
			results=cJSON_GetObjectItem(root,"results");
			results_arr=cJSON_GetArrayItem(results,0);
			result_arr=cJSON_GetObjectItem(results_arr,"daily");
			if(result_arr->type==cJSON_Array){
				for(i=0;i<3;i++){
					result0=cJSON_GetArrayItem(result_arr,i);
					
					item=cJSON_GetObjectItem(result0,"code_day");
					memcpy(RDweather.code_day[i],item->valuestring,strlen(item->valuestring));
					
					item=cJSON_GetObjectItem(result0,"code_night");
					memcpy(RDweather.code_night[i],item->valuestring,strlen(item->valuestring));		
					printf("temperature:%s",weather.temperature[i]);

					item=cJSON_GetObjectItem(result0,"high");
					memcpy(RDweather.high[i],item->valuestring,strlen(item->valuestring));

					item=cJSON_GetObjectItem(result0,"low");
					memcpy(RDweather.low[i],item->valuestring,strlen(item->valuestring));					
					
					item=cJSON_GetObjectItem(result0,"humidity");
					memcpy(RDweather.humidity[i],item->valuestring,strlen(item->valuestring));	
					printf("humidity:%s",weather.humidity[i]);
								
					item=cJSON_GetObjectItem(result0,"wind_speed");
					printf("windspeed:%s\r\n",item->valuestring);  //
					memcpy(RDweather.wind_speed[i],item->valuestring,strlen(item->valuestring));		
					printf("wind_speed:%s\r\n",weather.wind_speed[i]); //wind_speed:傀?

				}
			}
		}else{
			error=1;
			printf("Error before: [%s]\n",cJSON_GetErrorPtr());
		}
		
	cJSON_Delete(root);
	USART3_RX_STA = 0;
//	Usart_SendString(USART3,"AT+CIPCLOSE\r\n");	
	u3_printf("%s\r\n","AT+CIPCLOSE");	
	return error;
}

void TimeRun(){
	if(Localtime.sec<60){
		Localtime.sec++;
	}
	if(Localtime.sec==60){  //分进位
		Localtime.sec=0;
		if(Localtime.min<60){
			Localtime.min++;
		}	
	}
	if(Localtime.min==60){  //时进位
		Localtime.min=0;
		if(Localtime.hour<24){
			Localtime.hour++;
		}
	}
	if(Localtime.hour==24){
		Localtime.hour=0;
	}	
}
