#ifndef _ST7735_H_
#define _ST7735_H_
#include "sys.h"

//#define USE_LANDSCAPE//���Գ���������л��������뿪���˺꣬����������
//#define USE_SPI //�����˺��ʾʹ��Ӳ��SPI2

#define ORDER 1
#define DATA 0

#define WIDTH 128
#define HEIGHT 160
 
//#define ACC  PBout(9) //��Ϊ��Ļ�����Զ��رգ����õ�ѹ����
#define SCL  PBout(13)//��ģ��CLK����,������Pin9_SCL
#define SDA  PBout(15)//��ģ��DIN/MOSI���ţ�������Pin8_SDA
#define RESET  PBout(14)//��ģ��DCT���ţ�������Pin6_RES
#define DC  PBout(12)//��ģ��D/C���ţ�������Pin7_A0
#define CS  PBout(11)//��ģ��CE���ţ�������Pin12_CS
#define BL  PBout(10)//��ģ��BL���ţ�������Բ���IO���ƻ���PWM���ƣ�Ҳ����ֱ�ӽӵ��ߵ�ƽ����
 
//---------------------------End ofҺ��������---------------------------------//
//���峣����ɫ
#define RED  		0xF800//R[4..0]+G[5..0]+B[4..0];65K
#define GREEN		0x07E0
#define BLUE 		0x001F
#define WHITE		0xFFFF
#define BLACK		0x0000
#define PURPLE		0xF81F
#define CYAN		0x07FF //��ɫ
#define YELLOW  0xFFE0
#define GRAY0   0xEF7D   
#define GRAY1   0x8410      	
#define GRAY2   0x4208 
extern u16 FOREGROUND;//����ǰ��ɫ��Ĭ�Ϻ�ɫ
extern u16 BACKGROUND;//���屳��ɫ��Ĭ�Ϻ�ɫ

							   		    
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
void Lcd_Fill(u8 sx,u8 sy,u8 ex,u8 ey,u16 color);//��ָ����������䵥����ɫ
void Lcd_Color_Fill(u8 sx,u8 sy,u8 ex,u8 ey,u16 *color);//��ָ�����������ָ����ɫ��
u16 Lcd_Read_Point(u8 x,u8 y); //��ȡ��ĳ�����ɫֵ	
#endif
