#include "timer.h"
#include "led.h"
#include "hcsr04.h"/*����������ʹ��API*/
#include "FreeRTOS.h"	//FreeRTOS ʹ��	 
#include "task.h"    //�����ٽ��� 
#include "gizwits_product.h"//��������������
#include "hal_key.h" //������������
/********************************************************************************/	 
//��1���߼���ʱ��timer1, timer8�Լ�ͨ�ö�ʱ��timer9, timer10, timer11��ʱ����Դ��APB2����
//��2��ͨ�ö�ʱ��timer2~timer5��ͨ�ö�ʱ��timer12~timer14�Լ�������ʱ��timer6,timer7��ʱ����Դ��APB1����
//��3����APB1��APB2��Ƶ��Ϊ1��ʱ��TIM1��TIM8~TIM11��ʱ��ΪAPB2��ʱ�ӣ�TIM2~TIM7��TIM12~TIM14��ʱ��ΪAPB1��ʱ�ӣ�
//��4�������APB1��APB2��Ƶ����Ϊ1����ôTIM1��TIM8~TIM11��ʱ��ΪAPB2��ʱ�ӵ�������TIM2~TIM7��TIM12~TIM14��ʱ��Ϊ
//APB1��ʱ�ӵ�������
//��Ϊϵͳ��ʼ��SystemInit�������ʼ��APB1����ʱ��Ϊ4��Ƶ��42M������TIM2~TIM7��TIM12~TIM14��ʱ��ΪAPB1��ʱ�ӵ���
//����84M��APB2����ʱ��Ϊ2��Ƶ��84M��TIM1��TIM8~TIM11��ʱ��ΪAPB2ʱ�ӵ�������168M��
//֪����ʱ����ʱ��ԴƵ�������ö�ʱ������ʱ�ͺܷ����ˣ�ֻҪ�趨���ʵķ�Ƶϵ�����ɣ���һ�����ж�ʵ����ʱ�Ĺ�ʽ����ժ��ԭ�ӵ�STM32F4����ָ�ϣ�
//  Tout = ((arr+1)*(psc+1))/Tclk;
//��ʽ��psc���Ƿ�Ƶϵ����arr���Ǽ���ֵ���ﵽ��������ͻᷢ������жϣ�Tclk��������������ʱ��ԴƵ�ʡ�					  
//********************************************************************************/

//////////////////////////////////////////////////////////////////////////////////  
TIM_HandleTypeDef TIM2_Handler,TIM3_Handler,TIM5_Handler,TIM7_Handler;      //��ʱ����� 
TIM_OC_InitTypeDef TIM3_CH2Handler,TIM5_CHxHandler;	//��ʱ��3ͨ��2���

uint32_t FreeRTOSRunTimeTicks = 0; //FreeRtos����״̬����

extern vu16 USART3_RX_STA;
//extern uint32_t timerMsCount;

//������ʱ��7�жϳ�ʼ��
//����ʱ��ѡ��ΪAPB1��2������APB1Ϊ42M
//arr���Զ���װֵ��
//psc��ʱ��Ԥ��Ƶ��
//����ʹ�õ��Ƕ�ʱ��7!
void TIM7_Int_Init(u16 arr,u16 psc){
	TIM7_Handler.Instance=TIM7;                          //ͨ�ö�ʱ��7
    TIM7_Handler.Init.Prescaler=psc;                     //��Ƶϵ��
    TIM7_Handler.Init.CounterMode=TIM_COUNTERMODE_UP;    //���ϼ�����
    TIM7_Handler.Init.Period=arr;                        //�Զ�װ��ֵ
    TIM7_Handler.Init.ClockDivision=TIM_CLOCKDIVISION_DIV1;//ʱ�ӷ�Ƶ����
    
	HAL_TIM_Base_Init(&TIM7_Handler);
    HAL_TIM_Base_Start_IT(&TIM7_Handler); //ʹ�ܶ�ʱ��7�Ͷ�ʱ��7�����жϣ�TIM_IT_UPDATE									 
}

