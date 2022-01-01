#include "pwm.h"


void servo_init(void){
	TIM3_PWM_Init(SERVO_TIM_ARR,SERVO_TIM_PSC);/*��ʼ��pwm������*/
	servo_angle(0);/*ֹͣ״̬*/
}


void servo_angle(int ang){/*�����������*/
  int pulse;
  if(ang==0){
	pulse=152;/*pulseʵ��ֵΪ(150+2(����У׼ֵ))*10us(10us)��Դ�ڶ�ʱ��*/
  }
  else if(ang<0){
	pulse=(-ang)*10+150;
  }
  else if(ang>0){ 
	pulse=150-ang*10;
  }
  
  Set_TIMx_Comparex(TIM3,2,pulse);/*ֱ��д��TIM3�ȽϼĴ���CCR2��ѡ����Ƕ�ʱ��3ͨ��2��*/
}


