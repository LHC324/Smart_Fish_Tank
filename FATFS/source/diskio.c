/*-----------------------------------------------------------------------*/
/* Low level disk I/O module skeleton for FatFs     (C)ChaN, 2019        */
/*-----------------------------------------------------------------------*/
/* If a working storage control module is available, it should be        */
/* attached to the FatFs via a glue function rather than modifying it.   */
/* This is an example of glue functions to attach various exsisting      */
/* storage control modules to the FatFs module with a defined API.       */
/*-----------------------------------------------------------------------*/

#include "ff.h"			/* Obtains integer types */
#include "diskio.h"		/* Declarations of disk functions */

#include "sdio_sdcard.h"
#include "w25qxx.h"
#include "malloc.h"	 	 
#include "rtc.h" //����ϵͳʱ��Դ

//RTC_TimeTypeDef RTC_TimeStruct; //ʱ����Ϣ�ṹ�����
//RTC_DateTypeDef RTC_DateStruct;

#define SD_CARD	 	0  			//SD��,���Ϊ0
#define EX_FLASH 	1			//�ⲿspi flash,���Ϊ1

#define FLASH_SECTOR_SIZE 	512	//8*1024*1024/512=8*2048

//����W25Q64
//ǰ4M�ֽڸ�fatfs��,4M�ֽں�,���ڴ���ֿ�,�ֿ�ռ��3.09M.	ʣ�ಿ��,���ͻ��Լ���	 			    
u16	    FLASH_SECTOR_COUNT=2048*4;	//W25Q64,ǰ4M�ֽڸ�FATFSռ��
#define FLASH_BLOCK_SIZE   	8     	//ÿ��BLOCK��8������(ԭ��ÿ������4K,����ÿ������512������8��)
  
 
//��ô���״̬
DSTATUS disk_status (
	BYTE pdrv		/* Physical drive nmuber to identify the drive */
)
{ 
	return RES_OK;
} 

//��ʼ������
DSTATUS disk_initialize (
	BYTE pdrv				/* Physical drive nmuber to identify the drive */
)
{
	u8 res=0;	    
	switch(pdrv)
	{
		case SD_CARD:		//SD��
			res=SD_Init();	//SD����ʼ�� 
  			break;
		case EX_FLASH:		//�ⲿflash
			W25QXX_Init();  //W25QXX��ʼ��
 			break;
		default:
			res=1; 
	}		 
	if(res)return  STA_NOINIT;
	else return 0; //��ʼ���ɹ� 
} 

//������
//pdrv:���̱��0~9
//*buff:���ݽ��ջ����׵�ַ
//sector:������ַ
//count:��Ҫ��ȡ��������
DRESULT disk_read (
	BYTE pdrv,		/* Physical drive nmuber to identify the drive */
	BYTE *buff,		/* Data buffer to store read data */
	DWORD sector,	/* Sector address in LBA */
	UINT count		/* Number of sectors to read */
)
{
	u8 res=0; 
    if (!count)return RES_PARERR;//count���ܵ���0�����򷵻ز�������		 	 
	switch(pdrv)
	{
		case SD_CARD://SD��
			res=SD_ReadDisk(buff,sector,count);	 
			while(res)//������
			{
				SD_Init();	//���³�ʼ��SD��
				res=SD_ReadDisk(buff,sector,count);	
				//printf("sd rd error:%d\r\n",res);
			}
			break;
		case EX_FLASH://�ⲿflash
			for(;count>0;count--)
			{
				W25QXX_Read(buff,sector*FLASH_SECTOR_SIZE,FLASH_SECTOR_SIZE);
				sector++;
				buff+=FLASH_SECTOR_SIZE;
			}
			res=0;
			break;
		default:
			res=1; 
	}
   //������ֵ����SPI_SD_driver.c�ķ���ֵת��ff.c�ķ���ֵ
    if(res==0x00)return RES_OK;	 
    else return RES_ERROR;	   
}

//д����
//pdrv:���̱��0~9
//*buff:���������׵�ַ
//sector:������ַ
//count:��Ҫд��������� 
DRESULT disk_write (
	BYTE pdrv,			/* Physical drive nmuber to identify the drive */
	const BYTE *buff,	/* Data to be written */
	DWORD sector,		/* Sector address in LBA */
	UINT count			/* Number of sectors to write */
)
{
	u8 res=0;  
    if (!count)return RES_PARERR;//count���ܵ���0�����򷵻ز�������		 	 
	switch(pdrv)
	{
		case SD_CARD://SD��
			res=SD_WriteDisk((u8*)buff,sector,count);
			while(res)//д����
			{
				SD_Init();	//���³�ʼ��SD��
				res=SD_WriteDisk((u8*)buff,sector,count);	
			}
			break;
		case EX_FLASH://�ⲿflash
			for(;count>0;count--)
			{										    
				W25QXX_Write((u8*)buff,sector*FLASH_SECTOR_SIZE,FLASH_SECTOR_SIZE);
				sector++;
				buff+=FLASH_SECTOR_SIZE;
			}
			res=0;
			break;
		default:
			res=1; 
	}
    //������ֵ����SPI_SD_driver.c�ķ���ֵת��ff.c�ķ���ֵ
    if(res == 0x00)return RES_OK;	 
    else return RES_ERROR;	
} 

