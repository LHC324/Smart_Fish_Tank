#include "st7735.h"
#include "lcd18font.h"  	   
#include "spi.h"

u16 FOREGROUND=RED;//定义前景色，默认红色
u16	BACKGROUND=WHITE;//定义背景色，默认黑色

extern void  delay_ms(u16 ms);


void  SPI_Write_Data(u8 dat,u8 index)//向SPI总线传输一个8位数据
{
	u8 i;
	
	CS=0;
	if(index)
		DC=0;//0是命令，1是数据
	else
		DC=1;
#ifdef USE_SPI
	SPI_ReadWriteByte(dat);
#else
	
	for(i=8;i>0;i--)
	{
		if(dat&0x80)	
			SDA=1; //输出数据
		else 
			SDA=0;
		SCL=0;
		SCL=1;
		dat<<=1;
	}
	
#endif
	CS=1;
}


void  SPI_Write_Data_16Bit(u16 Data)//向液晶屏写一个16位数据
{
	SPI_Write_Data(Data>>8,DATA); 	//写入高8位数据
	SPI_Write_Data(Data,DATA); 			//写入低8位数据
}

u16 SPI_Read_Data_16Bit()//向SPI总线接收一个16位数据
{
	u8 i;
	u16 dat;
	
	CS=0;
	DC=1; //读数据

	for(i=16;i>0;i--)
	{
		if(SDA&0x80)	
			dat &=0x01; //输出数据
//		else 
//			dat=0;
		SCL=0;
		SCL=1;
		dat<<=1;
	}
	CS=1;
	return dat;
}


void RESET_ST7735(void)
{
    RESET=0;
    delay_ms(100);
    RESET=1;
    delay_ms(100);
}



void Lcd_SetRegion(u8 x_start,u8 y_start,u8 x_end,u8 y_end)
{	
#ifdef USE_LANDSCAPE//使用横屏模式
	SPI_Write_Data(0x2a,ORDER);
	SPI_Write_Data(0x02,DATA);
	SPI_Write_Data(x_start+2,DATA);
	SPI_Write_Data(0x02,DATA);
	SPI_Write_Data(x_end+2,DATA);

	SPI_Write_Data(0x2b,ORDER);
	SPI_Write_Data(0x01,DATA);
	SPI_Write_Data(y_start+1,DATA);
	SPI_Write_Data(0x01,DATA);
	SPI_Write_Data(y_end+1,DATA);

#else//竖屏模式	
	SPI_Write_Data(0x2a,ORDER);
	SPI_Write_Data(0x02,DATA);
	SPI_Write_Data(x_start+2,DATA);
	SPI_Write_Data(0x02,DATA);
	SPI_Write_Data(x_end+2,DATA);

	SPI_Write_Data(0x2b,ORDER);
	SPI_Write_Data(0x01,DATA);
	SPI_Write_Data(y_start+1,DATA);
	SPI_Write_Data(0x01,DATA);
	SPI_Write_Data(y_end+1,DATA);	
#endif
	SPI_Write_Data(0x2c,ORDER);
}


void Clear_Colour(u16 color,u8 x0,u8 y0,u8 x,u8 y)
{
 	u8 i,j;
	Lcd_SetRegion(x0,y0,x-1,y-1);
 	for (i=0;i<x;i++)
    	for (j=0;j<y;j++)
        	SPI_Write_Data_16Bit(color);
}

void PutPixel(u8 x_start,u8 y_start,u16 color)
{
	Lcd_SetRegion(x_start,y_start,x_start+1,y_start+1);
	SPI_Write_Data_16Bit(color);
	
}

////////////////////////////////////////



