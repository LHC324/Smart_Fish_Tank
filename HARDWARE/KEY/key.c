#include "key.h"  //硬件方面我们可以在按键上并联一个104的电容到地来消除部分杂波
#include "delay.h"
#include "hal_key.h"//包含按键底层处理函数
#include "gizwits_product.h"
#include "common.h"

#define GPIO_KEY_NUM 2 ///< Defines the total number of key member
keyTypedef_t singleKey[GPIO_KEY_NUM]; ///< Defines a single key member array pointer
keysTypedef_t keys;
/* USER CODE END PV */

//按键处理函数
//返回按键值
//mode:0,不支持连续按;1,支持连续按;
//0，没有任何按键按下
//1，WKUP按下 WK_UP
//注意此函数有响应优先级,KEY0>KEY1>KEY2>WK_UP!!
//u8 KEY_Scan(u8 mode){
//    static u8 key_up=1;     //按键松开标志
//    if(mode==1)key_up=1;    //支持连按
//    if(key_up&&(KEY0==0||KEY1==0||WK_UP==1)){
//        delay_ms(10);
//        key_up=0;
//        if(KEY0==0)       return KEY0_PRES;
//        else if(KEY1==0)  return KEY1_PRES;
////        else if(KEY2==0)  return KEY2_PRES;
//        else if(WK_UP==1) return WKUP_PRES;          
//    }else if(KEY0==1&&KEY1==1&&WK_UP==0)key_up=1;
//    return 0;   //无按键按下
//}

/**
* key1 short press handle
* @founction 厂测模式
* @param none
* @return none
*/
void key1ShortPress(void) 
{
    GIZWITS_LOG("KEY1 PRESS ,Production Mode\n");
    gizwitsSetMode(WIFI_PRODUCTION_TEST);
}

/**
* key1 long press handle
* @founction 复位WiFi
* @param none
* @return none
*/
void key1LongPress(void)
{
    GIZWITS_LOG("KEY1 PRESS LONG ,Wifi Reset\n");
    gizwitsSetMode(WIFI_RESET_MODE);

}

/**
* key2 short press handle
* @founction 热点模式
* @param none
* @return none
*/
void key2ShortPress(void)
{
    GIZWITS_LOG("KEY2 PRESS ,Soft AP mode\n");
    #if !MODULE_TYPE
    gizwitsSetMode(WIFI_SOFTAP_MODE);
    #endif
}

/**
* key2 long press handle
* @founction AirLink：App配网模式
* @param none
* @return none
*/
void key2LongPress(void)
{
    //AirLink mode
    GIZWITS_LOG("KEY2 PRESS LONG ,AirLink mode\n");
    #if !MODULE_TYPE
    gizwitsSetMode(WIFI_AIRLINK_MODE);
    #endif
}

/**
* Key init function
* @param none
* @return none
*/
void keyInit(void)
{
    singleKey[0] = keyInitOne(NULL, KEY1_GPIO_Port, KEY1_Pin, key1ShortPress, key1LongPress);
    singleKey[1] = keyInitOne(NULL, KEY2_GPIO_Port, KEY2_Pin, key2ShortPress, key2LongPress);
    keys.singleKey = (keyTypedef_t *)&singleKey;
    keyParaInit(&keys); 
}

//按键初始化函数
void KEY_Init(void){
    GPIO_InitTypeDef GPIO_Initure;
    
    __HAL_RCC_GPIOA_CLK_ENABLE();           //开启GPIOA时钟
    __HAL_RCC_GPIOE_CLK_ENABLE();           //开启GPIOE时钟

    
    GPIO_Initure.Pin=GPIO_PIN_0;            //PA0
    GPIO_Initure.Mode=GPIO_MODE_INPUT;      //输入
    GPIO_Initure.Pull=GPIO_PULLDOWN;        //下拉
    GPIO_Initure.Speed=GPIO_SPEED_HIGH;     //高速
    HAL_GPIO_Init(GPIOA,&GPIO_Initure);
    
//#ifdef USE_TPAD
//	GPIO_Initure.Pin=GPIO_PIN_2; //PE2
//    GPIO_Initure.Mode=GPIO_MODE_INPUT;      //输入
//    GPIO_Initure.Pull=GPIO_MODE_OUTPUT_OD;          //上拉
//    GPIO_Initure.Speed=GPIO_SPEED_HIGH;     //高速
//    HAL_GPIO_Init(GPIOE,&GPIO_Initure);
//#else
	GPIO_Initure.Pin=GPIO_PIN_2|GPIO_PIN_3|GPIO_PIN_4; //PE2,3,4
    GPIO_Initure.Mode=GPIO_MODE_INPUT;      //输入
    GPIO_Initure.Pull=GPIO_PULLUP;          //上拉
    GPIO_Initure.Speed=GPIO_SPEED_HIGH;     //高速
    HAL_GPIO_Init(GPIOE,&GPIO_Initure);
//#endif   
}

