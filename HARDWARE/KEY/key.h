#ifndef _KEY_H_
#define _KEY_H_

#include "sys.h"
//#define USE_TPAD //是否使用电容按键，此时按键扫描的长按失效

//#define KEY0        PHin(3) //KEY0按键PH3
//#define KEY1        PHin(2) //KEY1按键PH2
//#define KEY2        PCin(13)//KEY2按键PC13
//#define WK_UP       PAin(0) //WKUP按键PA0


//下面的方式是通过直接操作HAL库函数方式读取IO
#define KEY0        HAL_GPIO_ReadPin(GPIOE,GPIO_PIN_4)  //KEY0按键PE4
#define KEY1        HAL_GPIO_ReadPin(GPIOE,GPIO_PIN_3)  //KEY1按键PE3
//#define KEY2        HAL_GPIO_ReadPin(GPIOE,GPIO_PIN_2) 	//KEY2按键PE2
#define WK_UP       HAL_GPIO_ReadPin(GPIOA,GPIO_PIN_0)  //WKUP按键PA0
#define TPAD        HAL_GPIO_ReadPin(GPIOE,GPIO_PIN_2) //电容按键

#define KEY0_PRES 	1
#define KEY1_PRES	2
#define KEY2_PRES	3
#define WKUP_PRES   4


/* iot配网按键定义i ------------------------------------------------------------*/

#define KEY2_Pin GPIO_PIN_3
#define KEY2_GPIO_Port GPIOE
#define KEY1_Pin GPIO_PIN_4
#define KEY1_GPIO_Port GPIOE
//#define KEY_WKUP_Pin GPIO_PIN_0
//#define KEY_WKUP_GPIO_Port GPIOA
/* Private define ------------------------------------------------------------*/

void KEY_Init(void);
extern u8 key_driver(u8 KEY);
//extern u8 KEY_Scan(u8 KEY);
u8 KEY_Scan(u8 mode);
#endif