/*******************************************���ú���**************************************/
//��ʱ���ײ�����������ʱ�ӣ������ж����ȼ�
//�˺����ᱻHAL_TIM_Base_Init()��������
void HAL_TIM_Base_MspInit(TIM_HandleTypeDef *htim){//��ʱ��7���ڼ�⴮�ڽ���ESP8266��������״̬
    if(htim->Instance==TIM7){
		__HAL_RCC_TIM7_CLK_ENABLE();            //ʹ��TIM7ʱ��
		HAL_NVIC_SetPriority(TIM7_IRQn,1,0);    //�����ж����ȼ�����ռ���ȼ�1�������ȼ�0//0��1
		HAL_NVIC_EnableIRQ(TIM7_IRQn);          //����ITM7�ж�   
	}
	else if(htim->Instance==TIM2){//��ʱ��2���ڳ������������
		__HAL_RCC_TIM2_CLK_ENABLE();            //ʹ��TIM2ʱ��
		HAL_NVIC_SetPriority(TIM2_IRQn,5,0);    //�����ж����ȼ�����ռ���ȼ�5�������ȼ�0
		HAL_NVIC_EnableIRQ(TIM2_IRQn);          //����ITM2�ж�   
	}
}


/*******************************************���ú���**************************************/
//�ص���������ʱ���жϷ���������
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim){
    uint32_t status_value;
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	status_value=taskENTER_CRITICAL_FROM_ISR();//�жϼ�����    
#endif	
	if(htim==(&TIM2_Handler)){       //��ʱ��2
		overFlowCount++;//���ն�δ�յ������źŻ����źŶ�ʧ  
    }
    else if(htim==(&TIM7_Handler)){  //��ʱ��7
		FreeRTOSRunTimeTicks++;
//		LED0=!LED0;//���ݽ���״̬��־��
//		USART3_RX_STA|=1<<15;	//��ǽ������
//        TIM7->CR1&=~(1<<0);     			//�رն�ʱ��7  
//		gizTimerMs(); //������1ms����
//		printf("gizTimerMs:%d\r\n",1000);
//		keyHandle((keysTypedef_t *)&keys); //�������� 
    }
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	taskEXIT_CRITICAL_FROM_ISR(status_value);//�˳��ٽ���  											 
#endif
}

/*******************************************���ú���**************************************/


//��ʱ���ײ�������ʱ��ʹ�ܣ���������
//�˺����ᱻHAL_TIM_PWM_Init()����
//htim:��ʱ�����
void HAL_TIM_PWM_MspInit(TIM_HandleTypeDef *htim){
	if(htim==(&TIM3_Handler)){/*���pwm���*/
		GPIO_InitTypeDef GPIO_Initure;
		__HAL_RCC_TIM3_CLK_ENABLE();			//ʹ�ܶ�ʱ��3
		__HAL_RCC_GPIOA_CLK_ENABLE();			//����GPIOAʱ��
		
		GPIO_Initure.Pin=GPIO_PIN_7;           	//PA7��PA6��LED0���ţ�
		GPIO_Initure.Mode=GPIO_MODE_AF_PP;  	//�����������
		GPIO_Initure.Pull=GPIO_PULLUP;          //����
		GPIO_Initure.Speed=GPIO_SPEED_FAST;     //����50MHz
		GPIO_Initure.Alternate= GPIO_AF2_TIM3;	//PF2����ΪTIM3_CH2
		HAL_GPIO_Init(GPIOA,&GPIO_Initure);
	}
	else if(htim==(&TIM5_Handler)){/*RGB��ɫ��pwm���*/
		GPIO_InitTypeDef GPIO_Initure;
		__HAL_RCC_TIM5_CLK_ENABLE();			//ʹ�ܶ�ʱ��5
		__HAL_RCC_GPIOA_CLK_ENABLE();			//����GPIOAʱ��
		
		GPIO_Initure.Pin=GPIO_PIN_1|GPIO_PIN_2|GPIO_PIN_3;  //PA1��PA2��PA3
		GPIO_Initure.Mode=GPIO_MODE_AF_PP;  	//�����������
		GPIO_Initure.Pull=GPIO_PULLUP;          //����
		GPIO_Initure.Speed=GPIO_SPEED_FAST;     //����50MHz
		GPIO_Initure.Alternate= GPIO_AF2_TIM5;	//PF2����ΪTIM5_CH2��TIM5_CH3��TIM5_CH4
		HAL_GPIO_Init(GPIOA,&GPIO_Initure);
	}
	
}

