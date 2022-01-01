#include "hcsr04.h"
#include "timer.h"
#include "delay.h"
#include "stdio.h"
#include "FreeRTOS.h"	//FreeRTOS ʹ��	 
#include "task.h"    //�����ٽ��� 

/********************************************************************************/	 
//������ԭ��
//1����������ģ������Դ�͵أ�
//2.�����崥�����ţ�trig������һ����Ϊ20us�ĸߵ�ƽ������
//3.���뷽����ģ����Զ�����8��40KHz�����������ͬʱ�ز����ţ�echo���˵ĵ�ƽ����0��Ϊ1������ʱӦ��������ʱ����ʱ����
//4.�����������ر�ģ����յ�ʱ���ز��� �Ŷ˵ĵ�ƽ����1��Ϊ0������ʱӦ��ֹͣ��ʱ������������ʱ�����µ����ʱ�伴Ϊ�������ɷ��䵽���ص���ʱ����
//5.���������ڿ����е��ٶ�Ϊ344��/�룬���ɼ��������ľ��롣
//������1��distance_cm = (��ʱ��ʱ��us* 34000cm)/1000000/2)=(us) * 34)/2000);//����340m/s
//2��distance_cm=��us)/58
//�����ڸ��20���϶ȵĿ����еĴ����ٶȴ�ԼΪ343��/�룬��34.300����/�롣
//���ߣ�������һ�µ�λ���㣬34.300����10^6����/΢�롣
//��Ϊ��0.0343����/΢��,�ٻ�һ���Ƕȣ�1/��0.0343 ����/΢�룩����29.15 ΢��/���ס�
//�����ζ�ţ�ÿ291.5΢���ʾ10CM�ľ��롣1���׾���29.15΢�롣
//���Ƿ��ͺ󵽽��յ��ز��������߹�����2���ľ���ѽ��
//����ʵ�ʾ������1���ף���Ӧ58.3΢�롣
//ʵ���������������ǲ�ķ����������յ��ز���ʱ�䣬��ĳ�����ĵ�һ��distanceʵ������ʱ��us��
//���Ի��ɾ���cm��Ҫ����58.3��
//3��Distance =��ʱ��ʱ��us*0.017��
//ע�⣺�˴����жϿ�Ҫ�ɲ�Ҫ���жϵ��������ڼ�ⳬ����ģ���Ƿ񳬾����δ֪������õ������ǲ����ⲿ�жϴ����������ٽ����жϿ���
/********************************************************************************/

u8 overFlowCount = 0;//ms����

void Hcsr04_Init(void){
    GPIO_InitTypeDef  GPIO_Initure;
	HCSR04_CLK();//ʹ��GPIOAʱ��

    //IO��ʼ��
	GPIO_Initure.Pin=HCSR04_TRIG; //���͵�ƽ����
	GPIO_Initure.Mode=GPIO_MODE_OUTPUT_PP;//�������ģʽ
	GPIO_Initure.Pull=GPIO_PULLUP;//����
	GPIO_Initure.Speed=GPIO_SPEED_MEDIUM;//����50MHZGPIO_SPEED_HIGH;
	HAL_GPIO_Init(HCSR04_PORT,&GPIO_Initure);//��ʼ��
	
	HAL_GPIO_WritePin(HCSR04_PORT,HCSR04_TRIG,GPIO_PIN_RESET);//������������
	
    GPIO_Initure.Pin =   HCSR04_ECHO;//���յ�ƽ����
    GPIO_Initure.Mode = GPIO_MODE_INPUT;//��������
    HAL_GPIO_Init(HCSR04_PORT, &GPIO_Initure);  
    HAL_GPIO_WritePin(HCSR04_PORT,HCSR04_ECHO,GPIO_PIN_RESET);//������������ 
//T=4M(max)/340(M/S)=0.011764S,�������ʱ��ΪT1(ms)=T*2=0.023529S=23.529ms,ȡ25ms����
	TIM2_Int_Init(25000-1,84-1);//���ö�ʱ��2��Ϊ�ߵ�ƽ����[25ms�����뱣�ϼ���Ƶ��Ϊ1us] 
}



//tips��static����������������ڶ�������Դ�ļ��ڣ����Բ���Ҫ��ͷ�ļ�������
static void Open_Timer_ForHc(){        //�򿪶�ʱ��
	//TIM_HandleTypeDef TIM2_Handler;//��ʱ�����
	TIM2->CNT = 0;            //��ʱ�����������㣬��Ϊ�����￪ʼ��¼�ߵ�ƽʱ��
    overFlowCount = 0;			  //�����������
    TIM2->CR1|=1<<0;     	  //ʹ�ܶ�ʱ��2
	//__HAL_TIM_ENABLE(&TIM2_Handler);//ʹ�ܶ�ʱ��2	
}
 
static void Close_Timer_ForHc(){        //�رն�ʱ��  
	TIM2->CR1&=~(1<<0);        //�رն�ʱ��2
}
 

//��ȡ��ʱ��ʱ��
u32 Get_Echo_Timer(void){
//	TIM_HandleTypeDef TIM2_Handler;//��ʱ�����
    u32 t = 0;
//    t = msHcCount*1000;//�õ�MS
//    t += __HAL_TIM_GET_COUNTER(&TIM2_Handler);//�õ�US
	t =TIM2->CNT;
    TIM2->CNT = 0;  //��TIM2�����Ĵ����ļ���ֵ����
//    delay_ms(50);
    return t;
}
 

float Hcsr04_Get_Length(void )
{
	int i = 0;
    float length_Temp = 0;
    float sum = 0;
	uint32_t overtime =0; //��ʱ����

#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	taskENTER_CRITICAL();//���񼶱������ر����о��а���Ӳ�������ж�[�и����⣺���жϺ󴮿�1�жϻ�����ʱ] 
#endif	
    while(i++ != 5){ 
	   overtime =0; //����Ϊ��ʱʱ�丳��ֵ
       TRIG_Send = 1;      //���Ϳڸߵ�ƽ���
       delay_us(20);
       TRIG_Send = 0;
       while((ECHO_Recive == 0) && (overtime++ <= OVERTIME));     //�ȴ����տڸߵ�ƽ���
            overtime =0; //����Ϊ��ʱʱ�丳��ֵ
			Open_Timer_ForHc();        //�򿪶�ʱ��
            while((ECHO_Recive) == 1 && (overtime++ <= OVERTIME));
            Close_Timer_ForHc();        //�رն�ʱ��
            length_Temp = Get_Echo_Timer()/58.3;        //��ȡʱ��,�ֱ���Ϊ1us
        sum += length_Temp;
    }
    length_Temp = sum/5.0;//ȡƽ��ֵ
	
#if SYSTEM_SUPPORT_OS	 	//ʹ��OS
	taskEXIT_CRITICAL();//�˳��ٽ��������񼶱������������о��а���Ӳ�������ж�
#endif
//	printf("%d\r\n",lengthTemp);
//	printf("%d\r\n",overFlowCount);
    return length_Temp;
}
