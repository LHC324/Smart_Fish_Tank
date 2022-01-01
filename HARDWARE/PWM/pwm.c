#include "pwm.h"


void servo_init(void){
	TIM3_PWM_Init(SERVO_TIM_ARR,SERVO_TIM_PSC);/*初始化pwm发生器*/
	servo_angle(0);/*停止状态*/
}


void servo_angle(int ang){/*舵机驱动函数*/
  int pulse;
  if(ang==0){
	pulse=152;/*pulse实际值为(150+2(中心校准值))*10us(10us)来源于定时器*/
  }
  else if(ang<0){
	pulse=(-ang)*10+150;
  }
  else if(ang>0){ 
	pulse=150-ang*10;
  }
  
  Set_TIMx_Comparex(TIM3,2,pulse);/*直接写入TIM3比较寄存器CCR2（选择的是定时器3通道2）*/
}