//����TIMXͨ��X��ռ�ձ�
//compare:�Ƚ�ֵ
void Set_TIMx_Comparex(TIM_TypeDef *TIMx,u8 CCRx,u32 compare)
{
	if(CCRx==1){
		TIMx->CCR1=compare; /*CCR0����Ƶ�ʣ�CCR1/CCR2����ռ�ձ�(CCR1����ͨ��CH1��2��CCR2����ͨ��3��4)*/
	}
	else if(CCRx==2){
		TIMx->CCR2=compare;
	}
	else if(CCRx==3){
		TIMx->CCR3=compare;
	}
	else if(CCRx==4){
		TIMx->CCR4=compare;
	}
	else{/*ͬʱ����*/
		TIMx->CCR1=TIMx->CCR2=TIMx->CCR3=TIMx->CCR4=0;
	}
}
/*******************************************���ú���**************************************/

//��ʱ��7�жϷ������		    
void TIM7_IRQHandler(void){	    		    
	uint32_t status_value;
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	status_value=taskENTER_CRITICAL_FROM_ISR();//�жϼ�����    
#endif	
	//__HAL_TIM_CLEAR_FLAG(&TIM7_Handler,TIM_EventSource_Update);//���TIM7�����жϱ�־  
	HAL_TIM_IRQHandler(&TIM7_Handler);//�ڲ����Զ����TIM7�����жϱ�־	
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	taskEXIT_CRITICAL_FROM_ISR(status_value);//�˳��ٽ���  											 
#endif
} 


//ͨ�ö�ʱ��2��ʼ��
//arr���Զ���װֵ��
//psc��ʱ��Ԥ��Ƶ����
//��ʱ�����ʱ����㷽��:Tout=((arr+1)*(psc+1))/Ft us.
//Ft=��ʱ������Ƶ��,��λ:Mhz
//����ʹ�õ��Ƕ�ʱ��6!(��ʱ��6����APB1�ϣ�ʱ��ΪHCLK/2)
void TIM2_Int_Init(u16 arr,u16 psc){
	TIM2_Handler.Instance=TIM2;                          //ͨ�ö�ʱ��2
    TIM2_Handler.Init.Prescaler=psc;                     //��Ƶϵ��
    TIM2_Handler.Init.CounterMode=TIM_COUNTERMODE_UP;    //���ϼ�����
    TIM2_Handler.Init.Period=arr;                        //�Զ�װ��ֵ
    TIM2_Handler.Init.ClockDivision=TIM_CLOCKDIVISION_DIV1;//ʱ�ӷ�Ƶ���ӣ�����Ƶ
    
	HAL_TIM_Base_Init(&TIM2_Handler);//����TIM_TimeBaseInitStruct��ָ���Ĳ�����ʼ��TIMx��ʱ�������λ
    HAL_TIM_Base_Start_IT(&TIM2_Handler); //ʹ�ܶ�ʱ��2�Ͷ�ʱ��2�����жϣ�TIM_IT_UPDATE	
	
//	__HAL_TIM_CLEAR_FLAG(&TIM2_Handler,TIM_EventSource_Update);//���TIM2�����жϱ�־,���⿪���жϾͽ����ж� 
	TIM2->CR1&=~(1<<0);        //�رն�ʱ��2	
}


//��ʱ��2�жϷ������		    
void TIM2_IRQHandler(void){	    		    
	uint32_t status_value;
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	status_value=taskENTER_CRITICAL_FROM_ISR();//�жϼ�����    
#endif	
	HAL_TIM_IRQHandler(&TIM2_Handler);//�ڲ����Զ����TIM2�����жϱ�־	 
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	taskEXIT_CRITICAL_FROM_ISR(status_value);//�˳��ٽ���  											 
#endif
} 


