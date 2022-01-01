#ifndef _PWM_H_
#define _PWM_H_

#include "sys.h"
#include "timer.h"
// 84M / (839 + 1) = 0.1M �ʼ�һ������ʱ��Ϊ10us  ��ʱ���ڣ���1999 + 1�� * 10us = 20ms
#define SERVO_TIM_ARR  1999
#define SERVO_TIM_PSC  839
/* ----------------   PWM�ź� ���ں�ռ�ձȵļ���--------------- */
// ARR ���Զ���װ�ؼĴ�����ֵ
// CLK_cnt����������ʱ�ӣ����� Fck_int / (psc+1) = 84M/(psc+1)
// PWM �źŵ����� T = ARR * (1/CLK_cnt) = ARR*(PSC+1) / 84M
// ռ�ձ�P=CCR/(ARR+1)
// ռ�ձ����ã���ת��[0.5ms,1.5ms),ֵԽС����ת�ٶ�Խ��;ֹͣ��1.5ms+0.02ms;��ת��(1.5ms-2.5ms]ֵԽ����ת�ٶ�Խ��


//angle��ת�٣�ת���ϵ
	//    10            9       ...       1          0           -1      ...      -9             -10      
	//��ת���  ��ת�ٶȵڶ��� ... ��ת�ٶ�����   ֹͣת��   ��ת�ٶ����� ... ��ת�ٶȵڶ���  ��ת�ٶ����
	//Ϊ�˷�ֹ����𻵣���������ת���ת�ٽ�angle����Ϊ8����ת���ת�ٽ�angle����Ϊ-8
	//��������֤ͨ������ÿ�����ֹͣת����angleֵ���ܲ�ͬ�������в��ԡ�
	
void servo_angle(int angle);
void servo_init(void);



/*********************************************************�˴�ΪRGBʹ����*********************************/
typedef enum RGBtype{
    R_LED = 1,
    G_LED = 2,
    B_LED = 3
}RGB_type;

void RGB_Init(void);
void Set_Duty_Cycle(RGB_type RGBx,u8 dty);
#endif