//在指定位置显示一个字符
//x,y:起始坐标
//num:要显示的字符:" "--->"~"
//siz:字体大小 12/16/24
//mode:叠加方式(1)还是非叠加方式(0)
void LCD_ShowChar(u8 x,u8 y,u8 num,u8 siz,u8 mode)
{  							  
    u8 temp,t1,t;
	u8 y0=y;
	u8 csiz=(siz/8+((siz%8)?1:0))*(siz/2);		//得到字体一个字符对应点阵集所占的字节数	
 	num=num-' ';//得到偏移后的值（ASCII字库是从空格开始取模，所以-' '就是对应字符的字库）
	for(t=0;t<csiz;t++)
	{   
		if(siz==12)temp=asc2_1206[num][t]; 	 	//调用1206字体
		else if(siz==16)temp=asc2_1608[num][t];	//调用1608字体
		else if(siz==24)temp=asc2_2412[num][t];	//调用2412字体
		else return;								//没有的字库
		for(t1=0;t1<8;t1++)
		{			    
			if(temp&0x80)
				PutPixel(x,y,FOREGROUND);
			else if(mode==0)
				PutPixel(x,y,BACKGROUND);
			temp<<=1;
			y++;
			if(y>=160)return;		//超区域了
			if((y-y0)==siz)
			{
				y=y0;
				x++;
				if(x>=128)return;	//超区域了
				break;
			}
		}  	 
	}  	    	   	 	  
} 

//显示字符串
//x,y:起点坐标
//width,height:区域大小  
//siz:字体大小
//*p:字符串起始地址		  
void LCD_ShowString(u8 x,u8 y,u8 width,u8 height,u8 siz,u8 *p)
{         
	u8 x0=x;
	width+=x;
	height+=y;
    while((*p<='~')&&(*p>=' '))//判断是不是非法字符!
    {       
        if(x>=width){x=x0;y+=siz;}
        if(y>=height)break;//退出
        LCD_ShowChar(x,y,*p,siz,0);
        x+=siz/2;
        p++;
    }  
}


//m^n函数
//返回值:m^n次方.
u32 LCD_Pow(u8 m,u8 n)
{
	u32 result=1;	 
	while(n--)result*=m;    
	return result;
}


//显示数字,高位为0,则不显示
//x,y :起点坐标	 
//len :数字的位数
//siz:字体大小
//color:颜色 
//num:数值(0~4294967295);	 
void LCD_ShowNum(u8 x,u8 y,u32 num,u8 len,u8 siz)
{         	
	u8 t,temp;
	u8 enshow=0;						   
	for(t=0;t<len;t++)
	{
		temp=(num/LCD_Pow(10,len-t-1))%10;
		if(enshow==0&&t<(len-1))
		{
			if(temp==0)
			{
				LCD_ShowChar(x+(siz/2)*t,y,' ',siz,0); //0非叠加模式
				continue;
			}else enshow=1; 
		 	 
		}
	 	LCD_ShowChar(x+(siz/2)*t,y,temp+'0',siz,0); 
	}
} 

//显示数字,高位为0,还是显示
//x,y:起点坐标
//num:数值(0~999999999);	 
//len:长度(即要显示的位数)
//siz:字体大小
//mode:
//[7]:0,不填充;1,填充0.
//[6:1]:保留
//[0]:0,非叠加显示;1,叠加显示.
void LCD_ShowxNum(u8 x,u8 y,u32 num,u8 len,u8 siz,u8 mode)
{  
	u8 t,temp;
	u8 enshow=0;						   
	for(t=0;t<len;t++)
	{
		temp=(num/LCD_Pow(10,len-t-1))%10;
		if(enshow==0&&t<(len-1))
		{
			if(temp==0)
			{
				if(mode&0X80)LCD_ShowChar(x+(siz/2)*t,y,'0',siz,mode&0X01);  
				else LCD_ShowChar(x+(siz/2)*t,y,' ',siz,mode&0X01);  
 				continue;
			}else enshow=1; 
		 	 
		}
	 	LCD_ShowChar(x+(siz/2)*t,y,temp+'0',siz,mode&0X01); 
	}
} 

//在指定区域内填充单个颜色
//(sx,sy),(ex,ey):填充矩形对角坐标,区域大小为:(ex-sx+1)*(ey-sy+1)   
//color:要填充的颜色
void Lcd_Fill(u8 sx,u8 sy,u8 ex,u8 ey,u16 color)
{          
	u8 i,j;
	u8 xlen=0; 
	xlen=ex-sx+1;	 
	for(i=sy;i<=ey;i++)
	{
		Lcd_SetRegion(sx,i,sx+1,i+1);//设置光标位置 
		for(j=0;j<xlen;j++)
			SPI_Write_Data_16Bit(color); //显示颜色 
//		PutPixel(sx,i,BACKGROUND);
	}  
}  


