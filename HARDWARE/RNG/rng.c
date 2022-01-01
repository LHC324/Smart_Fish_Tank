#include "rng.h"
#include "delay.h"
//////////////////////////////////////////////////////////////////////////////////	 
//本程序只供学习使用，未经作者许可，不得用于其它任何用途
//ALIENTEK STM32F407开发板
//RNG(随机数发生器)驱动代码	   
//正点原子@ALIENTEK
//技术论坛:www.openedv.com
//创建日期:2017/4/11
//版本：V1.0
//版权所有，盗版必究。
//Copyright(C) 广州市星翼电子科技有限公司 2014-2024
//All rights reserved									  
////////////////////////////////////////////////////////////////////////////////// 	

RNG_HandleTypeDef RNG_Handler;  //RNG句柄

//初始化RNG
u8 RNG_Init(void){
    u16 retry=0;
    
    RNG_Handler.Instance=RNG;
    HAL_RNG_Init(&RNG_Handler);//初始化RNG
    while(__HAL_RNG_GET_FLAG(&RNG_Handler,RNG_FLAG_DRDY)==RESET&&retry<10000){//等待RNG准备就绪
        retry++;
        delay_us(10);
    }
    if(retry>=10000) return 1;//随机数产生器工作不正常
    return 0;
}


void HAL_RNG_MspInit(RNG_HandleTypeDef *hrng){
     __HAL_RCC_RNG_CLK_ENABLE();//使能RNG时钟
}


//得到随机数
//返回值:获取到的随机数
u32 RNG_Get_RandomNum(void){
    return HAL_RNG_GetRandomNumber(&RNG_Handler);
}


//生成[min,max]范围的随机数
int RNG_Get_RandomRange(int min,int max){ 
   return HAL_RNG_GetRandomNumber(&RNG_Handler)%(max-min+1)+min;
}




