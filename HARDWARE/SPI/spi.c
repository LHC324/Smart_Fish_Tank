#include "spi.h"

SPI_HandleTypeDef SPI_Handler;  //SPI���

//������SPIģ��ĳ�ʼ�����룬���ó�����ģʽ 						  
//SPI�ڳ�ʼ��
//�������Ƕ�SPI�ĳ�ʼ��
void SPI_Init(void)
{
#ifdef USE_FLASH 
	SPI_Handler.Instance=SPI1;                         //SPI1
#else
	SPI_Handler.Instance=SPI2;                         //SPI2,Ӳ��LCD18
#endif
    SPI_Handler.Init.Mode=SPI_MODE_MASTER;             //����SPI����ģʽ������Ϊ��ģʽ
    SPI_Handler.Init.Direction=SPI_DIRECTION_2LINES;   //����SPI�������˫�������ģʽ:SPI����Ϊ˫��ģʽ
    SPI_Handler.Init.DataSize=SPI_DATASIZE_8BIT;       //����SPI�����ݴ�С:SPI���ͽ���8λ֡�ṹ
    SPI_Handler.Init.CLKPolarity=SPI_POLARITY_HIGH;    //����ͬ��ʱ�ӵĿ���״̬Ϊ�ߵ�ƽ
    SPI_Handler.Init.CLKPhase=SPI_PHASE_2EDGE;         //����ͬ��ʱ�ӵĵڶ��������أ��������½������ݱ�����
    SPI_Handler.Init.NSS=SPI_NSS_SOFT;                 //NSS�ź���Ӳ����NSS�ܽţ����������ʹ��SSIλ������:�ڲ�NSS�ź���SSIλ����
    SPI_Handler.Init.BaudRatePrescaler=SPI_BAUDRATEPRESCALER_256;//���岨����Ԥ��Ƶ��ֵ:������Ԥ��ƵֵΪ256
    SPI_Handler.Init.FirstBit=SPI_FIRSTBIT_MSB;        //ָ�����ݴ����MSBλ����LSBλ��ʼ:���ݴ����MSBλ��ʼ
    SPI_Handler.Init.TIMode=SPI_TIMODE_DISABLE;        //�ر�TIģʽ
    SPI_Handler.Init.CRCCalculation=SPI_CRCCALCULATION_DISABLE;//�ر�Ӳ��CRCУ��
    SPI_Handler.Init.CRCPolynomial=7;                  //CRCֵ����Ķ���ʽ
    HAL_SPI_Init(&SPI_Handler);//��ʼ��
    
    __HAL_SPI_ENABLE(&SPI_Handler);                    //ʹ��SPI2
	
    SPI_ReadWriteByte(0Xff);                           //��������
}

//SPI5�ײ�������ʱ��ʹ�ܣ���������
//�˺����ᱻHAL_SPI_Init()����
//hspi:SPI���
void HAL_SPI_MspInit(SPI_HandleTypeDef *hspi)
{
    GPIO_InitTypeDef GPIO_Initure;
    
    __HAL_RCC_GPIOB_CLK_ENABLE();       //ʹ��GPIOBʱ��
   
    
#ifdef USE_FLASH 
	 __HAL_RCC_SPI1_CLK_ENABLE();        //ʹ��SPI1ʱ��
	 //PB3,4,5
    GPIO_Initure.Pin=GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5;
    GPIO_Initure.Mode=GPIO_MODE_AF_PP;              //�����������
    GPIO_Initure.Pull=GPIO_PULLUP;                  //����
    GPIO_Initure.Speed=GPIO_SPEED_FAST;             //����            
    GPIO_Initure.Alternate=GPIO_AF5_SPI1;           //����ΪSPI1
#else
	__HAL_RCC_SPI2_CLK_ENABLE();        //ʹ��SPI2ʱ��
	//PB13,14,15
    GPIO_Initure.Pin=GPIO_PIN_13|GPIO_PIN_15;
    GPIO_Initure.Mode=GPIO_MODE_AF_PP;              //�����������
    GPIO_Initure.Pull=GPIO_PULLUP;                  //����
    GPIO_Initure.Speed=GPIO_SPEED_FAST;             //����            
    GPIO_Initure.Alternate=GPIO_AF5_SPI2;           //����ΪSPI2
#endif
	
   
    HAL_GPIO_Init(GPIOB,&GPIO_Initure);
}

//SPI�ٶ����ú���
//SPI�ٶ�=fAPB1/��Ƶϵ��
//@ref SPI_BaudRate_Prescaler:SPI_BAUDRATEPRESCALER_2~SPI_BAUDRATEPRESCALER_2 256
//fAPB1ʱ��һ��Ϊ42Mhz��
void SPI_SetSpeed(u8 SPI_BaudRatePrescaler)
{
    assert_param(IS_SPI_BAUDRATE_PRESCALER(SPI_BaudRatePrescaler));//�ж���Ч��
    __HAL_SPI_DISABLE(&SPI_Handler);            //�ر�SPI
    SPI_Handler.Instance->CR1&=0XFFC7;          //λ3-5���㣬�������ò�����
    SPI_Handler.Instance->CR1|=SPI_BaudRatePrescaler;//����SPI�ٶ�//������CR1/������CR2
    __HAL_SPI_ENABLE(&SPI_Handler);             //ʹ��SPI
    
}

//SPI2 ��дһ���ֽ�
//TxData:Ҫд����ֽ�
//����ֵ:��ȡ�����ֽ�
u8 SPI_ReadWriteByte(u8 TxData)
{
    u8 Rxdata;
    HAL_SPI_TransmitReceive(&SPI_Handler,&TxData,&Rxdata,1, 1000);  //1B,1000ms     
 	return Rxdata;          		    //�����յ�������		
}




