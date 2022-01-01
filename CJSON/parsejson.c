#include <stdio.h>
#include <stdlib.h>
#include "cJSON.h"
#include "parsejson.h"
#include "malloc.h"
#include "usart.h"
#include "lcd.h"
#include "string.h"
#include "text.h"
#include "ff.h"
#include "exfuns.h"
#include "delay.h"
#include "picture.h"
#include "rtc.h"


extern int SwitchToGbk(const unsigned char* pszBufIn, int nBufInLen, unsigned char* pszBufOut, int* pnBufOutLen);
extern nt_calendar_obj nwt;




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
void Parse_Time(char *str){//2020-12-03 21:56:16
	u8 i=0,j=0,k=0;
	char time[6][5]={"","","","","",""};
	u8 len=strlen(str);;

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
	
	nwt.year=u8Tou16(time[0]);
	nwt.month=u8Tou16(time[1]);	
	nwt.day=u8Tou16(time[2]);
	nwt.hour=u8Tou16(time[3]);
	nwt.min=u8Tou16(time[4]);
	nwt.sec=u8Tou16(time[5]);
	
    printf("%d\r\n",nwt.year);
    printf("%d\r\n",u8Tou16(time[1]));
    printf("%d\r\n",u8Tou16(time[2]));
    printf("%d\r\n",u8Tou16(time[3]));
    printf("%d\r\n",u8Tou16(time[4]));
    printf("%d\r\n",u8Tou16(time[5]));
}


//数字字符串转换成整形
static u8 str2int(u8 *str)
{
	u8 len,res;
	len = strlen((const char *)str);
	switch(len)
	{
		case 1:
			res = str[0]-0x30;
			break;
		case 2:
			res = (str[0]-0x30)*10+(str[1]-0x30);
			break;
		default:
			break;
	}
	return res;
}

