#ifndef _KEY_H_
#define _KEY_H_

#include "sys.h"
//#define USE_TPAD //�Ƿ�ʹ�õ��ݰ�������ʱ����ɨ��ĳ���ʧЧ

//#define KEY0        PHin(3) //KEY0����PH3
//#define KEY1        PHin(2) //KEY1����PH2
//#define KEY2        PCin(13)//KEY2����PC13
//#define WK_UP       PAin(0) //WKUP����PA0


//����ķ�ʽ��ͨ��ֱ�Ӳ���HAL�⺯����ʽ��ȡIO
#define KEY0        HAL_GPIO_ReadPin(GPIOE,GPIO_PIN_4)  //KEY0����PE4
#define KEY1        HAL_GPIO_ReadPin(GPIOE,GPIO_PIN_3)  //KEY1����PE3
//#define KEY2        HAL_GPIO_ReadPin(GPIOE,GPIO_PIN_2) 	//KEY2����PE2
#define WK_UP       HAL_GPIO_ReadPin(GPIOA,GPIO_PIN_0)  //WKUP����PA0
#define TPAD        HAL_GPIO_ReadPin(GPIOE,GPIO_PIN_2) //���ݰ���

#define KEY0_PRES 	1
#define KEY1_PRES	2
#define KEY2_PRES	3
#define WKUP_PRES   4


/* iot������������i ------------------------------------------------------------*/

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
