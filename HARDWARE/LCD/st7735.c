#include "st7735.h"
#include "lcd18font.h"  	   
#include "spi.h"

u16 FOREGROUND=RED;//����ǰ��ɫ��Ĭ�Ϻ�ɫ
u16	BACKGROUND=WHITE;//���屳��ɫ��Ĭ�Ϻ�ɫ

extern void  delay_ms(u16 ms);


void  SPI_Write_Data(u8 dat,u8 index)//��SPI���ߴ���һ��8λ����
{
	u8 i;
	
	CS=0;
	if(index)
		DC=0;//0�����1������
	else
		DC=1;
#ifdef USE_SPI
	SPI_ReadWriteByte(dat);
#else
	
	for(i=8;i>0;i--)
	{
		if(dat&0x80)	
			SDA=1; //�������
		else 
			SDA=0;
		SCL=0;
		SCL=1;
		dat<<=1;
	}
	
#endif
	CS=1;
}


void  SPI_Write_Data_16Bit(u16 Data)//��Һ����дһ��16λ����
{
	SPI_Write_Data(Data>>8,DATA); 	//д���8λ����
	SPI_Write_Data(Data,DATA); 			//д���8λ����
}

u16 SPI_Read_Data_16Bit()//��SPI���߽���һ��16λ����
{
	u8 i;
	u16 dat;
	
	CS=0;
	DC=1; //������

	for(i=16;i>0;i--)
	{
		if(SDA&0x80)	
			dat &=0x01; //�������
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
#ifdef USE_LANDSCAPE//ʹ�ú���ģʽ
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

#else//����ģʽ	
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



//��ָ��λ����ʾһ���ַ�
//x,y:��ʼ����
//num:Ҫ��ʾ���ַ�:" "--->"~"
//siz:�����С 12/16/24
//mode:���ӷ�ʽ(1)���Ƿǵ��ӷ�ʽ(0)
void LCD_ShowChar(u8 x,u8 y,u8 num,u8 siz,u8 mode)
{  							  
    u8 temp,t1,t;
	u8 y0=y;
	u8 csiz=(siz/8+((siz%8)?1:0))*(siz/2);		//�õ�����һ���ַ���Ӧ������ռ���ֽ���	
 	num=num-' ';//�õ�ƫ�ƺ��ֵ��ASCII�ֿ��Ǵӿո�ʼȡģ������-' '���Ƕ�Ӧ�ַ����ֿ⣩
	for(t=0;t<csiz;t++)
	{   
		if(siz==12)temp=asc2_1206[num][t]; 	 	//����1206����
		else if(siz==16)temp=asc2_1608[num][t];	//����1608����
		else if(siz==24)temp=asc2_2412[num][t];	//����2412����
		else return;								//û�е��ֿ�
		for(t1=0;t1<8;t1++)
		{			    
			if(temp&0x80)
				PutPixel(x,y,FOREGROUND);
			else if(mode==0)
				PutPixel(x,y,BACKGROUND);
			temp<<=1;
			y++;
			if(y>=160)return;		//��������
			if((y-y0)==siz)
			{
				y=y0;
				x++;
				if(x>=128)return;	//��������
				break;
			}
		}  	 
	}  	    	   	 	  
} 

//��ʾ�ַ���
//x,y:�������
//width,height:�����С  
//siz:�����С
//*p:�ַ�����ʼ��ַ		  
void LCD_ShowString(u8 x,u8 y,u8 width,u8 height,u8 siz,u8 *p)
{         
	u8 x0=x;
	width+=x;
	height+=y;
    while((*p<='~')&&(*p>=' '))//�ж��ǲ��ǷǷ��ַ�!
    {       
        if(x>=width){x=x0;y+=siz;}
        if(y>=height)break;//�˳�
        LCD_ShowChar(x,y,*p,siz,0);
        x+=siz/2;
        p++;
    }  
}


//m^n����
//����ֵ:m^n�η�.
u32 LCD_Pow(u8 m,u8 n)
{
	u32 result=1;	 
	while(n--)result*=m;    
	return result;
}


//��ʾ����,��λΪ0,����ʾ
//x,y :�������	 
//len :���ֵ�λ��
//siz:�����С
//color:��ɫ 
//num:��ֵ(0~4294967295);	 
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
				LCD_ShowChar(x+(siz/2)*t,y,' ',siz,0); //0�ǵ���ģʽ
				continue;
			}else enshow=1; 
		 	 
		}
	 	LCD_ShowChar(x+(siz/2)*t,y,temp+'0',siz,0); 
	}
} 

//��ʾ����,��λΪ0,������ʾ
//x,y:�������
//num:��ֵ(0~999999999);	 
//len:����(��Ҫ��ʾ��λ��)
//siz:�����С
//mode:
//[7]:0,�����;1,���0.
//[6:1]:����
//[0]:0,�ǵ�����ʾ;1,������ʾ.
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

//��ָ����������䵥����ɫ
//(sx,sy),(ex,ey):�����ζԽ�����,�����СΪ:(ex-sx+1)*(ey-sy+1)   
//color:Ҫ������ɫ
void Lcd_Fill(u8 sx,u8 sy,u8 ex,u8 ey,u16 color)
{          
	u8 i,j;
	u8 xlen=0; 
	xlen=ex-sx+1;	 
	for(i=sy;i<=ey;i++)
	{
		Lcd_SetRegion(sx,i,sx+1,i+1);//���ù��λ�� 
		for(j=0;j<xlen;j++)
			SPI_Write_Data_16Bit(color); //��ʾ��ɫ 
//		PutPixel(sx,i,BACKGROUND);
	}  
}  


