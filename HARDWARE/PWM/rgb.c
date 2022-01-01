#include "pwm.h"

//设置RGB占空比
void Set_Duty_Cycle(RGB_type RGBx,u8 dty){
    switch(RGBx){/*RGBx允许值为1-4，其他值均会使dty=0*/
        case R_LED:
            Set_TIMx_Comparex(TIM5,2,dty);
			break;
        case G_LED:
            Set_TIMx_Comparex(TIM5,3,dty);
			break;		
        case B_LED:
            Set_TIMx_Comparex(TIM5,4,dty);
			break;
        default:
            Set_TIMx_Comparex(TIM5,5,0);
			break;			
    }    
}












