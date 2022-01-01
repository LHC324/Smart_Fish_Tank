#ifndef _SPI_H_
#define _SPI_H_
#include "sys.h"

#define USE_FLASH //�˺�����ʹ��Ӳ��WQ2564,ʹ��SPI1

extern SPI_HandleTypeDef SPI_Handler;  //SPI���
void SPI_Init(void);
void SPI_SetSpeed(u8 SPI_BaudRatePrescaler);
u8 SPI_ReadWriteByte(u8 TxData);

#endif
