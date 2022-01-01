#ifndef _HCSR04_H_
#define _HCSR04_H_
#include "sys.h"

#define TRIG_Send  PAout(4) 
#define ECHO_Recive  PAin(5)

#define HCSR04_PORT     GPIOA
#define HCSR04_CLK()    __HAL_RCC_GPIOA_CLK_ENABLE()
#define HCSR04_TRIG     GPIO_PIN_4
#define HCSR04_ECHO     GPIO_PIN_5

extern u8 overFlowCount;//timer.c中由定时器2中断使用
float Hcsr04_Get_Length(void );
void Hcsr04_Init(void);
#endif

