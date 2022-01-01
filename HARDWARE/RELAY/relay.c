#include "relay.h"

void Relay_Init(void){
	GPIO_InitTypeDef GPIO_Initure;
	__HAL_RCC_GPIOC_CLK_ENABLE(); //¿ªÆôGPIOEÊ±ÖÓ
	
	GPIO_Initure.Pin=GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3;
	GPIO_Initure.Mode=GPIO_MODE_OUTPUT_PP;
	GPIO_Initure.Pull=GPIO_PULLUP;
	GPIO_Initure.Speed=GPIO_SPEED_HIGH;
	HAL_GPIO_Init(GPIOC,&GPIO_Initure);
	
	HAL_GPIO_WritePin(GPIOC,(GPIO_PIN_0|GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3),GPIO_PIN_RESET);
}
