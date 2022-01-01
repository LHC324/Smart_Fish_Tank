#include "piclib.h"
#include "bmp.h"
#include "string.h"
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

//��ʹ���ڴ����
#if BMP_USE_MALLOC == 0	
FIL f_bfile;
u8 bmpreadbuf[BMP_DBUF_SIZE];
#endif 				    

//��׼��bmp����,����filename���BMP�ļ�	
//�ٶȱȽ���.��Ҫ	
//filename:����·�����ļ���	       	  			  
//����ֵ:0,�ɹ�;
//		 ����,������.
u8 stdbmp_decode(const u8 *filename) 
{
	FIL* f_bmp;
    u16 br;

    u16 count;		    	   
	u8  rgb ,color_byte;
	u16 x ,y,color;	  
	u16 countpix=0;//��¼���� 	 

	//x,y��ʵ������	
	u16  realx=0;
	u16 realy=0;
	u8  yok=1;  				   
	u8 res;


	u8 *databuf;    		//���ݶ�ȡ��ŵ�ַ
 	u16 readlen=BMP_DBUF_SIZE;//һ�δ�SD����ȡ���ֽ�������

	u8 *bmpbuf;			  	//���ݽ����ַ
	u8 biCompression=0;		//��¼ѹ����ʽ
	
	u16 rowlen;	  		 	//ˮƽ�����ֽ���  
	BITMAPINFO *pbmp;		//��ʱָ��
	
#if BMP_USE_MALLOC == 1	//ʹ��malloc	
	databuf=(u8*)pic_memalloc(readlen);		//����readlen�ֽڵ��ڴ�����
	if(databuf==NULL)return PIC_MEM_ERR;	//�ڴ�����ʧ��.
	f_bmp=(FIL *)pic_memalloc(sizeof(FIL));	//����FIL�ֽڵ��ڴ����� 
	if(f_bmp==NULL)							//�ڴ�����ʧ��.
	{		 
		pic_memfree(databuf);
		return PIC_MEM_ERR;				
	} 	 
#else				 	//��ʹ��malloc
	databuf=bmpreadbuf;
	f_bmp=&f_bfile;
#endif
	res=f_open(f_bmp,(const TCHAR*)filename,FA_READ);//���ļ�	 						  
	if(res==0)//�򿪳ɹ�.
	{ 
		f_read(f_bmp,databuf,readlen,(UINT*)&br);	//����readlen���ֽ�  
		pbmp=(BITMAPINFO*)databuf;					//�õ�BMP��ͷ����Ϣ   
		count=pbmp->bmfHeader.bfOffBits;        	//����ƫ��,�õ����ݶεĿ�ʼ��ַ
		color_byte=pbmp->bmiHeader.biBitCount/8;	//��ɫλ 16/24/32  
		biCompression=pbmp->bmiHeader.biCompression;//ѹ����ʽ
		picinfo.ImgHeight=pbmp->bmiHeader.biHeight;	//�õ�ͼƬ�߶�
		picinfo.ImgWidth=pbmp->bmiHeader.biWidth;  	//�õ�ͼƬ��� 
		ai_draw_init();//��ʼ�����ܻ�ͼ			
		//ˮƽ���ر�����4�ı���!!
		if((picinfo.ImgWidth*color_byte)%4)rowlen=((picinfo.ImgWidth*color_byte)/4+1)*4;
		else rowlen=picinfo.ImgWidth*color_byte;
		//��ʼ����BMP   
		color=0;//��ɫ���	 													 
		x=0 ;
		y=picinfo.ImgHeight;
		rgb=0;      
		//���ڳߴ�С�ڵ����趨�ߴ��ͼƬ,���п��ٽ���
		realy=(y*picinfo.Div_Fac)>>13;
		bmpbuf=databuf;
		while(1)
		{				 
			while(count<readlen)  //��ȡһ��1024���� (SectorsPerClust ÿ��������)
		    {
				if(color_byte==3)   //24λ��ɫͼ
				{
					switch (rgb) 
					{
						case 0:				  
							color=bmpbuf[count]>>3; //B
							break ;	   
						case 1: 	 
							color+=((u16)bmpbuf[count]<<3)&0X07E0;//G
							break;	  
						case 2 : 
							color+=((u16)bmpbuf[count]<<8)&0XF800;//R	  
							break ;			
					}   
				}else if(color_byte==2)  //16λ��ɫͼ
				{
					switch(rgb)
					{
						case 0 : 
							if(biCompression==BI_RGB)//RGB:5,5,5
							{
								color=((u16)bmpbuf[count]&0X1F);	 	//R
								color+=(((u16)bmpbuf[count])&0XE0)<<1; //G
							}else		//RGB:5,6,5
							{
								color=bmpbuf[count];  			//G,B
							}  
							break ;   
						case 1 : 			  			 
							if(biCompression==BI_RGB)//RGB:5,5,5
							{
								color+=(u16)bmpbuf[count]<<9;  //R,G
							}else  		//RGB:5,6,5
							{
								color+=(u16)bmpbuf[count]<<8;	//R,G
							}  									 
							break ;	 
					}		     
				}else if(color_byte==4)//32λ��ɫͼ
				{
					switch (rgb)
					{
						case 0:				  
							color=bmpbuf[count]>>3; //B
							break ;	   
						case 1: 	 
							color+=((u16)bmpbuf[count]<<3)&0X07E0;//G
							break;	  
						case 2 : 
							color+=((u16)bmpbuf[count]<<8)&0XF800;//R	  
							break ;			
						case 3 :
							//alphabend=bmpbuf[count];//����ȡ  ALPHAͨ��
							break ;  		  	 
					}	
				}else if(color_byte==1)//8λɫ,��ʱ��֧��,��Ҫ�õ���ɫ��.
				{
				} 
				rgb++;	  
				count++ ;		  
				if(rgb==color_byte) //ˮƽ�����ȡ��1���������ݺ���ʾ
				{	
					if(x<picinfo.ImgWidth)	 					 			   
					{	
						realx=(x*picinfo.Div_Fac)>>13;//x��ʵ��ֵ
						if(is_element_ok(realx,realy,1)&&yok)//��������
						{						 				 	  	       
							pic_phy.draw_point(realx+picinfo.S_XOFF,realy+picinfo.S_YOFF-1,color);//��ʾͼƬ	
							//POINT_COLOR=color;		 
							//LCD_DrawPoint(realx+picinfo.S_XOFF,realy+picinfo.S_YOFF); 
							//SRAMLCD.Draw_Point(realx+picinfo.S_XOFF,realy+picinfo.S_YOFF,color);
						}   									    
					}
					x++;//x������һ������ 
					color=0x00; 
					rgb=0;  		  
				}
				countpix++;//�����ۼ�
				if(countpix>=rowlen)//ˮƽ��������ֵ����.����
				{		 
					y--; 
					if(y==0)break;			 
					realy=(y*picinfo.Div_Fac)>>13;//ʵ��yֵ�ı�	 
					if(is_element_ok(realx,realy,0))yok=1;//�˴����ı�picinfo.staticx,y��ֵ	 
					else yok=0; 
					x=0; 
					countpix=0;
					color=0x00;
					rgb=0;
				}	 
			} 		
			res=f_read(f_bmp,databuf,readlen,(UINT *)&br);//����readlen���ֽ�
			if(br!=readlen)readlen=br;	//���һ������		  
			if(res||br==0)break;		//��ȡ����
			bmpbuf=databuf;
	 	 	count=0;
		}  
		f_close(f_bmp);//�ر��ļ�
	}  	
#if BMP_USE_MALLOC == 1	//ʹ��malloc	
	pic_memfree(databuf);	 
	pic_memfree(f_bmp);		 
#endif	
	return res;		//BMP��ʾ����.    					   
}		 
//С�ߴ��bmp����,����filename���BMP�ļ�		
//filename:����·�����ļ���
//x,y,width,height:������С
//acolor:���ӵ�alphablend����ɫ(�������32λɫbmp��Ч!!!)
//mode:ģʽ(����bit5,�����ľ�ֻ��32λɫbmp��Ч!!!)
//     bit[7:6]:0,��ʹ��ͼƬ����͵�ɫalphablend;
//              1,��ͼƬ��acolor����alphablend,���Ҳ����ø��ӵ�͸����;
//              2,��ɫ,acolor,ͼƬ,һ�����alphablend;
//	   bit5:����
//     bit4~0:0~31,ʹ�ø���alphablend��͸���̶� 	      	  			  
//����ֵ:0,�ɹ�;
//    ����,������.
u8 minibmp_decode(u8 *filename,u16 x,u16 y,u16 width,u16 height,u16 acolor,u8 mode)//�ߴ�С��240*320��bmpͼƬ����.
{
	FIL* f_bmp;
    u16 br;
	u8  color_byte;
	u16 tx,ty,color;	 
	//tx,ty��ʵ������	
	u8 res;
	u16 i,j;
	u8 *databuf;    		//���ݶ�ȡ��                                                                       �ŵ�ַ
 	u16 readlen=BMP_DBUF_SIZE;//һ�δ�SD����ȡ���ֽ�������,����С��LCD���*3!!!

	u8 *bmpbuf;			  	//���ݽ����ַ
	u8 biCompression=0;		//��¼ѹ����ʽ
	
	u16 rowcnt;				//һ�ζ�ȡ������
	u16 rowlen;	  		 	//ˮƽ�����ֽ���  
	u16 rowpix=0;			//ˮƽ����������	  
	u8 rowadd;				//ÿ������ֽ���

	u16 tmp_color;

	u8 alphabend=0xff;		//����͸��ɫΪ0����ȫ��͸��
	u8 alphamode=mode>>6;	//�õ�ģʽֵ,0/1/2
	BITMAPINFO *pbmp;   	//��ʱָ��		 
	//�õ�����ߴ�
	picinfo.S_Height=height;
	picinfo.S_Width=width;
		
#if BMP_USE_MALLOC == 1	//ʹ��malloc	
	databuf=(u8*)pic_memalloc(readlen);		//����readlen�ֽڵ��ڴ�����
	if(databuf==NULL)return PIC_MEM_ERR;		//�ڴ�����ʧ��.
	f_bmp=(FIL *)pic_memalloc(sizeof(FIL));	//����FIL�ֽڵ��ڴ����� 
	if(f_bmp==NULL)								//�ڴ�����ʧ��.
	{		 
		pic_memfree(databuf);
		return PIC_MEM_ERR;				
	} 	 
#else
	databuf=bmpreadbuf;
	f_bmp=&f_bfile;
#endif
	res=f_open(f_bmp,(const TCHAR*)filename,FA_READ);//���ļ�	 						  
	if(res==0)//�򿪳ɹ�.
	{ 
		f_read(f_bmp,databuf,sizeof(BITMAPINFO),(UINT*)&br);//����BITMAPINFO��Ϣ 
		pbmp=(BITMAPINFO*)databuf;					//�õ�BMP��ͷ����Ϣ   
		color_byte=pbmp->bmiHeader.biBitCount/8;	//��ɫλ 16/24/32  
		biCompression=pbmp->bmiHeader.biCompression;//ѹ����ʽ
		picinfo.ImgHeight=pbmp->bmiHeader.biHeight;	//�õ�ͼƬ�߶�
		picinfo.ImgWidth=pbmp->bmiHeader.biWidth;  	//�õ�ͼƬ���   
		//ˮƽ���ر�����4�ı���!!
		if((picinfo.ImgWidth*color_byte)%4)rowlen=((picinfo.ImgWidth*color_byte)/4+1)*4;
		else rowlen=picinfo.ImgWidth*color_byte;
		rowadd=rowlen-picinfo.ImgWidth*color_byte;	//ÿ������ֽ���
 		//��ʼ����BMP   
		color=0;//��ɫ���	 													 
		tx=0 ;
		ty=picinfo.ImgHeight-1;
		if(picinfo.ImgWidth<=picinfo.S_Width&&picinfo.ImgHeight<=picinfo.S_Height)
		{  							   
			rowcnt=readlen/rowlen;						//һ�ζ�ȡ������
			readlen=rowcnt*rowlen;						//һ�ζ�ȡ���ֽ���
			rowpix=picinfo.ImgWidth;					//ˮƽ���������ǿ�� 
			f_lseek(f_bmp,pbmp->bmfHeader.bfOffBits);	//ƫ�Ƶ�������ʼλ�� 	  
			while(1)
			{	     
				res=f_read(f_bmp,databuf,readlen,(UINT *)&br);	//����readlen���ֽ�
				bmpbuf=databuf;									//�����׵�ַ  
				if(br!=readlen)rowcnt=br/rowlen;				//���ʣ�µ�����
				if(color_byte==3)  			//24λBMPͼƬ
				{
					for(j=0;j<rowcnt;j++)	//ÿ�ζ���������
					{
						for(i=0;i<rowpix;i++)//дһ������
						{
							color=(*bmpbuf++)>>3;		   		 	//B
							color+=((u16)(*bmpbuf++)<<3)&0X07E0;	//G
							color+=(((u16)*bmpbuf++)<<8)&0XF800;	//R
 						 	pic_phy.draw_point(x+tx,y+ty,color);//��ʾͼƬ	
							tx++;
						}
						bmpbuf+=rowadd;//���������
						tx=0;
						ty--;
					}
				}else if(color_byte==2)//16λBMPͼƬ
				{
					for(j=0;j<rowcnt;j++)//ÿ�ζ���������
					{
						if(biCompression==BI_RGB)//RGB:5,5,5
						{
							for(i=0;i<rowpix;i++)
							{
								color=((u16)*bmpbuf&0X1F);			//R
								color+=(((u16)*bmpbuf++)&0XE0)<<1; 	//G
		 						color+=((u16)*bmpbuf++)<<9;  	    //R,G	 
							    pic_phy.draw_point(x+tx,y+ty,color);//��ʾͼƬ	
								tx++;
							}
						}else  //RGB 565
						{
							for(i=0;i<rowpix;i++)
							{											 
								color=*bmpbuf++;  			//G,B
		 						color+=((u16)*bmpbuf++)<<8;	//R,G	 
							  	pic_phy.draw_point(x+tx,y+ty,color);//��ʾͼƬ	
								tx++;
							}
						}
						bmpbuf+=rowadd;//���������
						tx=0;
						ty--;
					}	
				}else if(color_byte==4)		//32λBMPͼƬ
				{
					for(j=0;j<rowcnt;j++)	//ÿ�ζ���������
					{
						for(i=0;i<rowpix;i++)
						{
							color=(*bmpbuf++)>>3;		   		 	//B
							color+=((u16)(*bmpbuf++)<<3)&0X07E0;	//G
							color+=(((u16)*bmpbuf++)<<8)&0XF800;	//R
							alphabend=*bmpbuf++;					//ALPHAͨ��
							if(alphamode!=1) //��Ҫ��ȡ��ɫ
							{
								tmp_color=pic_phy.read_point(x+tx,y+ty);//��ȡ��ɫ		   
							    if(alphamode==2)//��Ҫ���ӵ�alphablend
								{
									tmp_color=piclib_alpha_blend(tmp_color,acolor,mode&0X1F);	//��ָ����ɫ����blend		 
								}
								color=piclib_alpha_blend(tmp_color,color,alphabend/8); 			//�͵�ɫ����alphablend
							}else tmp_color=piclib_alpha_blend(acolor,color,alphabend/8);		//��ָ����ɫ����blend
 							pic_phy.draw_point(x+tx,y+ty,color);//��ʾͼƬ				   
							tx++;//x������һ������ 	  
						}
						bmpbuf+=rowadd;//���������
						tx=0;
						ty--;
					}

				}
				if(br!=readlen||res)break;	 
			}	 
		}	
		f_close(f_bmp);//�ر��ļ�      
	}else res=PIC_SIZE_ERR;//ͼƬ�ߴ����	
#if BMP_USE_MALLOC == 1	//ʹ��malloc	
	pic_memfree(databuf);	 
	pic_memfree(f_bmp);		 
#endif	
	return res;
}            
//BMP���뺯��
//����ǰLCD��Ļ��ָ�������ͼ,��Ϊ16λ��ʽ��BMP�ļ� RGB565��ʽ.
//����Ϊrgb565����Ҫ����,��Ҫ����ԭ���ĵ�ɫ��λ����������.���������Ѿ�����������.
//����Ϊrgb555��ʽ����Ҫ��ɫת��,��ʱ��ȽϾ�,���Ա���Ϊ565������ٵİ취.
//filename:���·��
//x,y:����Ļ�ϵ���ʼ����  
//mode:ģʽ.0,�����������ļ��ķ�ʽ����;1,���֮ǰ�����ļ�,�򸲸�֮ǰ���ļ�.���û��,�򴴽��µ��ļ�.
//����ֵ:0,�ɹ�;����,������.  
u8 bmp_encode(u8 *filename,u16 x,u16 y,u16 width,u16 height,u8 mode)
{				
	FIL* f_bmp;
	u16 bmpheadsize;			//bmpͷ��С	   	
 	BITMAPINFO hbmp;			//bmpͷ	 
	u8 res=0;
	u16 tx,ty;				   	//ͼ��ߴ�
	u16 *databuf;				//���ݻ�������ַ	   	
	u16 pixcnt;				   	//���ؼ�����
	u16 bi4width;		       	//ˮƽ�����ֽ���	   
	if(width==0||height==0)return PIC_WINDOW_ERR;	//�������
	if((x+width-1)>lcddev.width)return PIC_WINDOW_ERR;		//�������
	if((y+height-1)>lcddev.height)return PIC_WINDOW_ERR;	//������� 
 	 
#if BMP_USE_MALLOC == 1	//ʹ��malloc	
	databuf=(u16*)pic_memalloc(1024);		//��������bi4width��С���ֽڵ��ڴ����� ,��240�����,480���ֽھ͹���.
	if(databuf==NULL)return PIC_MEM_ERR;		//�ڴ�����ʧ��.
	f_bmp=(FIL *)pic_memalloc(sizeof(FIL));	//����FIL�ֽڵ��ڴ����� 
	if(f_bmp==NULL)								//�ڴ�����ʧ��.
	{		 
		pic_memfree(databuf);
		return PIC_MEM_ERR;				
	} 	 
#else
	databuf=(u16*)bmpreadbuf;
	f_bmp=&f_bfile;
#endif	      
	bmpheadsize=sizeof(hbmp);//�õ�bmp�ļ�ͷ�Ĵ�С   
	mymemset((u8*)&hbmp,0,sizeof(hbmp));//��������뵽���ڴ�.	    
	hbmp.bmiHeader.biSize=sizeof(BITMAPINFOHEADER);//��Ϣͷ��С
	hbmp.bmiHeader.biWidth=width;	 	//bmp�Ŀ��
	hbmp.bmiHeader.biHeight=height; 	//bmp�ĸ߶�
	hbmp.bmiHeader.biPlanes=1;	 		//��Ϊ1
	hbmp.bmiHeader.biBitCount=16;	 	//bmpΪ16λɫbmp
	hbmp.bmiHeader.biCompression=BI_BITFIELDS;//ÿ�����صı�����ָ�������������
 	hbmp.bmiHeader.biSizeImage=hbmp.bmiHeader.biHeight*hbmp.bmiHeader.biWidth*hbmp.bmiHeader.biBitCount/8;//bmp��������С
 				   
	hbmp.bmfHeader.bfType=((u16)'M'<<8)+'B';//BM��ʽ��־
	hbmp.bmfHeader.bfSize=bmpheadsize+hbmp.bmiHeader.biSizeImage;//����bmp�Ĵ�С
   	hbmp.bmfHeader.bfOffBits=bmpheadsize;//����������ƫ��

	hbmp.RGB_MASK[0]=0X00F800;	 		//��ɫ����
	hbmp.RGB_MASK[1]=0X0007E0;	 		//��ɫ����
	hbmp.RGB_MASK[2]=0X00001F;	 		//��ɫ����

	if(mode==1)res=f_open(f_bmp,(const TCHAR*)filename,FA_READ|FA_WRITE);//���Դ�֮ǰ���ļ�
 	if(mode==0||res==0x04)res=f_open(f_bmp,(const TCHAR*)filename,FA_WRITE|FA_CREATE_NEW);//ģʽ0,���߳��Դ�ʧ��,�򴴽����ļ�		   
 	if((hbmp.bmiHeader.biWidth*2)%4)//ˮƽ����(�ֽ�)��Ϊ4�ı���
	{
		bi4width=((hbmp.bmiHeader.biWidth*2)/4+1)*4;//ʵ��Ҫд��Ŀ������,����Ϊ4�ı���.	
	}else bi4width=hbmp.bmiHeader.biWidth*2;		//�պ�Ϊ4�ı���	 
 	if(res==FR_OK)//�����ɹ�
	{
		res=f_write(f_bmp,(u8*)&hbmp,bmpheadsize,&bw);//д��BMP�ײ�  
		for(ty=y+height-1;hbmp.bmiHeader.biHeight;ty--)
		{
			pixcnt=0;
 			for(tx=x;pixcnt!=(bi4width/2);)
			{
				if(pixcnt<hbmp.bmiHeader.biWidth)databuf[pixcnt]=LCD_ReadPoint(tx,ty);//��ȡ������ֵ 
				else databuf[pixcnt]=0Xffff;//�����ɫ������.  
				pixcnt++;
				tx++;
			}
			hbmp.bmiHeader.biHeight--;
			res=f_write(f_bmp,(u8*)databuf,bi4width,&bw);//д������
		}
		f_close(f_bmp);
	}	    
#if BMP_USE_MALLOC == 1	//ʹ��malloc	
	pic_memfree(databuf);	 
	pic_memfree(f_bmp);		 
#endif	
	return res;
}



















