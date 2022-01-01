#include "gui.h"
#include "lcd.h"
#include "text.h"
//#include "piclib.h"
#include "string.h"
#include "weather.h"
#include "key.h"

extern struct Weather weather;
extern struct RDWeather RDweather;
extern struct LocalTime Localtime;
const char* WeatherCode[39]={"晴","晴","晴","晴","多云","晴间多云","晴间多云","大部多云",
"大部多云","阴","阵雨","雷阵雨","雷阵雨伴有冰雹","小雨","中雨","大雨","暴雨","大暴雨",
"特大暴雨","冻雨","雨夹雪","阵雪","小雪","中雪","大雪","暴雪",
"浮尘","扬沙","沙尘暴","强沙尘暴","雾","霾","风","大风","飓风",
"热带风暴","龙卷风","冷","热"};
const char* date[3]={"今天","明天","后天"};
int thispage=0;

/*
显示实时天气
*/
void showRTweather(){
//	char path[15];
	u8 i,x0=20,x1=50;
	LCD_Fill(0,22,320,240,WHITE);	
	for(i=0;i<3;i++){
		LCD_ShowString(20+i*110,22,64,16,16,(u8*)weather.time[i]);
//		sprintf(path,"0:/ICONS/%s.bmp",weather.code[i]);
//		ai_load_picfile((const unsigned char*)path,x0+i*110,40,60,60,1);	
		
		Show_Str(10+i*110,130,32,16,"天气",16,0);
		LCD_ShowChar(42+i*110,130,':',16,0);
		Show_Str(x1+i*110,130,32,16,(u8*)WeatherCode[u8Tou16(weather.code[i])],16,0);
		Show_Str(10+i*110,150,32,16,"温度",16,0);
		LCD_ShowChar(42+i*110,150,':',16,0);
		LCD_ShowString(x1+i*110,150,32,16,16,(u8*)weather.temperature[i]);
		Show_Str(10+i*110,170,32,16,"湿度",16,0);
		LCD_ShowChar(42+i*110,170,':',16,0);
		LCD_ShowString(x1+i*110,170,32,16,16,(u8*)weather.humidity[i]);
	}	
		
}

/*
显示逐天天气预报
*/
void showRDweather(){
	char path[15];
	u8 i,x0=20,x1=50;
	LCD_Fill(0,22,320,240,WHITE);
	for(i=0;i<3;i++){
		Show_Str(30+i*110,22,32,16,(u8*)date[i],16,0);
//		sprintf(path,"0:/ICONS/%s.bmp",RDweather.code_day[i]);
//		ai_load_picfile((const unsigned char*)path,x0+i*110,40,60,60,1);
		
		Show_Str(10+i*110,130,32,16,"白天",16,0);
		LCD_ShowChar(42+i*110,130,':',16,0);
		Show_Str(x1+i*110,130,32,16,(u8*)WeatherCode[u8Tou16(RDweather.code_day[i])],16,0);
		Show_Str(10+i*110,150,32,16,"夜晚",16,0);
		LCD_ShowChar(42+i*110,150,':',16,0);
		Show_Str(x1+i*110,150,32,16,(u8*)WeatherCode[u8Tou16(RDweather.code_night[i])],16,0);
		Show_Str(10+i*110,170,32,16,"最高",16,0);
		LCD_ShowChar(42+i*110,170,':',16,0);
		LCD_ShowString(x1+i*110,170,32,16,16,(u8*)RDweather.high[i]);
		Show_Str(10+i*110,190,32,16,"最低",16,0);
		LCD_ShowChar(42+i*110,190,':',16,0);
		LCD_ShowString(x1+i*110,190,32,16,16,(u8*)RDweather.low[i]);
		Show_Str(10+i*110,210,32,16,"湿度",16,0);
		LCD_ShowChar(42+i*110,210,':',16,0);
		LCD_ShowString(x1+i*110,210,32,16,16,(u8*)RDweather.humidity[i]);
	}
}
/*
刷新当前页面的天气
*/
void refresh(){
	if(thispage==-1){
		getRDWeather();
		showRDweather();
	}else{
		getRTWeather(thispage);
		showRTweather();
	}
}
/*
根据按键切换天气页面
*/
void switchWeather(){
	u8 key=0; 
		key=KEY_Scan(0);  //扫描按键按下
		if(key==1){  
				if(thispage<0){  //如果小于0显示实时天气
					getRTWeather(0);
					showRTweather();	
					thispage=0;
				}else{  //显示逐日天气
					getRDWeather();
					showRDweather();
					thispage=-1;
				}			
			
		}				
		if(key==2){
				if(thispage==-1){  
					getRTWeather(0);
					showRTweather();
					thispage=0;
				}else{
					if(thispage==9){
						thispage=0;
						getRTWeather(thispage);
						showRTweather();		
					}else{
						thispage=thispage+3;
						getRTWeather(thispage);
						showRTweather();					
					}
				}
		}		
}
/*
显示时间
*/
void gui_load(){
	LCD_DrawLine(0,20,320,20);							//画横线
	LCD_ShowNum(0,0,Localtime.year,4,16);
//	LCD_ShowStr(32,0,3);  //年
	LCD_ShowNum(48,0,Localtime.month,2,16);
//	LCD_ShowStr(64,0,2);  //月
	LCD_ShowNum(80,0,Localtime.day,2,16);
//	LCD_ShowStr(96,0,4);  //日
	
	LCD_ShowNum(130,0,Localtime.hour,2,16);
//	LCD_ShowStr(146,0,5); //时
	LCD_ShowNum(162,0,Localtime.min,2,16);
//	LCD_ShowStr(178,0,6); //分
	LCD_ShowNum(194,0,Localtime.sec,2,16);
//	LCD_ShowStr(210,0,7); //秒
	
}