//在指定区域内填充指定颜色块			 
//(sx,sy),(ex,ey):填充矩形对角坐标,区域大小为:(ex-sx+1)*(ey-sy+1)   
//color:要填充的颜色
void Lcd_Color_Fill(u8 sx,u8 sy,u8 ex,u8 ey,u16 *color)
{  
	u8 height,width;
	u8 i,j;
	width=ex-sx+1; 			//得到填充的宽度
	height=ey-sy+1;			//高度
 	for(i=0;i<height;i++)
	{
		Lcd_SetRegion(sx,sy+i,sx+1,sy+i+1); //设置光标位置 
		for(j=0;j<width;j++)
			SPI_Write_Data_16Bit(color[i*width+j]); //写入数据 
//			LCD->LCD_RAM=color[i*width+j]; 
	}		  
}


//读取个某点的颜色值	 
//x,y:坐标
//返回值:此点的颜色
u16 Lcd_Read_Point(u8 x,u8 y)
{
 	u16 r=0,g=0,b=0;
	if(x>=WIDTH||y>=HEIGHT)return 0;	//超过了范围,直接返回 
	Lcd_SetRegion(x,y,x+1,y+1);	    
 	SPI_Write_Data(0x2e,ORDER); //7735发送读GRAM指令
	
	r=SPI_Read_Data_16Bit();//向SPI总线接收一个16位数据				   
	delay_ms(2);	  
 	r=SPI_Read_Data_16Bit(); //实际坐标颜色 		  						
	delay_ms(2); //9341/NT35310/NT35510要分2次读出 	                                   
	b=SPI_Read_Data_16Bit(); 
	g=r&0XFF;		//对于9341/5310/5510,第一次读取的是RG的值,R在前,G在后,各占8位
	g<<=8; 
	return (((r>>11)<<11)|((g>>10)<<5)|(b>>11));	//ILI9341/NT35310/NT35510需要公式转换一下
}			 


//画线
//x1,y1:起点坐标
//x2,y2:终点坐标  
//void LCD_DrawLine(u8 x1, u8 y1, u8 x2, u8 y2)
//{
//	u8 t; 
//	int xerr=0,yerr=0,delta_x,delta_y,distance; 
//	int incx,incy,uRow,uCol; 
//	delta_x=x2-x1; //计算坐标增量 
//	delta_y=y2-y1; 
//	uRow=x1; 
//	uCol=y1; 
//	if(delta_x>0)incx=1; //设置单步方向 
//	else if(delta_x==0)incx=0;//垂直线 
//	else {incx=-1;delta_x=-delta_x;} 
//	if(delta_y>0)incy=1; 
//	else if(delta_y==0)incy=0;//水平线 
//	else{incy=-1;delta_y=-delta_y;} 
//	if( delta_x>delta_y)distance=delta_x; //选取基本增量坐标轴 
//	else distance=delta_y; 
//	for(t=0;t<=distance+1;t++ )//画线输出 
//	{  
//		//PutPixel(uRow,uCol);//画点 
//		PutPixel(uRow,uCol,YELLOW);
//		xerr+=delta_x ; 
//		yerr+=delta_y ; 
//		if(xerr>distance) 
//		{ 
//			xerr-=distance; 
//			uRow+=incx; 
//		} 
//		if(yerr>distance) 
//		{ 
//			yerr-=distance; 
//			uCol+=incy; 
//		} 
//	}  
//} 


//画矩形	  
//(x1,y1),(x2,y2):矩形的对角坐标
//void LCD_DrawRectangle(u8 x1, u8 y1, u8 x2, u8 y2)
//{
//	LCD_DrawLine(x1,y1,x2,y1);
//	LCD_DrawLine(x1,y1,x1,y2);
//	LCD_DrawLine(x1,y2,x2,y2);
//	LCD_DrawLine(x2,y1,x2,y2);
//}


