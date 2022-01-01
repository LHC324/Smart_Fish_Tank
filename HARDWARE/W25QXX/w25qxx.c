#include "w25qxx.h"
#include "spi.h"
#include "delay.h"
#include "usart.h"
#include "stm32f4xx_hal_gpio.h"
//2^24=16M,2^32=4G��256�ļĴ�����3����128������ֻ��1��	
//�и����https://wenku.baidu.com/view/e82087157ed5360cba1aa8114431b90d6c8589b7.html#
u16 W25QXX_TYPE=W25Q64;	//Ĭ����W25Q64

//4KbytesΪһ��Sector
//16������Ϊ1��Block
//W25Q64
//����Ϊ8M�ֽ�,����128��Block,2048��Sector 
													 
//��ʼ��SPI FLASH��IO��
void W25QXX_Init(void)
{ 
//    u8 temp;
    GPIO_InitTypeDef GPIO_Initure;
    
    __HAL_RCC_GPIOB_CLK_ENABLE();           //ʹ��GPIOBʱ��
    
    //PB0
    GPIO_Initure.Pin=GPIO_PIN_0;            //PB0
    GPIO_Initure.Mode=GPIO_MODE_OUTPUT_PP;  //�������
    GPIO_Initure.Pull=GPIO_PULLUP;          //����
    GPIO_Initure.Speed=GPIO_SPEED_FAST;     //����         
    HAL_GPIO_Init(GPIOB,&GPIO_Initure);     //��ʼ��
    
	W25QXX_CS=1;			                //SPI FLASH��ѡ��
	SPI_Init();		   			        //��ʼ��SPI
	SPI_SetSpeed(SPI_BAUDRATEPRESCALER_2); //����Ϊ42Mʱ��,����ģʽ
	W25QXX_TYPE=W25QXX_ReadID();	        //��ȡFLASH ID.
//    if(W25QXX_TYPE==W25Q256)                //SPI FLASHΪW25Q256
//    {
//        temp=W25QXX_ReadSR(3);              //��ȡ״̬�Ĵ���3���жϵ�ַģʽ
//        if((temp&0X01)==0)			        //�������4�ֽڵ�ַģʽ,�����4�ֽڵ�ַģʽ
//		{
//			W25QXX_CS=0; 			        //ѡ��
//			SPI_ReadWriteByte(W25X_Enable4ByteAddr);//���ͽ���4�ֽڵ�ַģʽָ��   
//			W25QXX_CS=1;       		        //ȡ��Ƭѡ   
//		}
//    }
}  


//��ȡW25QXX��״̬�Ĵ���
//BIT7  6   5   4   3   2   1   0
//SPR   RV  TB BP2 BP1 BP0 WEL BUSY
//SPR:Ĭ��0,״̬�Ĵ�������λ,���WPʹ��
//TB,BP2,BP1,BP0:FLASH����д��������
//WEL:дʹ������
//BUSY:æ���λ(1,æ;0,����)
//Ĭ��:0x00
u8 W25QXX_ReadSR(void)   
{  
	u8 byte=0;   
	W25QXX_CS=0;                            //ʹ������   
	SPI_ReadWriteByte(W25X_ReadStatusReg1);    //���Ͷ�ȡ״̬�Ĵ�������    
	byte=SPI_ReadWriteByte(0Xff);             //��ȡһ���ֽ�  
	W25QXX_CS=1;                            //ȡ��Ƭѡ     
	return byte;   
} 
//дW25QXX״̬�Ĵ���
//ֻ��SPR,TB,BP2,BP1,BP0(bit 7,5,4,3,2)����д!!!
void W25QXX_Write_SR(u8 sr)   
{   
	W25QXX_CS=0;                            //ʹ������   
	SPI_ReadWriteByte(W25X_ReadStatusReg1);   //����дȡ״̬�Ĵ�������    
	SPI_ReadWriteByte(sr);               //д��һ���ֽ�  
	W25QXX_CS=1;                            //ȡ��Ƭѡ     	      
}   