//TIM3 PWM���ֳ�ʼ�� 
//arr���Զ���װֵ��
//psc��ʱ��Ԥ��Ƶ��
//��ʱ�����ʱ����㷽��:Tout=((arr+1)*(psc+1))/Ft us.
//Ft=��ʱ������Ƶ��,��λ:Mhz
void TIM3_PWM_Init(u16 arr,u16 psc){
    TIM3_Handler.Instance=TIM3;          	//��ʱ��3
    TIM3_Handler.Init.Prescaler=psc;       //��ʱ����Ƶ
    TIM3_Handler.Init.CounterMode=TIM_COUNTERMODE_UP;//���ϼ���ģʽ
    TIM3_Handler.Init.Period=arr;          //�Զ���װ��ֵ
    TIM3_Handler.Init.ClockDivision=TIM_CLOCKDIVISION_DIV1;
    HAL_TIM_PWM_Init(&TIM3_Handler);       //��ʼ��PWM
    
    TIM3_CH2Handler.OCMode=TIM_OCMODE_PWM1; //ģʽѡ��PWM1
    TIM3_CH2Handler.Pulse=0;          //���ñȽ�ֵ,��ֵ����ȷ��ռ�ձȣ�Ĭ�ϱȽ�ֵΪ�Զ���װ��ֵ��һ��,��ռ�ձ�Ϊ50%
    TIM3_CH2Handler.OCPolarity=TIM_OCPOLARITY_HIGH; //����Ƚϼ���Ϊ��[��ʼ�������Ϊ�ߵ�ƽCNT<CCR1���1] 
	
    HAL_TIM_PWM_ConfigChannel(&TIM3_Handler,&TIM3_CH2Handler,TIM_CHANNEL_2);//����TIM3ͨ��2
    HAL_TIM_PWM_Start(&TIM3_Handler,TIM_CHANNEL_2);//����PWMͨ��2
}


//2-R, 3-G, 1-B
//TIM5_CH2/CH3/CH4 PWM�������
void TIM5_RGB_Init(u16 arr,u16 psc){	
	TIM5_Handler.Instance=TIM5;          	//��ʱ��5
    TIM5_Handler.Init.Prescaler=psc;       //��ʱ����Ƶ
    TIM5_Handler.Init.CounterMode=TIM_COUNTERMODE_UP;//���ϼ���ģʽ
    TIM5_Handler.Init.Period=arr;          //�Զ���װ��ֵ
    TIM5_Handler.Init.ClockDivision=TIM_CLOCKDIVISION_DIV1;//0
    HAL_TIM_PWM_Init(&TIM5_Handler);       //��ʼ��PWM
//ģʽѡ��PWM1[���ϼ���ʱCNT<CCRx(���¼���ʱCNT>CCRx),OCREFx=1,��ʱ���OCREFx��OCPolarity��ͬ�������1���������0��PWM2ģʽ������pwm1�෴]	
	TIM5_CHxHandler.OCMode=TIM_OCMODE_PWM1; 
    TIM5_CHxHandler.Pulse=0;          //���ñȽ�ֵ,��ֵ����ȷ��ռ�ձ�
    TIM5_CHxHandler.OCPolarity=TIM_OCPOLARITY_LOW; //����Ƚϼ���Ϊ��
	
    HAL_TIM_PWM_ConfigChannel(&TIM5_Handler,&TIM5_CHxHandler,TIM_CHANNEL_2);//����TIM5ͨ��2��3��4
	HAL_TIM_PWM_ConfigChannel(&TIM5_Handler,&TIM5_CHxHandler,TIM_CHANNEL_3);
	HAL_TIM_PWM_ConfigChannel(&TIM5_Handler,&TIM5_CHxHandler,TIM_CHANNEL_4);
	
    HAL_TIM_PWM_Start(&TIM5_Handler,TIM_CHANNEL_2);//����PWMͨ��2��3��4
	HAL_TIM_PWM_Start(&TIM5_Handler,TIM_CHANNEL_3);
	HAL_TIM_PWM_Start(&TIM5_Handler,TIM_CHANNEL_4);
}











