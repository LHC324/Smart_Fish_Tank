#ifndef __WEATHER_H
#define __WEATHER_H

#include "sys.h"

struct LocalTime{
	u16 year;
	u8 month;
	u8 day;
	u8 hour;
	u8 min;
	u8 sec;
	u8 *weeknum;
};

struct Weather{
	char time[3][32];
	char text[3][32];
	char code[3][32];
	char temperature[3][32];
	char humidity[3][32];
	char wind_direction[3][32];
	char wind_speed[3][32];
};
struct RDWeather{
	char text_day[3][32];
	char code_day[3][32];
	char text_night[3][32];
	char code_night[3][32];	
	char high[3][32];
	char low[3][32];
	char humidity[3][32];
	char wind_speed[3][32];	
};

extern struct LocalTime Localtime;


u8 getTime(void);
u8 getRTWeather(u8 start);
u8 getRDWeather(void);
void TimeRun(void);
u16 u8Tou16(char *str);

#endif