//显示天气图标
//static void show_weather_icon(u8 *str,u8 num)
//{
//	u8 code;
//	code = str2int(str);
//	switch(code)
//	{
//		case 0:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_sunny);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_sunny);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_sunny);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_sunny);
//					break;
//			}			
//			break;
//		case 1:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_fair);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_fair);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_fair);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_fair);
//					break;
//			}	
//			break;
//		case 2:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_sunny);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_sunny);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_sunny);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_sunny);
//					break;
//			}	
//			break;
//		case 3:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_fair);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_fair);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_fair);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_fair);
//					break;
//			}	
//			break;
//		case 4:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_cloudy);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_cloudy);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_cloudy);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_cloudy);
//					break;
//			}	
//			break;
//		case 5:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_partly_cloudy);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_partly_cloudy);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_partly_cloudy);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_partly_cloudy);
//					break;
//			}	
//			break;
//		case 6:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_moon_cloudy);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_moon_cloudy);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_moon_cloudy);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_moon_cloudy);
//					break;
//			}
//			break;
//		case 7:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_mostly_cloudy);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_mostly_cloudy);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_mostly_cloudy);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_mostly_cloudy);
//					break;
//			}
//			break;
//		case 8:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_moon_cloudy);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_moon_cloudy);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_moon_cloudy);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_moon_cloudy);
//					break;
//			}
//			break;
//		case 9:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_overcast);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_overcast);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_overcast);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_overcast);
//					break;
//			}
//			break;
//		case 10:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_shower_rain);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_shower_rain);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_shower_rain);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_shower_rain);
//					break;
//			}
//			break;
//		case 11:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_thunder_shower);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_thunder_shower);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_thunder_shower);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_thunder_shower);
//					break;
//			}
//			break;
//		case 12:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_hail);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_hail);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_hail);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_hail);
//					break;
//			}
//			break;
//		case 13:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_light_rain);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_light_rain);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_light_rain);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_light_rain);
//					break;
//			}
//			break;
//		case 14:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_moderate_rain);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_moderate_rain);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_moderate_rain);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_moderate_rain);
//					break;
//			}
//			break;
//		case 15:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_heavy_rain);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_heavy_rain);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_heavy_rain);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_heavy_rain);
//					break;
//			}
//			break;
//		case 16:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_storm);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_storm);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_storm);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_storm);
//					break;
//			}
//			break;
//		case 17:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_heavy_storm);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_heavy_storm);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_heavy_storm);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_heavy_storm);
//					break;
//			}
//			break;
//		case 18:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_severe_storm);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_severe_storm);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_severe_storm);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_severe_storm);
//					break;
//			}
//			break;
//		case 19:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_freezing_rain);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_freezing_rain);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_freezing_rain);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_freezing_rain);
//					break;
//			}
//			break;
//		case 20:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_sleet);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_sleet);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_sleet);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_sleet);
//					break;
//			}
//			break;
//		case 21:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_snow_flurry);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_snow_flurry);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_snow_flurry);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_snow_flurry);
//					break;
//			}
//			break;
//		case 22:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_light_snow);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_light_snow);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_light_snow);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_light_snow);
//					break;
//			}
//			break;
//		case 23:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_moderate_snow);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_moderate_snow);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_moderate_snow);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_moderate_snow);
//					break;
//			}
//			break;
//		case 24:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_heavy_snow);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_heavy_snow);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_heavy_snow);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_heavy_snow);
//					break;
//			}
//			break;
//		case 25:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_snow_storm);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_snow_storm);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_snow_storm);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_snow_storm);
//					break;
//			}
//			break;
//		case 26:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_dust);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_dust);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_dust);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_dust);
//					break;
//			}
//			break;
//		case 27:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_sand);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_sand);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_sand);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_sand);
//					break;
//			}
//			break;
//		case 28:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_dust_storm);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_dust_storm);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_dust_storm);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_dust_storm);
//					break;
//			}
//			break;
//		case 29:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_sand_storm);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_sand_storm);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_sand_storm);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_sand_storm);
//					break;
//			}
//			break;
//		case 30:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_foggy);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_foggy);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_foggy);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_foggy);
//					break;
//			}
//			break;
//		case 31:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_haze);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_haze);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_haze);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_haze);
//					break;
//			}
//			break;
//		case 32:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_windy);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_windy);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_windy);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_windy);
//					break;
//			}
//			break;
//		case 33:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_gale);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_gale);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_gale);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_gale);
//					break;
//			}
//			break;
//		case 34:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_hurricane);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_hurricane);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_hurricane);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_hurricane);
//					break;
//			}
//			break;
//		case 35:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_hurricane);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_hurricane);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_hurricane);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_hurricane);
//					break;
//			}
//			break;
//		case 36:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_hurricane);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_hurricane);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_hurricane);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_hurricane);
//					break;
//			}
//			break;
//		case 37:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_cold);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_cold);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_cold);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_cold);
//					break;
//			}
//			break;
//		case 38:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_hot);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_hot);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_hot);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_hot);
//					break;
//			}
//			break;
//		case 99:
//			switch(num)
//			{
//				case 0:
//					LCD_Draw_Picture(30,5,130,105,(u8 *)gImage_unknown);
//					break;
//				case 1:
//					LCD_Draw_Picture(0,140,100,240,(u8 *)gImage_unknown);
//					break;
//				case 2:
//					LCD_Draw_Picture(110,140,210,240,(u8 *)gImage_unknown);
//					break;
//				case 3:
//					LCD_Draw_Picture(220,140,320,240,(u8 *)gImage_unknown);
//					break;
//			}
//			break;
//	}
//}

