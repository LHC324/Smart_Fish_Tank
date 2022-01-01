#ifndef __WEATHER_H
#define __WEATHER_H

#include "sys.h"
#include "esp8266.h"
#include "usart.h"
#include "malloc.h"
#include "delay.h"
#include "text.h"
#include "parsejson.h"
#include "cJSON.h"
#include "math.h"

//�������Ӷ˿ں�:80	
#define WEATHER_PORTNUM 	"80"
//����������IP
#define WEATHER_SERVERIP 	"api.seniverse.com"

//ʱ��˿ں�
#define TIME_PORTNUM		"80"
//ʱ�������IP
#define TIME_SERVERIP		"api.k780.com"//"api.tianapi.com"

typedef struct   //�ṹ��
{
    vu16  year;
    vu8   month;
	vu8   day;
    vu8   hour;
    vu8   min;
    vu8   sec;
	vu8	  week;
}nt_calendar_obj;	   

u8 get_current_weather(void);
u8 get_3days_weather(void);
void show_weather(void);
u8 get_time(void);

#endif


