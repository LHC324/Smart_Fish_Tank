#ifndef _PWM_H_
#define _PWM_H_

#include "sys.h"
#include "timer.h"
// 84M / (839 + 1) = 0.1M 故记一个数的时间为10us  定时周期：（1999 + 1） * 10us = 20ms
#define SERVO_TIM_ARR  1999
#define SERVO_TIM_PSC  839
/* ----------------   PWM信号 周期和占空比的计算--------------- */
// ARR ：自动重装载寄存器的值
// CLK_cnt：计数器的时钟，等于 Fck_int / (psc+1) = 84M/(psc+1)
// PWM 信号的周期 T = ARR * (1/CLK_cnt) = ARR*(PSC+1) / 84M
// 占空比P=CCR/(ARR+1)
// 占空比配置：正转：[0.5ms,1.5ms),值越小，旋转速度越大;停止；1.5ms+0.02ms;反转：(1.5ms-2.5ms]值越大，旋转速度越大


//angle与转速，转向关系
	//    10            9       ...       1          0           -1      ...      -9             -10      
	//正转最快  正转速度第二块 ... 正转速度最慢   停止转动   反转速度最慢 ... 反转速度第二块  反转速度最快
	//为了防止舵机损坏，此例程正转最大转速将angle设置为8，反转最大转速将angle设置为-8
	//本例程验证通过，但每个舵机停止转动的angle值可能不同，请自行测试。
	
void servo_angle(int angle);
void servo_init(void);



/*********************************************************此处为RGB使用区*********************************/
typedef enum RGBtype{
    R_LED = 1,
    G_LED = 2,
    B_LED = 3
}RGB_type;

void RGB_Init(void);
void Set_Duty_Cycle(RGB_type RGBx,u8 dty);
#endif