//��ָ�����������ָ����ɫ��			 
//(sx,sy),(ex,ey):�����ζԽ�����,�����СΪ:(ex-sx+1)*(ey-sy+1)   
//color:Ҫ������ɫ
void Lcd_Color_Fill(u8 sx,u8 sy,u8 ex,u8 ey,u16 *color)
{  
	u8 height,width;
	u8 i,j;
	width=ex-sx+1; 			//�õ����Ŀ��
	height=ey-sy+1;			//�߶�
 	for(i=0;i<height;i++)
	{
		Lcd_SetRegion(sx,sy+i,sx+1,sy+i+1); //���ù��λ�� 
		for(j=0;j<width;j++)
			SPI_Write_Data_16Bit(color[i*width+j]); //д������ 
//			LCD->LCD_RAM=color[i*width+j]; 
	}		  
}


//��ȡ��ĳ�����ɫֵ	 
//x,y:����
//����ֵ:�˵����ɫ
u16 Lcd_Read_Point(u8 x,u8 y)
{
 	u16 r=0,g=0,b=0;
	if(x>=WIDTH||y>=HEIGHT)return 0;	//�����˷�Χ,ֱ�ӷ��� 
	Lcd_SetRegion(x,y,x+1,y+1);	    
 	SPI_Write_Data(0x2e,ORDER); //7735���Ͷ�GRAMָ��
	
	r=SPI_Read_Data_16Bit();//��SPI���߽���һ��16λ����				   
	delay_ms(2);	  
 	r=SPI_Read_Data_16Bit(); //ʵ��������ɫ 		  						
	delay_ms(2); //9341/NT35310/NT35510Ҫ��2�ζ��� 	                                   
	b=SPI_Read_Data_16Bit(); 
	g=r&0XFF;		//����9341/5310/5510,��һ�ζ�ȡ����RG��ֵ,R��ǰ,G�ں�,��ռ8λ
	g<<=8; 
	return (((r>>11)<<11)|((g>>10)<<5)|(b>>11));	//ILI9341/NT35310/NT35510��Ҫ��ʽת��һ��
}			 


//����
//x1,y1:�������
//x2,y2:�յ�����  
//void LCD_DrawLine(u8 x1, u8 y1, u8 x2, u8 y2)
//{
//	u8 t; 
//	int xerr=0,yerr=0,delta_x,delta_y,distance; 
//	int incx,incy,uRow,uCol; 
//	delta_x=x2-x1; //������������ 
//	delta_y=y2-y1; 
//	uRow=x1; 
//	uCol=y1; 
//	if(delta_x>0)incx=1; //���õ������� 
//	else if(delta_x==0)incx=0;//��ֱ�� 
//	else {incx=-1;delta_x=-delta_x;} 
//	if(delta_y>0)incy=1; 
//	else if(delta_y==0)incy=0;//ˮƽ�� 
//	else{incy=-1;delta_y=-delta_y;} 
//	if( delta_x>delta_y)distance=delta_x; //ѡȡ�������������� 
//	else distance=delta_y; 
//	for(t=0;t<=distance+1;t++ )//������� 
//	{  
//		//PutPixel(uRow,uCol);//���� 
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


//������	  
//(x1,y1),(x2,y2):���εĶԽ�����
//void LCD_DrawRectangle(u8 x1, u8 y1, u8 x2, u8 y2)
//{
//	LCD_DrawLine(x1,y1,x2,y1);
//	LCD_DrawLine(x1,y1,x1,y2);
//	LCD_DrawLine(x1,y2,x2,y2);
//	LCD_DrawLine(x2,y1,x2,y2);
//}


//��ָ��λ�û�һ��ָ����С��Բ
//(x,y):���ĵ�
//r    :�뾶
//void LCD_Draw_Circle(u16 x0,u16 y0,u8 r)
//{
//	int a,b;
//	int di;
//	a=0;b=r;	  
//	di=3-(r<<1);             //�ж��¸���λ�õı�־
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
//		//ʹ��Bresenham�㷨��Բ     
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
	__HAL_RCC_GPIOB_CLK_ENABLE();   //ʹ��GPIOBʱ��
	
#ifdef	USE_SPI
	SPI_Init();
	SPI_SetSpeed(SPI_BAUDRATEPRESCALER_2); //����Ϊ42Mʱ��,����ģʽ
	
	//GPIO��ʼ������//PB10��11��12��14//14����ԭ������MISO,ʵ����REST    
	GPIO_Initure.Pin=GPIO_PIN_10|GPIO_PIN_11|GPIO_PIN_12|GPIO_PIN_14;
    GPIO_Initure.Mode=GPIO_MODE_OUTPUT_PP;	//�������
    GPIO_Initure.Pull=GPIO_PULLUP;        	//����
    GPIO_Initure.Speed=GPIO_SPEED_FAST;   	//����
    HAL_GPIO_Init(GPIOB,&GPIO_Initure);   	//��ʼ��
#else //
	//GPIO��ʼ������//PB10��11��12��13��14��15      
	GPIO_Initure.Pin=GPIO_PIN_10|GPIO_PIN_11|GPIO_PIN_12|GPIO_PIN_13|GPIO_PIN_14|GPIO_PIN_15;
    GPIO_Initure.Mode=GPIO_MODE_OUTPUT_PP;	//�������
    GPIO_Initure.Pull=GPIO_PULLUP;        	//����
    GPIO_Initure.Speed=GPIO_SPEED_FAST;   	//����
    HAL_GPIO_Init(GPIOB,&GPIO_Initure);   	//��ʼ��
#endif	
	
	HAL_GPIO_WritePin(GPIOB,GPIO_PIN_10,GPIO_PIN_SET); //������
	
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
	SPI_Write_Data(0xA8,DATA); //����C8 ����08 A8
#else
	SPI_Write_Data(0xC8,DATA); //����C8 ����08 A8
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
