//��ȡW25QXX��״̬�Ĵ�����W25QXXһ����3��״̬�Ĵ���
//״̬�Ĵ���1��
//BIT7  6   5   4   3   2   1   0
//SPR   RV  TB BP2 BP1 BP0 WEL BUSY
//SPR:Ĭ��0,״̬�Ĵ�������λ,���WPʹ��
//TB,BP2,BP1,BP0:FLASH����д��������
//WEL:дʹ������
//BUSY:æ���λ(1,æ;0,����)
//Ĭ��:0x00
//״̬�Ĵ���2��
//BIT7  6   5   4   3   2   1   0
//SUS   CMP LB3 LB2 LB1 (R) QE  SRP1
//״̬�Ĵ���3��
//BIT7      6    5    4   3   2   1   0
//HOLD/RST  DRV1 DRV0 (R) (R) WPS ADP ADS
//regno:״̬�Ĵ����ţ���:1~3
//����ֵ:״̬�Ĵ���ֵ
//u8 W25QXX_ReadSR(u8 regno)   
//{  
//	u8 byte=0,command=0; 
//    switch(regno)
//    {
//        case 1:
//            command=W25X_ReadStatusReg1;    //��״̬�Ĵ���1ָ��
//            break;
//        case 2:
//            command=W25X_ReadStatusReg2;    //��״̬�Ĵ���2ָ��
//            break;
//        case 3:
//            command=W25X_ReadStatusReg3;    //��״̬�Ĵ���3ָ��
//            break;
//        default:
//            command=W25X_ReadStatusReg1;    
//            break;
//    }    
//	W25QXX_CS=0;                            //ʹ������   
//	SPI_ReadWriteByte(command);            //���Ͷ�ȡ״̬�Ĵ�������    
//	byte=SPI_ReadWriteByte(0Xff);          //��ȡһ���ֽ�  
//	W25QXX_CS=1;                            //ȡ��Ƭѡ     
//	return byte;   
//} 
////дW25QXX״̬�Ĵ���
//void W25QXX_Write_SR(u8 regno,u8 sr)   
//{   
//    u8 command=0;
//    switch(regno)
//    {
//        case 1:
//            command=W25X_WriteStatusReg1;    //д״̬�Ĵ���1ָ��
//            break;
//        case 2:
//            command=W25X_WriteStatusReg2;    //д״̬�Ĵ���2ָ��
//            break;
//        case 3:
//            command=W25X_WriteStatusReg3;    //д״̬�Ĵ���3ָ��
//            break;
//        default:
//            command=W25X_WriteStatusReg1;    
//            break;
//    }   
//	W25QXX_CS=0;                            //ʹ������   
//	SPI_ReadWriteByte(command);            //����дȡ״̬�Ĵ�������    
//	SPI_ReadWriteByte(sr);                 //д��һ���ֽ�  
//	W25QXX_CS=1;                            //ȡ��Ƭѡ     	      
//}   
//W25QXXдʹ��	
//��WEL��λ   
void W25QXX_Write_Enable(void)   
{
	W25QXX_CS=0;                            //ʹ������   
    SPI_ReadWriteByte(W25X_WriteEnable);   //����дʹ��  
	W25QXX_CS=1;                            //ȡ��Ƭѡ     	      
} 
//W25QXXд��ֹ	
//��WEL����  
void W25QXX_Write_Disable(void)   
{  
	W25QXX_CS=0;                            //ʹ������   
    SPI_ReadWriteByte(W25X_WriteDisable);  //����д��ָֹ��    
	W25QXX_CS=1;                            //ȡ��Ƭѡ     	      
} 

