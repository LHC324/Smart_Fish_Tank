#ifndef __BMP_H__
#define __BMP_H__
#include "sys.h"
//////////////////////////////////////////////////////////////////////////////////	 
//������ֻ��ѧϰʹ�ã�δ��������ɣ��������������κ���;
//ALIENTEK STM32F407������
//ͼƬ���� ��������-bmp���벿��	   
//����ԭ��@ALIENTEK
//������̳:www.openedv.com
//��������:2014/5/15
//�汾��V1.0
//��Ȩ���У�����ؾ���
//Copyright(C) ������������ӿƼ����޹�˾ 2014-2024
//All rights reserved
//********************************************************************************
//����˵�� 
//��
//////////////////////////////////////////////////////////////////////////////////
					    
//////////////////////////////////////////�û�������///////////////////////////////
#define BMP_USE_MALLOC		1 		//�����Ƿ�ʹ��malloc,��������ѡ��ʹ��malloc
#define BMP_DBUF_SIZE		2048	//����bmp��������Ĵ�С(����ӦΪLCD���*3)
//////////////////////////////////////////////END/////////////////////////////////

//BMP��Ϣͷ
typedef __packed struct
{
    u32 biSize ;		   	//˵��BITMAPINFOHEADER�ṹ����Ҫ��������
    long  biWidth ;		   	//˵��ͼ��Ŀ�ȣ�������Ϊ��λ 
    long  biHeight ;	   	//˵��ͼ��ĸ߶ȣ�������Ϊ��λ 
    u16  biPlanes ;	   		//ΪĿ���豸˵��λ��������ֵ�����Ǳ���Ϊ1 
    u16  biBitCount ;	   	//˵��������/���أ���ֵΪ1��4��8��16��24����32
    u32 biCompression ;  	//˵��ͼ������ѹ�������͡���ֵ����������ֵ֮һ��
	//BI_RGB��û��ѹ����
	//BI_RLE8��ÿ������8���ص�RLEѹ�����룬ѹ����ʽ��2�ֽ����(�ظ����ؼ�������ɫ����)��  
    //BI_RLE4��ÿ������4���ص�RLEѹ�����룬ѹ����ʽ��2�ֽ����
  	//BI_BITFIELDS��ÿ�����صı�����ָ�������������
    u32 biSizeImage ;		//˵��ͼ��Ĵ�С�����ֽ�Ϊ��λ������BI_RGB��ʽʱ��������Ϊ0  
    long  biXPelsPerMeter ;	//˵��ˮƽ�ֱ��ʣ�������/�ױ�ʾ
    long  biYPelsPerMeter ;	//˵����ֱ�ֱ��ʣ�������/�ױ�ʾ
    u32 biClrUsed ;	  	 	//˵��λͼʵ��ʹ�õĲ�ɫ���е���ɫ������
    u32 biClrImportant ; 	//˵����ͼ����ʾ����ҪӰ�����ɫ��������Ŀ�������0����ʾ����Ҫ�� 
}BITMAPINFOHEADER ;
//BMPͷ�ļ�
typedef __packed struct
{
    u16  bfType ;     //�ļ���־.ֻ��'BM',����ʶ��BMPλͼ����
    u32  bfSize ;	  //�ļ���С,ռ�ĸ��ֽ�
    u16  bfReserved1 ;//����
    u16  bfReserved2 ;//����
    u32  bfOffBits ;  //���ļ���ʼ��λͼ����(bitmap data)��ʼ֮��ĵ�ƫ����
}BITMAPFILEHEADER ;
//��ɫ�� 
typedef __packed struct 
{
    u8 rgbBlue ;    //ָ����ɫǿ��
    u8 rgbGreen ;	//ָ����ɫǿ�� 
    u8 rgbRed ;	  	//ָ����ɫǿ�� 
    u8 rgbReserved ;//����������Ϊ0 
}RGBQUAD ;
//λͼ��Ϣͷ
typedef __packed struct
{ 
	BITMAPFILEHEADER bmfHeader;
	BITMAPINFOHEADER bmiHeader;  
	u32 RGB_MASK[3];			//��ɫ�����ڴ��RGB����.
	//RGBQUAD bmiColors[256];  
}BITMAPINFO; 
typedef RGBQUAD * LPRGBQUAD;//��ɫ��  

//ͼ������ѹ��������
#define BI_RGB	 		0  //û��ѹ��.RGB 5,5,5.
#define BI_RLE8 		1  //ÿ������8���ص�RLEѹ�����룬ѹ����ʽ��2�ֽ����(�ظ����ؼ�������ɫ����)��
#define BI_RLE4 		2  //ÿ������4���ص�RLEѹ�����룬ѹ����ʽ��2�ֽ����
#define BI_BITFIELDS 	3  //ÿ�����صı�����ָ�������������  
		       
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//BMP����뺯��
u8 stdbmp_decode(const u8 *filename);
u8 minibmp_decode(u8 *filename,u16 x,u16 y,u16 width,u16 height,u16 acolor,u8 mode);//�ߴ�С��240*320��bmpͼƬ����.
u8 bmp_encode(u8 *filename,u16 x,u16 y,u16 width,u16 height,u8 mode);
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#endif