//在指定位置画一个指定大小的圆
//(x,y):中心点
//r    :半径
//void LCD_Draw_Circle(u16 x0,u16 y0,u8 r)
//{
//	int a,b;
//	int di;
//	a=0;b=r;	  
//	di=3-(r<<1);             //判断下个点位置的标志
//	while(a<=b)
//	{
//		PutPixel(x0+a,y0-b,YELLOW);             //5
// 		PutPixel(x0+b,y0-a,YELLOW);             //0           
//		PutPixel(x0+b,y0+a,YELLOW);             //4               
//		PutPixel(x0+a,y0+b,YELLOW);             //6 
//		PutPixel(x0-a,y0+b,YELLOW);             //1       
// 		PutPixel(x0-b,y0+a,YELLOW);             
//		PutPixel(x0-a,y0-b,YELLOW);             //2             
//  		PutPixel(x0-b,y0-a,YELLOW);             //7     	         
//		a++;
//		//使用Bresenham算法画圆     
//		if(di<0)di +=4*a+6;	  
//		else
//		{
//			di+=10+4*(a-b);   
//			b--;
//		} 						    
//	}
//} 					

/////////////////////////////////////////////

void LCD_Initial(void)
{	
	GPIO_InitTypeDef GPIO_Initure;
	__HAL_RCC_GPIOB_CLK_ENABLE();   //使能GPIOB时钟
	
#ifdef	USE_SPI
	SPI_Init();
	SPI_SetSpeed(SPI_BAUDRATEPRESCALER_2); //设置为42M时钟,高速模式
	
	//GPIO初始化设置//PB10、11、12、14//14引脚原功能是MISO,实际是REST    
	GPIO_Initure.Pin=GPIO_PIN_10|GPIO_PIN_11|GPIO_PIN_12|GPIO_PIN_14;
    GPIO_Initure.Mode=GPIO_MODE_OUTPUT_PP;	//推挽输出
    GPIO_Initure.Pull=GPIO_PULLUP;        	//上拉
    GPIO_Initure.Speed=GPIO_SPEED_FAST;   	//快速
    HAL_GPIO_Init(GPIOB,&GPIO_Initure);   	//初始化
#else //
	//GPIO初始化设置//PB10、11、12、13、14、15      
	GPIO_Initure.Pin=GPIO_PIN_10|GPIO_PIN_11|GPIO_PIN_12|GPIO_PIN_13|GPIO_PIN_14|GPIO_PIN_15;
    GPIO_Initure.Mode=GPIO_MODE_OUTPUT_PP;	//推挽输出
    GPIO_Initure.Pull=GPIO_PULLUP;        	//上拉
    GPIO_Initure.Speed=GPIO_SPEED_FAST;   	//快速
    HAL_GPIO_Init(GPIOB,&GPIO_Initure);   	//初始化
#endif	
	
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_10,GPIO_PIN_SET); //开背光
	
	RESET_ST7735();//RESET before LCD Init.
		
	//LCD Init For 1.44Inch LCD Panel with ST7735R.
	SPI_Write_Data(0x11,ORDER);//Sleep exit 
	delay_ms (120);
		
	//ST7735R Frame Rate
	SPI_Write_Data(0xB1,ORDER); 
	SPI_Write_Data(0x01,DATA); 
	SPI_Write_Data(0x2C,DATA); 
	SPI_Write_Data(0x2D,DATA); 

	SPI_Write_Data(0xB2,ORDER); 
	SPI_Write_Data(0x01,DATA); 
	SPI_Write_Data(0x2C,DATA); 
	SPI_Write_Data(0x2D,DATA); 

	SPI_Write_Data(0xB3,ORDER); 
	SPI_Write_Data(0x01,DATA); 
	SPI_Write_Data(0x2C,DATA); 
	SPI_Write_Data(0x2D,DATA); 
	SPI_Write_Data(0x01,DATA); 
	SPI_Write_Data(0x2C,DATA); 
	SPI_Write_Data(0x2D,DATA); 
	
	SPI_Write_Data(0xB4,ORDER); //Column inveDCion 
	SPI_Write_Data(0x07,DATA); 
	
	//ST7735R Power Sequence
	SPI_Write_Data(0xC0,ORDER); 
	SPI_Write_Data(0xA2,DATA); 
	SPI_Write_Data(0x02,DATA); 
	SPI_Write_Data(0x84,DATA); 
	SPI_Write_Data(0xC1,ORDER); 
	SPI_Write_Data(0xC5,DATA); 

	SPI_Write_Data(0xC2,ORDER); 
	SPI_Write_Data(0x0A,DATA); 
	SPI_Write_Data(0x00,DATA); 

	SPI_Write_Data(0xC3,ORDER); 
	SPI_Write_Data(0x8A,DATA); 
	SPI_Write_Data(0x2A,DATA); 
	SPI_Write_Data(0xC4,ORDER); 
	SPI_Write_Data(0x8A,DATA); 
	SPI_Write_Data(0xEE,DATA); 
	
	SPI_Write_Data(0xC5,ORDER); //VCOM 
	SPI_Write_Data(0x0E,DATA); 
	
	SPI_Write_Data(0x36,ORDER); //MX, MY, RGB mode 
	SPI_Write_Data(0xC0,DATA); 