//解析当前时间
u8 parse_now_time(void){
	u8 error=0;
	cJSON *root=mymalloc(SRAMIN,sizeof(cJSON));
	cJSON *result_arr=mymalloc(SRAMIN,sizeof(cJSON));

	char *success =mymalloc(SRAMIN,10);
	char *timestr =mymalloc(SRAMIN,100);
//	char *time =mymalloc(SRAMIN,20);
	memset(success,0,10);
	memset(timestr,0,100);
//	memset(time,0,20);

	
	printf("jieshou->timejson = %s\r\n",USART3_RX_BUF);//////////////////
	if(USART3_RX_BUF[0]=='{'){	
		root=cJSON_Parse((const char*)USART3_RX_BUF);  //"{"success":"1","result":{"timestamp":"1607354892","datetime_1":"2020-12-07 23:28:12","datetime_2":"2020年12月07日 23时28分12秒","week_1":"1","week_2":"星期一","week_3":"周一","week_4":"Monday"}}"
		if(root!=NULL){	
				success=cJSON_GetObjectItem(root,"success")->valuestring;
				if(strcmp(success,"1")==0){
					result_arr=cJSON_GetObjectItem(root,"result");
					if(result_arr){					
						timestr=cJSON_GetObjectItem(result_arr,"datetime_1")->valuestring; 
						printf("%s\r\n",timestr);
						nwt.week=str2int((u8 *)cJSON_GetObjectItem(result_arr,"week_1")->valuestring);
						
						printf("%d\r\n",nwt.week);
				}			
			}
			else{ 
				error=1;
			}
		}
		else{
			error=3;
			printf("JSON format error:%s\r\n", cJSON_GetErrorPtr());  //堆尺寸太小，导致转换失败
		}		
		Parse_Time(timestr);
	}
	else{ 
		error=2;
	}
	USART3_RX_STA = 0;
	
//	cJSON_Delete(result_arr); //用来释放你第一步获取的句柄，来释放整个内存
//	cJSON_Delete(root);//此处导致卡死
	myfree(SRAMIN,root);
	myfree(SRAMIN,result_arr);
	myfree(SRAMIN,success);
	myfree(SRAMIN,timestr);
	return error;
}



//解析当前天气
u8 parse_now_weather(void)
{
	cJSON *root;
	cJSON *pSub;
	cJSON *arrayItem;
	cJSON *pItem;
	cJSON *pSubItem;
	cJSON *pChildItem;
	
	char *pr,*utf8str,*gbkstr;
	int len;
	u8 temperature;
	
	root = mymalloc(SRAMIN,sizeof(cJSON));
	pSub = mymalloc(SRAMIN,sizeof(cJSON));
	pItem = mymalloc(SRAMIN,sizeof(cJSON));
	pSubItem = mymalloc(SRAMIN,sizeof(cJSON));
	pChildItem = mymalloc(SRAMIN,sizeof(cJSON));
	arrayItem = mymalloc(SRAMIN,sizeof(cJSON));
	
	pr = mymalloc(SRAMIN,200);
	utf8str = mymalloc(SRAMIN,50);
	gbkstr = mymalloc(SRAMIN,50);
	
	memset(pr,0,200);
	memset(gbkstr,0,50);
	memset(utf8str,0,50);
	
//	file = mymalloc(SRAMIN,sizeof(FIL));
//	res=f_open(file,(const TCHAR*)APP_ASCII_5427,FA_READ);//打开文件
//	if(res==FR_OK)
//	{
//		asc2_5427 = mymalloc(SRAMIN,file->fsize);
//		if(asc2_5427 != NULL)
//		{
//			res = f_read(file,asc2_5427,file->fsize,&br);
//		}
//		f_close(file);
//	}

	printf("jieshou->1dayjson = %s\r\n",USART3_RX_BUF);
	
	root = cJSON_Parse((const char*)USART3_RX_BUF);
	if(root != NULL)
	{
		pSub = cJSON_GetObjectItem(root,"results");
		if(pSub != NULL)
		{
//			size = cJSON_GetArraySize(pSub);
			arrayItem = cJSON_GetArrayItem(pSub,0);  
			pr = cJSON_Print(arrayItem);   //获取jsom数组
			pItem = cJSON_Parse(pr);       //对数组，进行升级。
			if(pItem != NULL)
			{
				pSubItem = cJSON_GetObjectItem(pItem,"location");
				if(pSubItem != NULL)
				{
					pChildItem = cJSON_GetObjectItem(pSubItem,"name");
					if(pChildItem != NULL)
					{
						utf8str = pChildItem->valuestring;
						SwitchToGbk((const u8*)utf8str,strlen(utf8str),(u8 *)gbkstr,&len);  //获取城市名称转换为gbk文件
						Show_Str(0,0,lcddev.width,lcddev.height,(u8 *)gbkstr,16,0);         //显示城市名称。
					}
				}
//				memset(utf8str,0,50);
//				memset(gbkstr,0,50);
				pSubItem = cJSON_GetObjectItem(pItem,"now");
				if(pSubItem != NULL)
				{
					pChildItem = cJSON_GetObjectItem(pSubItem,"text");  //获取天气信息。多云
					if(pChildItem != NULL)
					{
						utf8str = pChildItem->valuestring;
						SwitchToGbk((const u8*)utf8str,strlen(utf8str),(u8 *)gbkstr,&len);
						Show_Str(220,25,lcddev.width,lcddev.height,(u8 *)gbkstr,16,0);  //显示多云
					}
//					memset(utf8str,0,50);
//					memset(gbkstr,0,50);
					
					pChildItem = cJSON_GetObjectItem(pSubItem,"code");              //获取气象代码
					if(pChildItem != NULL)
					{
						gbkstr = pChildItem->valuestring;
//						show_weather_icon((u8 *)gbkstr,0);                           //根据气象代码，更新图片
					}
//					memset(gbkstr,0,50);
					
					pChildItem = cJSON_GetObjectItem(pSubItem,"temperature");     //获取温度信息
					if(pChildItem != NULL)
					{
						gbkstr = pChildItem->valuestring;
						temperature = str2int((u8 *)gbkstr);
//						gui_show_num(140,22,2,RED,54,temperature,0x80);
						printf("wendu = %d\r\n",temperature);
					}
			}
			pSubItem = cJSON_GetObjectItem(pItem,"last_update");
				if(pSubItem != NULL)		
				{
				    gbkstr =pSubItem->valuestring;
					
					 LCD_ShowString(0,92,200,20,12,(u8*)gbkstr);
					 printf("1day_updata_time = %s\r\n",(u8*)gbkstr);
				}
			}
			cJSON_Delete(pItem);
		}
	}
//	cJSON_Delete(root);//此处内存释放与下面一样
	myfree(SRAMIN,root);
	myfree(SRAMIN,pSub);
	myfree(SRAMIN,pItem);
	myfree(SRAMIN,pSubItem);
	myfree(SRAMIN,pChildItem);
	myfree(SRAMIN,arrayItem);
	myfree(SRAMIN,pr);
	myfree(SRAMIN,utf8str);
	myfree(SRAMIN,gbkstr);
//	myfree(SRAMIN,file);
//	myfree(SRAMIN,asc2_5427);
	return 0;
}