//��ȡоƬID
//����ֵ����:				   
//0XEF13,��ʾоƬ�ͺ�ΪW25Q80  
//0XEF14,��ʾоƬ�ͺ�ΪW25Q16    
//0XEF15,��ʾоƬ�ͺ�ΪW25Q32  
//0XEF16,��ʾоƬ�ͺ�ΪW25Q64 
//0XEF17,��ʾоƬ�ͺ�ΪW25Q128 	  
//0XEF18,��ʾоƬ�ͺ�ΪW25Q256
u16 W25QXX_ReadID(void)
{
	u16 Temp = 0;	  
	W25QXX_CS=0;				    
	SPI_ReadWriteByte(0x90);//���Ͷ�ȡID����	    
	SPI_ReadWriteByte(0x00); 	    
	SPI_ReadWriteByte(0x00); 	    
	SPI_ReadWriteByte(0x00); 	 			   
	Temp|=SPI_ReadWriteByte(0xFF)<<8;  
	Temp|=SPI_ReadWriteByte(0xFF);	 
	W25QXX_CS=1;				    
	return Temp;
}   		    
//��ȡSPI FLASH  
//��ָ����ַ��ʼ��ȡָ�����ȵ�����
//pBuffer:���ݴ洢��
//ReadAddr:��ʼ��ȡ�ĵ�ַ(24bit)
//NumByteToRead:Ҫ��ȡ���ֽ���(���65535)
void W25QXX_Read(u8* pBuffer,u32 ReadAddr,u16 NumByteToRead)   
{ 
 	u16 i;   										    
	W25QXX_CS=0;                            //ʹ������   
    SPI_ReadWriteByte(W25X_ReadData);      //���Ͷ�ȡ����  
//    if(W25QXX_TYPE==W25Q256)                //�����W25Q256�Ļ���ַΪ4�ֽڵģ�Ҫ�������8λ
//    {
//        SPI_ReadWriteByte((u8)((ReadAddr)>>24));    
//    }
    SPI_ReadWriteByte((u8)((ReadAddr)>>16));   //����24bit��ַ    
    SPI_ReadWriteByte((u8)((ReadAddr)>>8));   
    SPI_ReadWriteByte((u8)ReadAddr);   
    for(i=0;i<NumByteToRead;i++)
	{ 
        pBuffer[i]=SPI_ReadWriteByte(0XFF);    //ѭ������  
    }
	W25QXX_CS=1;  				    	      
}  
//SPI��һҳ(0~65535)��д������256���ֽڵ�����
//��ָ����ַ��ʼд�����256�ֽڵ�����
//pBuffer:���ݴ洢��
//WriteAddr:��ʼд��ĵ�ַ(24bit)
//NumByteToWrite:Ҫд����ֽ���(���256),������Ӧ�ó�����ҳ��ʣ���ֽ���!!!	 
void W25QXX_Write_Page(u8* pBuffer,u32 WriteAddr,u16 NumByteToWrite)
{
 	u16 i;  
    W25QXX_Write_Enable();                  //SET WEL 
	W25QXX_CS=0;                            //ʹ������   
    SPI_ReadWriteByte(W25X_PageProgram);   //����дҳ����   
//    if(W25QXX_TYPE==W25Q256)                //�����W25Q256�Ļ���ַΪ4�ֽڵģ�Ҫ�������8λ
//    {
//        SPI_ReadWriteByte((u8)((WriteAddr)>>24)); 
//    }
    SPI_ReadWriteByte((u8)((WriteAddr)>>16)); //����24bit��ַ    
    SPI_ReadWriteByte((u8)((WriteAddr)>>8));   
    SPI_ReadWriteByte((u8)WriteAddr);   
    for(i=0;i<NumByteToWrite;i++)SPI_ReadWriteByte(pBuffer[i]);//ѭ��д��  
	W25QXX_CS=1;                            //ȡ��Ƭѡ 
	W25QXX_Wait_Busy();					   //�ȴ�д�����
} 
//�޼���дSPI FLASH 
//����ȷ����д�ĵ�ַ��Χ�ڵ�����ȫ��Ϊ0XFF,�����ڷ�0XFF��д������ݽ�ʧ��!
//�����Զ���ҳ���� 
//��ָ����ַ��ʼд��ָ�����ȵ�����,����Ҫȷ����ַ��Խ��!
//pBuffer:���ݴ洢��
//WriteAddr:��ʼд��ĵ�ַ(24bit)
//NumByteToWrite:Ҫд����ֽ���(���65535)
//CHECK OK
void W25QXX_Write_NoCheck(u8* pBuffer,u32 WriteAddr,u16 NumByteToWrite)   
{ 			 		 
	u16 pageremain;	   
	pageremain=256-WriteAddr%256; //��ҳʣ����ֽ���		 	    
	if(NumByteToWrite<=pageremain)pageremain=NumByteToWrite;//������256���ֽ�
	while(1)
	{	   
		W25QXX_Write_Page(pBuffer,WriteAddr,pageremain);
		if(NumByteToWrite==pageremain)break;//д�������
	 	else //NumByteToWrite>pageremain
		{
			pBuffer+=pageremain;
			WriteAddr+=pageremain;	

			NumByteToWrite-=pageremain;			  //��ȥ�Ѿ�д���˵��ֽ���
			if(NumByteToWrite>256)pageremain=256; //һ�ο���д��256���ֽ�
			else pageremain=NumByteToWrite; 	  //����256���ֽ���
		}
	};	    
} 
//дSPI FLASH  
//��ָ����ַ��ʼд��ָ�����ȵ�����
//�ú�������������!
//pBuffer:���ݴ洢��
//WriteAddr:��ʼд��ĵ�ַ(24bit)						
//NumByteToWrite:Ҫд����ֽ���(���65535)   
u8 W25QXX_BUFFER[4096];		 
void W25QXX_Write(u8* pBuffer,u32 WriteAddr,u16 NumByteToWrite)   
{ 
	u32 secpos;
	u16 secoff;
	u16 secremain;	   
 	u16 i;    
	u8 * W25QXX_BUF;	  
   	W25QXX_BUF=W25QXX_BUFFER;	     
 	secpos=WriteAddr/4096;//������ַ  
	secoff=WriteAddr%4096;//�������ڵ�ƫ��
	secremain=4096-secoff;//����ʣ��ռ��С   
 	printf("ad:%X,nb:%X\r\n",WriteAddr,NumByteToWrite);//������
 	if(NumByteToWrite<=secremain)secremain=NumByteToWrite;//������4096���ֽ�
	while(1) 
	{	
		W25QXX_Read(W25QXX_BUF,secpos*4096,4096);//������������������
		for(i=0;i<secremain;i++)//У������
		{
			if(W25QXX_BUF[secoff+i]!=0XFF)break;//��Ҫ���� 
//			printf("%X\r\n",W25QXX_BUF[secoff+i]);//������
		}
		if(i<secremain)//��Ҫ����
		{
			W25QXX_Erase_Sector(secpos);//�����������
			for(i=0;i<secremain;i++)	   //����
			{
				W25QXX_BUF[i+secoff]=pBuffer[i];	  
			}
			W25QXX_Write_NoCheck(W25QXX_BUF,secpos*4096,4096);//д���������� 
			printf("nochek1!\n");

		}else
			W25QXX_Write_NoCheck(pBuffer,WriteAddr,secremain);//д�Ѿ������˵�,ֱ��д������ʣ������. 
				printf("nochek2!\n");
		if(NumByteToWrite==secremain)break;//д�������
		else//д��δ����
		{
			secpos++;//������ַ��1
			secoff=0;//ƫ��λ��Ϊ0 	 

		   	pBuffer+=secremain;  //ָ��ƫ��
			WriteAddr+=secremain;//д��ַƫ��	   
		   	NumByteToWrite-=secremain;				//�ֽ����ݼ�
			if(NumByteToWrite>4096)secremain=4096;	//��һ����������д����
			else secremain=NumByteToWrite;			//��һ����������д����
		}
			printf("NO!\n");
	}	 
}
//��������оƬ		  
//�ȴ�ʱ�䳬��...
void W25QXX_Erase_Chip(void)   
{                                   
    W25QXX_Write_Enable();                  //SET WEL 
    W25QXX_Wait_Busy();   
  	W25QXX_CS=0;                            //ʹ������   
    SPI_ReadWriteByte(W25X_ChipErase);        //����Ƭ��������  
	W25QXX_CS=1;                            //ȡ��Ƭѡ     	      
	W25QXX_Wait_Busy();   				   //�ȴ�оƬ��������
}   
//����һ������
//Dst_Addr:������ַ ����ʵ����������
//����һ������������ʱ��:150ms
void W25QXX_Erase_Sector(u32 Dst_Addr)   
{  
	//����falsh�������,������   
 	printf("fe:%x\r\n",Dst_Addr);	  
 	Dst_Addr*=4096;
    W25QXX_Write_Enable();                  //SET WEL 	 
    W25QXX_Wait_Busy();   
  	W25QXX_CS=0;                            //ʹ������   
    SPI_ReadWriteByte(W25X_SectorErase);   //������������ָ�� 
//    if(W25QXX_TYPE==W25Q128)                //�����W25Q256�Ļ���ַΪ4�ֽڵģ�Ҫ�������8λ
//    {
//        SPI_ReadWriteByte((u8)((Dst_Addr)>>24)); 
//    }
    SPI_ReadWriteByte((u8)((Dst_Addr)>>16));  //����24bit��ַ    
    SPI_ReadWriteByte((u8)((Dst_Addr)>>8));   
    SPI_ReadWriteByte((u8)Dst_Addr);  
	W25QXX_CS=1;                            //ȡ��Ƭѡ     	      
    W25QXX_Wait_Busy();   				    //�ȴ��������
}  
//�ȴ�����
void W25QXX_Wait_Busy(void)   
{   
	while((W25QXX_ReadSR()&0x01)==0x01);   // �ȴ�BUSYλ���
}  
//�������ģʽ
void W25QXX_PowerDown(void)   
{ 
  	W25QXX_CS=0;                            //ʹ������   
    SPI_ReadWriteByte(W25X_PowerDown);     //���͵�������  
	W25QXX_CS=1;                            //ȡ��Ƭѡ     	      
    delay_us(3);                            //�ȴ�TPD  
}   
//����
void W25QXX_WAKEUP(void)   
{  
  	W25QXX_CS=0;                                //ʹ������   
    SPI_ReadWriteByte(W25X_ReleasePowerDown);  //  send W25X_PowerDown command 0xAB    
	W25QXX_CS=1;                                //ȡ��Ƭѡ     	      
    delay_us(3);                                //�ȴ�TRES1
}   