#ifdef USE_LANDSCAPE
	SPI_Write_Data(0xA8,DATA); //竖屏C8 横屏08 A8
#else
	SPI_Write_Data(0xC8,DATA); //竖屏C8 横屏08 A8
#endif		
	//ST7735R Gamma Sequence
	SPI_Write_Data(0xe0,ORDER); 
	SPI_Write_Data(0x0f,DATA); 
	SPI_Write_Data(0x1a,DATA); 
	SPI_Write_Data(0x0f,DATA); 
	SPI_Write_Data(0x18,DATA); 
	SPI_Write_Data(0x2f,DATA); 
	SPI_Write_Data(0x28,DATA); 
	SPI_Write_Data(0x20,DATA); 
	SPI_Write_Data(0x22,DATA); 
	SPI_Write_Data(0x1f,DATA); 
	SPI_Write_Data(0x1b,DATA); 
	SPI_Write_Data(0x23,DATA); 
	SPI_Write_Data(0x37,DATA); 
	SPI_Write_Data(0x00,DATA); 	
	SPI_Write_Data(0x07,DATA); 
	SPI_Write_Data(0x02,DATA); 
	SPI_Write_Data(0x10,DATA); 

	SPI_Write_Data(0xe1,ORDER); 
	SPI_Write_Data(0x0f,DATA); 
	SPI_Write_Data(0x1b,DATA); 
	SPI_Write_Data(0x0f,DATA); 
	SPI_Write_Data(0x17,DATA); 
	SPI_Write_Data(0x33,DATA); 
	SPI_Write_Data(0x2c,DATA); 
	SPI_Write_Data(0x29,DATA); 
	SPI_Write_Data(0x2e,DATA); 
	SPI_Write_Data(0x30,DATA); 
	SPI_Write_Data(0x30,DATA); 
	SPI_Write_Data(0x39,DATA); 
	SPI_Write_Data(0x3f,DATA); 
	SPI_Write_Data(0x00,DATA); 
	SPI_Write_Data(0x07,DATA); 
	SPI_Write_Data(0x03,DATA); 
	SPI_Write_Data(0x10,DATA);  
	
	SPI_Write_Data(0x2a,ORDER);
	SPI_Write_Data(0x00,DATA);
	SPI_Write_Data(0x00+2,DATA);
	SPI_Write_Data(0x00,DATA);
	SPI_Write_Data(0x80+2,DATA);

	SPI_Write_Data(0x2b,ORDER);
	SPI_Write_Data(0x00,DATA);
	SPI_Write_Data(0x00+3,DATA);
	SPI_Write_Data(0x00,DATA);
	SPI_Write_Data(0x80+3,DATA);
	
	SPI_Write_Data(0xF0,ORDER); //EnaBLe test command  
	SPI_Write_Data(0x01,DATA); 
	SPI_Write_Data(0xF6,ORDER); //DisaBLe ram power save mode 
	SPI_Write_Data(0x00,DATA); 
	
	SPI_Write_Data(0x3A,ORDER); //65k mode 
	SPI_Write_Data(0x05,DATA); 
	
	
	SPI_Write_Data(0x29,ORDER);//Display on

}
























