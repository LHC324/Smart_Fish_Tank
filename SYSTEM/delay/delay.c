#include "delay.h"
#include "sys.h"
#include "gizwits_product.h"//��������������
#include "hal_key.h" //������������
//////////////////////////////////////////////////////////////////////////////////   
//���ʹ��OS,����������ͷ�ļ�����.
#if SYSTEM_SUPPORT_OS
#include "FreeRTOS.h"                   //FreeRTOSʹ��     
#include "task.h"
#include "lvgl.h"
#endif
static u32 fac_us=0;                            //us��ʱ������

#if SYSTEM_SUPPORT_OS       
    static u16 fac_ms=0;                        //ms��ʱ������,��os��,����ÿ�����ĵ�ms��
#endif
 
extern void xPortSysTickHandler(void);
//systick�жϷ�����,ʹ��OSʱ�õ�[�δ�ʱ���ж�]
void SysTick_Handler(void)
{  
	HAL_IncTick();
	if(xTaskGetSchedulerState()!=taskSCHEDULER_NOT_STARTED){//ϵͳ�Ѿ�����
        xPortSysTickHandler(); //ΪFreeRTOS�ṩʱ�ӽ���
		lv_tick_inc(1);		//littleVGL�� 1ms ����
//		
		gizTimerMs(); //������1ms����
		keyHandle((keysTypedef_t *)&keys); //��������
    }
}

//��ʼ���ӳٺ���
//��ʹ��ucos��ʱ��,�˺������ʼ��ucos��ʱ�ӽ���
//SYSTICK��ʱ�ӹ̶�ΪAHBʱ��
//SYSCLK:ϵͳʱ��Ƶ��
void delay_init(u8 SYSCLK)
{
    u32 reload;
    HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);//SysTickƵ��ΪHCLK
    fac_us=SYSCLK;                          //�����Ƿ�ʹ��OS,fac_us����Ҫʹ��
    reload=SYSCLK;                          //ÿ���ӵļ������� ��λΪK    
    reload*=1000000/configTICK_RATE_HZ;     //����configTICK_RATE_HZ�趨���ʱ��
                                            //reloadΪ24λ�Ĵ���,���ֵ:16777216,��180M��,Լ��0.745s����  
    fac_ms=1000/configTICK_RATE_HZ;         //����OS������ʱ�����ٵ�λ     
    SysTick->CTRL|=SysTick_CTRL_TICKINT_Msk;//����SYSTICK�ж�
    SysTick->LOAD=reload;                   //ÿ1/configTICK_RATE_HZ��һ��  
    SysTick->CTRL|=SysTick_CTRL_ENABLE_Msk; //����SYSTICK
}                                   

//��ʱnus
//nus:Ҫ��ʱ��us��.  
//nus:0~190887435(���ֵ��2^32/fac_us@fac_us=22.5)                                        
void delay_us(u32 nus)
{       
    u32 ticks;
    u32 told,tnow,tcnt=0;
    u32 reload=SysTick->LOAD;               //LOAD��ֵ             
    ticks=nus*fac_us;                       //��Ҫ�Ľ����� 
    told=SysTick->VAL;                      //�ս���ʱ�ļ�����ֵ
    while(1)
    {
        tnow=SysTick->VAL;  
        if(tnow!=told)
        {       
            if(tnow<told)tcnt+=told-tnow;   //����ע��һ��SYSTICK��һ���ݼ��ļ������Ϳ�����.
            else tcnt+=reload-tnow+told;        
            told=tnow;
            if(tcnt>=ticks)break;           //ʱ�䳬��/����Ҫ�ӳٵ�ʱ��,���˳�.
        }  
    };                                      
}  

//��ʱnms,�������������
//nms:Ҫ��ʱ��ms��
//nms:0~65535
void delay_ms(u32 nms)
{   
    if(xTaskGetSchedulerState()!=taskSCHEDULER_NOT_STARTED)//ϵͳ�Ѿ�����
    {       
        if(nms>=fac_ms)                     //��ʱ��ʱ�����OS������ʱ������ 
        { 
            vTaskDelay(nms/fac_ms);         //FreeRTOS��ʱ
        }
        nms%=fac_ms;                        //OS�Ѿ��޷��ṩ��ôС����ʱ��,������ͨ��ʽ��ʱ    
    }
    delay_us((u32)(nms*1000));              //��ͨ��ʽ��ʱ
}

//��ʱnms,���������������
//nms:Ҫ��ʱ��ms��
void delay_xms(u32 nms)
{
    u32 i;
    for(i=0;i<nms;i++) delay_us(1000);
}

