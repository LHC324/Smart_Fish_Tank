#ifndef _SPI_H_
#define _SPI_H_
#include "sys.h"

#define USE_FLASH //此宏用于使用硬件WQ2564,使用SPI1

extern SPI_HandleTypeDef SPI_Handler;  //SPI句柄
void SPI_Init(void);
void SPI_SetSpeed(u8 SPI_BaudRatePrescaler);
u8 SPI_ReadWriteByte(u8 TxData);

#endif