//解析3天天气
//u8 parse_3days_weather(void)
//{
//	cJSON *root;
//	cJSON *pSub;
//	cJSON *arrayItem;
//	cJSON *pItem;
//	cJSON *pSubItem;
//	cJSON *pChildItem;
//	cJSON *pLastItem;
//	
//	char *pr,*utf8str,*gbkstr;
//	u8 size = 0;
//	int len;
//	u8 i;
//	
//	root = mymalloc(SRAMIN,sizeof(cJSON));
//	pSub = mymalloc(SRAMIN,sizeof(cJSON));
//	pItem = mymalloc(SRAMIN,sizeof(cJSON));
//	pSubItem = mymalloc(SRAMIN,sizeof(cJSON));
//	pChildItem = mymalloc(SRAMIN,sizeof(cJSON));
//	arrayItem = mymalloc(SRAMIN,sizeof(cJSON));
//	pLastItem = mymalloc(SRAMIN,sizeof(cJSON));
//	
//	pr = mymalloc(SRAMIN,1500);
//	utf8str = mymalloc(SRAMIN,50);
//	gbkstr = mymalloc(SRAMIN,50);
//	
//	memset(pr,0,1500);
//	memset(gbkstr,0,50);
//	memset(utf8str,0,50);
//	
//	printf("jieshou->3dayjson = %s\r\n",USART3_RX_BUF);