//����������Ļ��
//pdrv:���̱��0~9
//ctrl:���ƴ���
//*buff:����/���ջ�����ָ�� 
DRESULT disk_ioctl (
	BYTE pdrv,		/* Physical drive nmuber (0..) */
	BYTE cmd,		/* Control code */
	void *buff		/* Buffer to send/receive control data */
)
{
	DRESULT res;						  			     
	if(pdrv==SD_CARD)//SD��
	{
	    switch(cmd)
	    {
		    case CTRL_SYNC:
				res = RES_OK; 
		        break;	 
		    case GET_SECTOR_SIZE:
				*(DWORD*)buff = 512; 
		        res = RES_OK;
		        break;	 
		    case GET_BLOCK_SIZE:
				*(WORD*)buff = SDCardInfo.LogBlockSize;
		        res = RES_OK;
		        break;	 
		    case GET_SECTOR_COUNT:
		        *(DWORD*)buff = SDCardInfo.LogBlockNbr;
		        res = RES_OK;
		        break;
		    default:
		        res = RES_PARERR;
		        break;
	    }
	}
	else if(pdrv==EX_FLASH)	//�ⲿFLASH  
	{
	    switch(cmd)
	    {
		    case CTRL_SYNC:
				res = RES_OK; 
		        break;	 
		    case GET_SECTOR_SIZE:
		        *(WORD*)buff = FLASH_SECTOR_SIZE;
		        res = RES_OK;
		        break;	 
		    case GET_BLOCK_SIZE:
		        *(WORD*)buff = FLASH_BLOCK_SIZE;
		        res = RES_OK;
		        break;	 
		    case GET_SECTOR_COUNT:
		        *(DWORD*)buff = FLASH_SECTOR_COUNT;
		        res = RES_OK;
		        break;
		    default:
		        res = RES_PARERR;
		        break;
	    }
	}else res=RES_ERROR;//�����Ĳ�֧��
    return res;
} 
//���ʱ��
//User defined function to give a current time to fatfs module      */
//31-25: Year(0-127 org.1980), 24-21: Month(1-12), 20-16: Day(1-31) */                                                                                                                                                                                                                                          
//15-11: Hour(0-23), 10-5: Minute(0 -59), 4-0: Second(0-29 *2) */                                                                                                                                                                                                                                                
DWORD get_fattime (void) //�˴���������RTCʱ��Դ
{	
//return ((2020UL-1980) << 25) /* Year = 2020 */
//| (9UL << 21) /* Month = 11 */
//| (12UL << 16) /* Day = 2 */
//| (12U << 11) /* Hour = 15 */
//| (0U << 5) /* Min = 0 */
//| (0U >> 1) /* Sec = 0 */
//;

//	HAL_RTC_GetTime(&RTC_Handler,&RTC_TimeStruct,RTC_FORMAT_BIN); //����ʱ��˳��ΪGET_TIME��GET_DATE
//    HAL_RTC_GetDate(&RTC_Handler,&RTC_DateStruct,RTC_FORMAT_BIN);
//	
//return ((2000UL+(uint32_t)RTC_DateStruct.Year-1980) << 25) /* Year = 2020 */
//| ((uint32_t)RTC_DateStruct.Month<< 21) /* Month = 11 */
//| ((uint32_t)RTC_DateStruct.Date << 16) /* Day = 2 */
//| ((uint32_t)RTC_TimeStruct.Hours << 11) /* Hour = 15 */
//| ((uint32_t)RTC_TimeStruct.Minutes << 5) /* Min = 0 */
//| ((uint32_t)RTC_TimeStruct.Seconds >> 1) /* Sec = 0 */
//;
	return 0;
}


////��̬�����ڴ�
//void *ff_memalloc (UINT size)			
//{
//	return (void*)mymalloc(SRAMIN,size);
//}
////�ͷ��ڴ�
//void ff_memfree (void* mf)		 
//{
//	myfree(SRAMIN,mf);
//}
