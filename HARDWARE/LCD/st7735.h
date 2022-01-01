#ifndef _ST7735_H_
#define _ST7735_H_
#include "sys.h"

//#define USE_LANDSCAPE//测试程序横竖屏切换，横屏请开启此宏，竖屏请屏蔽
//#define USE_SPI //开启此宏表示使用硬件SPI2

#define ORDER 1
#define DATA 0

#define WIDTH 128
#define HEIGHT 160
 
//#define ACC  PBout(9) //因为屏幕不会自动关闭，设置电压引脚
#define SCL  PBout(13)//接模块CLK引脚,接裸屏Pin9_SCL
#define SDA  PBout(15)//接模块DIN/MOSI引脚，接裸屏Pin8_SDA
#define RESET  PBout(14)//接模块DCT引脚，接裸屏Pin6_RES
#define DC  PBout(12)//接模块D/C引脚，接裸屏Pin7_A0
#define CS  PBout(11)//接模块CE引脚，接裸屏Pin12_CS
#define BL  PBout(10)//接模块BL引脚，背光可以采用IO控制或者PWM控制，也可以直接接到高电平常亮
 
//---------------------------End of液晶屏接线---------------------------------//
//定义常用颜色
#define RED  		0xF800//R[4..0]+G[5..0]+B[4..0];65K
#define GREEN		0x07E0
#define BLUE 		0x001F
#define WHITE		0xFFFF
#define BLACK		0x0000
#define PURPLE		0xF81F
#define CYAN		0x07FF //青色
#define YELLOW  0xFFE0
#define GRAY0   0xEF7D   
#define GRAY1   0x8410      	
#define GRAY2   0x4208 
extern u16 FOREGROUND;//定义前景色，默认红色
extern u16 BACKGROUND;//定义背景色，默认黑色

							   		    
void LCD_Initial(void);
void Clear_Colour(u16 color,u8 x0,u8 y0,u8 x,u8 y);
void PutPixel(u8 x_start,u8 y_start,u16 color);
void LCD_ShowChar(u8 x,u8 y,u8 num,u8 siz,u8 mode);
void LCD_ShowNum(u8 x,u8 y,u32 num,u8 len,u8 siz);
void LCD_ShowxNum(u8 x,u8 y,u32 num,u8 len,u8 siz,u8 mode);
void LCD_ShowString(u8 x,u8 y,u8 width,u8 height,u8 siz,u8 *p);
void LCD_DrawLine(u8 x1, u8 y1, u8 x2, u8 y2);
void LCD_DrawRectangle(u8 x1, u8 y1, u8 x2, u8 y2);
void LCD_Draw_Circle(u16 x0,u16 y0,u8 r);
void Lcd_Fill(u8 sx,u8 sy,u8 ex,u8 ey,u16 color);//在指定区域内填充单个颜色
void Lcd_Color_Fill(u8 sx,u8 sy,u8 ex,u8 ey,u16 *color);//在指定区域内填充指定颜色块
u16 Lcd_Read_Point(u8 x,u8 y); //读取个某点的颜色值	
#endif
