#ifndef _SDMMC_SDCARD_H
#define _SDMMC_SDCARD_H
#include "sys.h"


//#define SD_TIMEOUT 			((uint32_t)100000000)  	//��ʱʱ��
#define SD_TIMEOUT 			((uint32_t)0x00002000)  	//��ʱʱ��
#define SD_TRANSFER_OK     	((uint8_t)0x00)
#define SD_TRANSFER_BUSY   	((uint8_t)0x01)

#define SD_DMA_MODE    		1						//1��DMAģʽ��0����ѯģʽ   

extern SD_HandleTypeDef        SDCARD_Handler;     	//SD�����
extern HAL_SD_CardInfoTypeDef  SDCardInfo;         	//SD����Ϣ�ṹ��

u8 SD_Init(void);
u8 SD_GetCardInfo(HAL_SD_CardInfoTypeDef *cardinfo);
u8 SD_GetCardState(void);
u8 SD_ReadDisk(u8* buf,u32 sector,u32 cnt);
u8 SD_WriteDisk(u8 *buf,u32 sector,u32 cnt);
u8 SD_ReadBlocks_DMA(uint32_t *buf,uint64_t sector,uint32_t blocksize,uint32_t cnt);
u8 SD_WriteBlocks_DMA(uint32_t *buf,uint64_t sector,uint32_t blocksize,uint32_t cnt);
#endif