//	root = cJSON_Parse((const char*)USART3_RX_BUF);
//	if(root != NULL)
//	{
//		pSub = cJSON_GetObjectItem(root,"results");
//		if(pSub != NULL)
//		{
////			size = cJSON_GetArraySize(pSub);
//			arrayItem = cJSON_GetArrayItem(pSub,0);
//			pr = cJSON_Print(arrayItem);
//			pItem = cJSON_Parse(pr);
//			if(pItem != NULL)
//			{
//				pSubItem = cJSON_GetObjectItem(pItem,"daily");
//				if(pSubItem != NULL)
//				{
//					size = cJSON_GetArraySize(pSubItem);  //获取数组元素大小
//					for(i=0;i<size;i++)
//					{
//						if(i==3)break;   //超出数组范围，退出
//						arrayItem = cJSON_GetArrayItem(pSubItem,i);
//						pr = cJSON_Print(arrayItem);
//						pLastItem = cJSON_Parse(pr);
//						if(pLastItem != NULL)
//						{
//							if(i==0)
//							{
//								pChildItem =  cJSON_GetObjectItem(pLastItem,"wind_direction");
//								utf8str = pChildItem->valuestring;     //获取风向。
//								SwitchToGbk((const u8*)utf8str,strlen(utf8str),(u8 *)gbkstr,&len);  //转换为gbk
//								LCD_Fill(220,45,320,61,BLACK);
//								Show_Str(220,45,lcddev.width,lcddev.height,(u8 *)gbkstr,16,0);  //显示风向
//							
//								pChildItem =  cJSON_GetObjectItem(pLastItem,"wind_scale");      //风速等级
//								gbkstr = pChildItem->valuestring;
//								LCD_ShowString(220,65,20,20,16,(u8 *)gbkstr);                    //显示风速
//								
//								pChildItem =  cJSON_GetObjectItem(pLastItem,"wind_speed");       //获取风速
//								gbkstr = pChildItem->valuestring;
//								LCD_ShowxNum(260,85,str2int((u8 *)gbkstr),2,16,0x80);            //显示风速
////								LCD_ShowString(260,85,20,20,16,(u8 *)gbkstr);
//							}   //主要显示当前的一些气象信息，风速等。
//							
//							pChildItem  =  cJSON_GetObjectItem(pLastItem,"high");
//							gbkstr = pChildItem->valuestring;
//							LCD_ShowxNum(30+110*i,130,str2int((u8 *)gbkstr),2,12,0x80);        //显示最高温
////							LCD_ShowString(30+110*i,130,20,20,12,(u8 *)gbkstr);
//							
//							pChildItem =  cJSON_GetObjectItem(pLastItem,"low");
//							gbkstr = pChildItem->valuestring;
//							LCD_ShowxNum(48+110*i,130,str2int((u8 *)gbkstr),2,12,0x80);       //显示最低温
////							LCD_ShowString(48+110*i,130,20,20,12,(u8 *)gbkstr);
//							
//							
//							pChildItem =  cJSON_GetObjectItem(pLastItem,"code_day");		     //根据code显示气象图标										
//							gbkstr = pChildItem->valuestring;
//							show_weather_icon((u8 *)gbkstr,i+1);
//														
//						}
//						cJSON_Delete(pLastItem);
//					}
//				}
//				
//				
//		 pSubItem = cJSON_GetObjectItem(pItem,"last_update");
//				if(pSubItem != NULL)
//				{  gbkstr = pSubItem->valuestring;
//				   LCD_ShowString(0,106,200,20,12,(u8*)gbkstr);
//					 printf("3day_updata_time = %s\r\n",(u8*)gbkstr);
//					
//					
//				}
//				
//				
//				
//				
//			  }
//			
//			
//			
//	
//				
//			
//			cJSON_Delete(pItem);
//		}
//		
//		

//	}
//	cJSON_Delete(root);
//	myfree(SRAMIN,root);
//	myfree(SRAMIN,pSub);
//	myfree(SRAMIN,pItem);
//	myfree(SRAMIN,pSubItem);
//	myfree(SRAMIN,pChildItem);
//	myfree(SRAMIN,arrayItem);
//	myfree(SRAMIN,pLastItem);
//	myfree(SRAMIN,pr);
//	myfree(SRAMIN,utf8str);
//	myfree(SRAMIN,gbkstr);


//	return 0;
//}

