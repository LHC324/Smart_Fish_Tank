#line 1 "..\\HARDWARE\\DMA\\dma.c"

















 

 
#line 1 "..\\HARDWARE\\DMA\\dma.h"

















 
 







 
#line 1 "..\\USER\\main.h"



































 
  
 



 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal.h"


















  

 







 
#line 1 "..\\USER\\stm32f4xx_hal_conf.h"

































  

 







 
 

 


 



 





 
 
#line 68 "..\\USER\\stm32f4xx_hal_conf.h"
 





 




 
#line 91 "..\\USER\\stm32f4xx_hal_conf.h"


 




 












 






 







 












 





 

 


      
#line 158 "..\\USER\\stm32f4xx_hal_conf.h"

#line 197 "..\\USER\\stm32f4xx_hal_conf.h"

 



 
 

 




 



 


 

#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"

















 

 







 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_def.h"


















 

 







 
#line 1 "..\\USER\\stm32f4xx.h"











































 



 



 
    






   


 
  


 






 
#line 111 "..\\USER\\stm32f4xx.h"
   


 
#line 123 "..\\USER\\stm32f4xx.h"



 
#line 135 "..\\USER\\stm32f4xx.h"



 



 

#line 1 "..\\USER\\stm32f407xx.h"







































 



 



 
    









 



 








 
  


 




 
typedef enum
{
 
  NonMaskableInt_IRQn         = -14,     
  MemoryManagement_IRQn       = -12,     
  BusFault_IRQn               = -11,     
  UsageFault_IRQn             = -10,     
  SVCall_IRQn                 = -5,      
  DebugMonitor_IRQn           = -4,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      
 
  WWDG_IRQn                   = 0,       
  PVD_IRQn                    = 1,       
  TAMP_STAMP_IRQn             = 2,       
  RTC_WKUP_IRQn               = 3,       
  FLASH_IRQn                  = 4,       
  RCC_IRQn                    = 5,       
  EXTI0_IRQn                  = 6,       
  EXTI1_IRQn                  = 7,       
  EXTI2_IRQn                  = 8,       
  EXTI3_IRQn                  = 9,       
  EXTI4_IRQn                  = 10,      
  DMA1_Stream0_IRQn           = 11,      
  DMA1_Stream1_IRQn           = 12,      
  DMA1_Stream2_IRQn           = 13,      
  DMA1_Stream3_IRQn           = 14,      
  DMA1_Stream4_IRQn           = 15,      
  DMA1_Stream5_IRQn           = 16,      
  DMA1_Stream6_IRQn           = 17,      
  ADC_IRQn                    = 18,      
  CAN1_TX_IRQn                = 19,      
  CAN1_RX0_IRQn               = 20,      
  CAN1_RX1_IRQn               = 21,      
  CAN1_SCE_IRQn               = 22,      
  EXTI9_5_IRQn                = 23,      
  TIM1_BRK_TIM9_IRQn          = 24,      
  TIM1_UP_TIM10_IRQn          = 25,      
  TIM1_TRG_COM_TIM11_IRQn     = 26,      
  TIM1_CC_IRQn                = 27,      
  TIM2_IRQn                   = 28,      
  TIM3_IRQn                   = 29,      
  TIM4_IRQn                   = 30,      
  I2C1_EV_IRQn                = 31,      
  I2C1_ER_IRQn                = 32,      
  I2C2_EV_IRQn                = 33,      
  I2C2_ER_IRQn                = 34,      
  SPI1_IRQn                   = 35,      
  SPI2_IRQn                   = 36,      
  USART1_IRQn                 = 37,      
  USART2_IRQn                 = 38,      
  USART3_IRQn                 = 39,      
  EXTI15_10_IRQn              = 40,      
  RTC_Alarm_IRQn              = 41,      
  OTG_FS_WKUP_IRQn            = 42,      
  TIM8_BRK_TIM12_IRQn         = 43,      
  TIM8_UP_TIM13_IRQn          = 44,      
  TIM8_TRG_COM_TIM14_IRQn     = 45,      
  TIM8_CC_IRQn                = 46,      
  DMA1_Stream7_IRQn           = 47,      
  FSMC_IRQn                   = 48,      
  SDIO_IRQn                   = 49,      
  TIM5_IRQn                   = 50,      
  SPI3_IRQn                   = 51,      
  UART4_IRQn                  = 52,      
  UART5_IRQn                  = 53,      
  TIM6_DAC_IRQn               = 54,      
  TIM7_IRQn                   = 55,      
  DMA2_Stream0_IRQn           = 56,      
  DMA2_Stream1_IRQn           = 57,      
  DMA2_Stream2_IRQn           = 58,      
  DMA2_Stream3_IRQn           = 59,      
  DMA2_Stream4_IRQn           = 60,      
  ETH_IRQn                    = 61,      
  ETH_WKUP_IRQn               = 62,      
  CAN2_TX_IRQn                = 63,      
  CAN2_RX0_IRQn               = 64,      
  CAN2_RX1_IRQn               = 65,      
  CAN2_SCE_IRQn               = 66,      
  OTG_FS_IRQn                 = 67,      
  DMA2_Stream5_IRQn           = 68,      
  DMA2_Stream6_IRQn           = 69,      
  DMA2_Stream7_IRQn           = 70,      
  USART6_IRQn                 = 71,      
  I2C3_EV_IRQn                = 72,      
  I2C3_ER_IRQn                = 73,      
  OTG_HS_EP1_OUT_IRQn         = 74,      
  OTG_HS_EP1_IN_IRQn          = 75,      
  OTG_HS_WKUP_IRQn            = 76,      
  OTG_HS_IRQn                 = 77,      
  DCMI_IRQn                   = 78,      
  RNG_IRQn                    = 80,      
  FPU_IRQn                    = 81       
} IRQn_Type;
 




 

#line 1 "..\\CORE\\core_cm4.h"
 




 
















 










#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 35 "..\\CORE\\core_cm4.h"

















 




 



 

#line 1 "..\\CORE\\cmsis_version.h"
 




 
















 










 
#line 64 "..\\CORE\\core_cm4.h"

 









 
#line 87 "..\\CORE\\core_cm4.h"

#line 161 "..\\CORE\\core_cm4.h"

#line 1 "..\\CORE\\cmsis_compiler.h"
 




 
















 




#line 29 "..\\CORE\\cmsis_compiler.h"



 
#line 1 "..\\CORE\\cmsis_armcc.h"
 




 
















 









 













   
   


 
#line 103 "..\\CORE\\cmsis_armcc.h"

 



 





 
 






 
 





 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}






 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}






 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}






 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}






 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}






 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}






 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}






 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}






 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}






 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}






 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}









 







 







 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}






 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xFFU);
}







 
static __inline void __set_BASEPRI_MAX(uint32_t basePri)
{
  register uint32_t __regBasePriMax      __asm("basepri_max");
  __regBasePriMax = (basePri & 0xFFU);
}






 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}






 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1U);
}









 
static __inline uint32_t __get_FPSCR(void)
{


  register uint32_t __regfpscr         __asm("fpscr");
  return(__regfpscr);



}






 
static __inline void __set_FPSCR(uint32_t fpscr)
{


  register uint32_t __regfpscr         __asm("fpscr");
  __regfpscr = (fpscr);



}


 


 



 




 






 







 






 








 










 










 






                  





 








 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int16_t __REVSH(int16_t value)
{
  revsh r0, r0
  bx lr
}









 









 








 
#line 532 "..\\CORE\\cmsis_armcc.h"







 











 












 












 














 














 














 










 









 









 









 

__attribute__((section(".rrx_text"))) static __inline __asm uint32_t __RRX(uint32_t value)
{
  rrx r0, r0
  bx lr
}








 








 








 








 








 








 


#line 780 "..\\CORE\\cmsis_armcc.h"

   


 



 



#line 851 "..\\CORE\\cmsis_armcc.h"











 


#line 35 "..\\CORE\\cmsis_compiler.h"




 
#line 263 "..\\CORE\\cmsis_compiler.h"




#line 163 "..\\CORE\\core_cm4.h"

















 
#line 207 "..\\CORE\\core_cm4.h"

 






 
#line 223 "..\\CORE\\core_cm4.h"

 




 













 



 






 



 
typedef union
{
  struct
  {
    uint32_t _reserved0:16;               
    uint32_t GE:4;                        
    uint32_t _reserved1:7;                
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;

 





















 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;

 






 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:1;                
    uint32_t ICI_IT_1:6;                  
    uint32_t GE:4;                        
    uint32_t _reserved1:4;                
    uint32_t T:1;                         
    uint32_t ICI_IT_2:2;                  
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;

 

































 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 









 







 



 
typedef struct
{
  volatile uint32_t ISER[8U];                
        uint32_t RESERVED0[24U];
  volatile uint32_t ICER[8U];                
        uint32_t RSERVED1[24U];
  volatile uint32_t ISPR[8U];                
        uint32_t RESERVED2[24U];
  volatile uint32_t ICPR[8U];                
        uint32_t RESERVED3[24U];
  volatile uint32_t IABR[8U];                
        uint32_t RESERVED4[56U];
  volatile uint8_t  IP[240U];                
        uint32_t RESERVED5[644U];
  volatile  uint32_t STIR;                    
}  NVIC_Type;

 



 







 



 
typedef struct
{
  volatile const  uint32_t CPUID;                   
  volatile uint32_t ICSR;                    
  volatile uint32_t VTOR;                    
  volatile uint32_t AIRCR;                   
  volatile uint32_t SCR;                     
  volatile uint32_t CCR;                     
  volatile uint8_t  SHP[12U];                
  volatile uint32_t SHCSR;                   
  volatile uint32_t CFSR;                    
  volatile uint32_t HFSR;                    
  volatile uint32_t DFSR;                    
  volatile uint32_t MMFAR;                   
  volatile uint32_t BFAR;                    
  volatile uint32_t AFSR;                    
  volatile const  uint32_t PFR[2U];                 
  volatile const  uint32_t DFR;                     
  volatile const  uint32_t ADR;                     
  volatile const  uint32_t MMFR[4U];                
  volatile const  uint32_t ISAR[5U];                
        uint32_t RESERVED0[5U];
  volatile uint32_t CPACR;                   
} SCB_Type;

 















 






























 



 





















 









 


















 










































 









 


















 





















 


















 









 















 







 



 
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile const  uint32_t ICTR;                    
  volatile uint32_t ACTLR;                   
} SCnSCB_Type;

 



 















 







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t LOAD;                    
  volatile uint32_t VAL;                     
  volatile const  uint32_t CALIB;                   
} SysTick_Type;

 












 



 



 









 







 



 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                  
    volatile  uint16_t   u16;                 
    volatile  uint32_t   u32;                 
  }  PORT [32U];                          
        uint32_t RESERVED0[864U];
  volatile uint32_t TER;                     
        uint32_t RESERVED1[15U];
  volatile uint32_t TPR;                     
        uint32_t RESERVED2[15U];
  volatile uint32_t TCR;                     
        uint32_t RESERVED3[29U];
  volatile  uint32_t IWR;                     
  volatile const  uint32_t IRR;                     
  volatile uint32_t IMCR;                    
        uint32_t RESERVED4[43U];
  volatile  uint32_t LAR;                     
  volatile const  uint32_t LSR;                     
        uint32_t RESERVED5[6U];
  volatile const  uint32_t PID4;                    
  volatile const  uint32_t PID5;                    
  volatile const  uint32_t PID6;                    
  volatile const  uint32_t PID7;                    
  volatile const  uint32_t PID0;                    
  volatile const  uint32_t PID1;                    
  volatile const  uint32_t PID2;                    
  volatile const  uint32_t PID3;                    
  volatile const  uint32_t CID0;                    
  volatile const  uint32_t CID1;                    
  volatile const  uint32_t CID2;                    
  volatile const  uint32_t CID3;                    
} ITM_Type;

 



 



























 



 



 



 









   







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t CYCCNT;                  
  volatile uint32_t CPICNT;                  
  volatile uint32_t EXCCNT;                  
  volatile uint32_t SLEEPCNT;                
  volatile uint32_t LSUCNT;                  
  volatile uint32_t FOLDCNT;                 
  volatile const  uint32_t PCSR;                    
  volatile uint32_t COMP0;                   
  volatile uint32_t MASK0;                   
  volatile uint32_t FUNCTION0;               
        uint32_t RESERVED0[1U];
  volatile uint32_t COMP1;                   
  volatile uint32_t MASK1;                   
  volatile uint32_t FUNCTION1;               
        uint32_t RESERVED1[1U];
  volatile uint32_t COMP2;                   
  volatile uint32_t MASK2;                   
  volatile uint32_t FUNCTION2;               
        uint32_t RESERVED2[1U];
  volatile uint32_t COMP3;                   
  volatile uint32_t MASK3;                   
  volatile uint32_t FUNCTION3;               
} DWT_Type;

 






















































 



 



 



 



 



 



 



























   







 



 
typedef struct
{
  volatile const  uint32_t SSPSR;                   
  volatile uint32_t CSPSR;                   
        uint32_t RESERVED0[2U];
  volatile uint32_t ACPR;                    
        uint32_t RESERVED1[55U];
  volatile uint32_t SPPR;                    
        uint32_t RESERVED2[131U];
  volatile const  uint32_t FFSR;                    
  volatile uint32_t FFCR;                    
  volatile const  uint32_t FSCR;                    
        uint32_t RESERVED3[759U];
  volatile const  uint32_t TRIGGER;                 
  volatile const  uint32_t FIFO0;                   
  volatile const  uint32_t ITATBCTR2;               
        uint32_t RESERVED4[1U];
  volatile const  uint32_t ITATBCTR0;               
  volatile const  uint32_t FIFO1;                   
  volatile uint32_t ITCTRL;                  
        uint32_t RESERVED5[39U];
  volatile uint32_t CLAIMSET;                
  volatile uint32_t CLAIMCLR;                
        uint32_t RESERVED7[8U];
  volatile const  uint32_t DEVID;                   
  volatile const  uint32_t DEVTYPE;                 
} TPI_Type;

 



 



 












 






 



 





















 






 





















 






 



 


















 






   








 



 
typedef struct
{
  volatile const  uint32_t TYPE;                    
  volatile uint32_t CTRL;                    
  volatile uint32_t RNR;                     
  volatile uint32_t RBAR;                    
  volatile uint32_t RASR;                    
  volatile uint32_t RBAR_A1;                 
  volatile uint32_t RASR_A1;                 
  volatile uint32_t RBAR_A2;                 
  volatile uint32_t RASR_A2;                 
  volatile uint32_t RBAR_A3;                 
  volatile uint32_t RASR_A3;                 
} MPU_Type;



 









 









 



 









 






























 








 



 
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile uint32_t FPCCR;                   
  volatile uint32_t FPCAR;                   
  volatile uint32_t FPDSCR;                  
  volatile const  uint32_t MVFR0;                   
  volatile const  uint32_t MVFR1;                   
} FPU_Type;

 



























 



 












 
























 












 







 



 
typedef struct
{
  volatile uint32_t DHCSR;                   
  volatile  uint32_t DCRSR;                   
  volatile uint32_t DCRDR;                   
  volatile uint32_t DEMCR;                   
} CoreDebug_Type;

 




































 






 







































 







 






 







 


 







 

 
#line 1562 "..\\CORE\\core_cm4.h"

#line 1571 "..\\CORE\\core_cm4.h"









 










 


 



 





 

#line 1625 "..\\CORE\\core_cm4.h"

#line 1635 "..\\CORE\\core_cm4.h"




 
#line 1646 "..\\CORE\\core_cm4.h"










 
static __inline void __NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);              

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((uint32_t)((0xFFFFUL << 16U) | (7UL << 8U)));  
  reg_value  =  (reg_value                                   |
                ((uint32_t)0x5FAUL << 16U) |
                (PriorityGroupTmp << 8U)  );               
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}






 
static __inline uint32_t __NVIC_GetPriorityGrouping(void)
{
  return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) >> 8U));
}







 
static __inline void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}









 
static __inline uint32_t __NVIC_GetEnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}







 
static __inline void __NVIC_DisableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);
    do { __schedule_barrier(); __isb(0xF); __schedule_barrier(); } while (0U);
  }
}









 
static __inline uint32_t __NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}







 
static __inline void __NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}







 
static __inline void __NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}









 
static __inline uint32_t __NVIC_GetActive(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}










 
static __inline void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - 4U)) & (uint32_t)0xFFUL);
  }
  else
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - 4U)) & (uint32_t)0xFFUL);
  }
}










 
static __inline uint32_t __NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) >= 0)
  {
    return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)]               >> (8U - 4U)));
  }
  else
  {
    return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] >> (8U - 4U)));
  }
}












 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4U)) ? (uint32_t)(4U) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4U)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4U));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
         );
}












 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4U)) ? (uint32_t)(4U) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4U)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4U));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL);
}










 
static __inline void __NVIC_SetVector(IRQn_Type IRQn, uint32_t vector)
{
  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  vectors[(int32_t)IRQn + 16] = vector;
}









 
static __inline uint32_t __NVIC_GetVector(IRQn_Type IRQn)
{
  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  return vectors[(int32_t)IRQn + 16];
}





 
__declspec(noreturn) static __inline void __NVIC_SystemReset(void)
{
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);                                                          
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = (uint32_t)((0x5FAUL << 16U)    |
                           (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) |
                            (1UL << 2U)    );          
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);                                                           

  for(;;)                                                            
  {
    __nop();
  }
}

 

 



#line 1 "..\\CORE\\mpu_armv7.h"





 
















 
 





 



#line 62 "..\\CORE\\mpu_armv7.h"

#line 69 "..\\CORE\\mpu_armv7.h"





 












   














 




  











                          









  










  












  




 




 




 




 





 
typedef struct {
  uint32_t RBAR; 
  uint32_t RASR; 
} ARM_MPU_Region_t;
    


 
static __inline void ARM_MPU_Enable(uint32_t MPU_Control)
{
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);
  do { __schedule_barrier(); __isb(0xF); __schedule_barrier(); } while (0U);
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL = MPU_Control | (1UL );

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHCSR |= (1UL << 16U);

}


 
static __inline void ARM_MPU_Disable(void)
{
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);
  do { __schedule_barrier(); __isb(0xF); __schedule_barrier(); } while (0U);

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHCSR &= ~(1UL << 16U);

  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL  &= ~(1UL );
}



 
static __inline void ARM_MPU_ClrRegion(uint32_t rnr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RNR = rnr;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = 0U;
}




    
static __inline void ARM_MPU_SetRegion(uint32_t rbar, uint32_t rasr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR = rbar;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = rasr;
}





    
static __inline void ARM_MPU_SetRegionEx(uint32_t rnr, uint32_t rbar, uint32_t rasr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RNR = rnr;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR = rbar;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = rasr;
}





 
static __inline void orderedCpy(volatile uint32_t* dst, const uint32_t* __restrict src, uint32_t len)
{
  uint32_t i;
  for (i = 0U; i < len; ++i) 
  {
    dst[i] = src[i];
  }
}




 
static __inline void ARM_MPU_Load(ARM_MPU_Region_t const* table, uint32_t cnt) 
{
  const uint32_t rowWordSize = sizeof(ARM_MPU_Region_t)/4U;
  while (cnt > 4U) {
    orderedCpy(&(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR), &(table->RBAR), 4U*rowWordSize);
    table += 4U;
    cnt -= 4U;
  }
  orderedCpy(&(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR), &(table->RBAR), cnt*rowWordSize);
}

#line 1961 "..\\CORE\\core_cm4.h"




 





 








 
static __inline uint32_t SCB_GetFPUType(void)
{
  uint32_t mvfr0;

  mvfr0 = ((FPU_Type *) ((0xE000E000UL) + 0x0F30UL) )->MVFR0;
  if      ((mvfr0 & ((0xFUL << 4U) | (0xFUL << 8U))) == 0x020U)
  {
    return 1U;            
  }
  else
  {
    return 0U;            
  }
}


 



 





 













 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);                                                    
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (uint32_t)(ticks - 1UL);                          
  __NVIC_SetPriority (SysTick_IRQn, (1UL << 4U) - 1UL);  
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0UL;                                              
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2U) |
                   (1UL << 1U)   |
                   (1UL );                          
  return (0UL);                                                      
}



 



 





 

extern volatile int32_t ITM_RxBuffer;                               










 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&       
      ((((ITM_Type *) (0xE0000000UL) )->TER & 1UL               ) != 0UL)   )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0U].u32 == 0UL)
    {
      __nop();
    }
    ((ITM_Type *) (0xE0000000UL) )->PORT[0U].u8 = (uint8_t)ch;
  }
  return (ch);
}







 
static __inline int32_t ITM_ReceiveChar (void)
{
  int32_t ch = -1;                            

  if (ITM_RxBuffer != ((int32_t)0x5AA55AA5U))
  {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = ((int32_t)0x5AA55AA5U);        
  }

  return (ch);
}







 
static __inline int32_t ITM_CheckChar (void)
{

  if (ITM_RxBuffer == ((int32_t)0x5AA55AA5U))
  {
    return (0);                               
  }
  else
  {
    return (1);                               
  }
}

 










#line 184 "..\\USER\\stm32f407xx.h"
#line 1 "..\\USER\\system_stm32f4xx.h"

































  



 



   
  


 









 



 




 
  






 
extern uint32_t SystemCoreClock;           

extern const uint8_t  AHBPrescTable[16];     
extern const uint8_t  APBPrescTable[8];      



 



 



 



 



 



 
  
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);


 









 
  


   
 
#line 185 "..\\USER\\stm32f407xx.h"
#line 186 "..\\USER\\stm32f407xx.h"



    



 

typedef struct
{
  volatile uint32_t SR;      
  volatile uint32_t CR1;     
  volatile uint32_t CR2;     
  volatile uint32_t SMPR1;   
  volatile uint32_t SMPR2;   
  volatile uint32_t JOFR1;   
  volatile uint32_t JOFR2;   
  volatile uint32_t JOFR3;   
  volatile uint32_t JOFR4;   
  volatile uint32_t HTR;     
  volatile uint32_t LTR;     
  volatile uint32_t SQR1;    
  volatile uint32_t SQR2;    
  volatile uint32_t SQR3;    
  volatile uint32_t JSQR;    
  volatile uint32_t JDR1;    
  volatile uint32_t JDR2;    
  volatile uint32_t JDR3;    
  volatile uint32_t JDR4;    
  volatile uint32_t DR;      
} ADC_TypeDef;

typedef struct
{
  volatile uint32_t CSR;     
  volatile uint32_t CCR;     
  volatile uint32_t CDR;    
 
} ADC_Common_TypeDef;




 

typedef struct
{
  volatile uint32_t TIR;   
  volatile uint32_t TDTR;  
  volatile uint32_t TDLR;  
  volatile uint32_t TDHR;  
} CAN_TxMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t RIR;   
  volatile uint32_t RDTR;  
  volatile uint32_t RDLR;  
  volatile uint32_t RDHR;  
} CAN_FIFOMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t FR1;  
  volatile uint32_t FR2;  
} CAN_FilterRegister_TypeDef;



 
  
typedef struct
{
  volatile uint32_t              MCR;                  
  volatile uint32_t              MSR;                  
  volatile uint32_t              TSR;                  
  volatile uint32_t              RF0R;                 
  volatile uint32_t              RF1R;                 
  volatile uint32_t              IER;                  
  volatile uint32_t              ESR;                  
  volatile uint32_t              BTR;                  
  uint32_t                   RESERVED0[88];        
  CAN_TxMailBox_TypeDef      sTxMailBox[3];        
  CAN_FIFOMailBox_TypeDef    sFIFOMailBox[2];      
  uint32_t                   RESERVED1[12];        
  volatile uint32_t              FMR;                  
  volatile uint32_t              FM1R;                 
  uint32_t                   RESERVED2;            
  volatile uint32_t              FS1R;                 
  uint32_t                   RESERVED3;            
  volatile uint32_t              FFA1R;                
  uint32_t                   RESERVED4;            
  volatile uint32_t              FA1R;                 
  uint32_t                   RESERVED5[8];          
  CAN_FilterRegister_TypeDef sFilterRegister[28];  
} CAN_TypeDef;



 

typedef struct
{
  volatile uint32_t DR;          
  volatile uint8_t  IDR;         
  uint8_t       RESERVED0;   
  uint16_t      RESERVED1;   
  volatile uint32_t CR;          
} CRC_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;        
  volatile uint32_t SWTRIGR;   
  volatile uint32_t DHR12R1;   
  volatile uint32_t DHR12L1;   
  volatile uint32_t DHR8R1;    
  volatile uint32_t DHR12R2;   
  volatile uint32_t DHR12L2;   
  volatile uint32_t DHR8R2;    
  volatile uint32_t DHR12RD;   
  volatile uint32_t DHR12LD;   
  volatile uint32_t DHR8RD;    
  volatile uint32_t DOR1;      
  volatile uint32_t DOR2;      
  volatile uint32_t SR;        
} DAC_TypeDef;



 

typedef struct
{
  volatile uint32_t IDCODE;   
  volatile uint32_t CR;       
  volatile uint32_t APB1FZ;   
  volatile uint32_t APB2FZ;   
}DBGMCU_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;        
  volatile uint32_t SR;        
  volatile uint32_t RISR;      
  volatile uint32_t IER;       
  volatile uint32_t MISR;      
  volatile uint32_t ICR;       
  volatile uint32_t ESCR;      
  volatile uint32_t ESUR;      
  volatile uint32_t CWSTRTR;   
  volatile uint32_t CWSIZER;   
  volatile uint32_t DR;        
} DCMI_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;      
  volatile uint32_t NDTR;    
  volatile uint32_t PAR;     
  volatile uint32_t M0AR;    
  volatile uint32_t M1AR;    
  volatile uint32_t FCR;     
} DMA_Stream_TypeDef;

typedef struct
{
  volatile uint32_t LISR;    
  volatile uint32_t HISR;    
  volatile uint32_t LIFCR;   
  volatile uint32_t HIFCR;   
} DMA_TypeDef;



 

typedef struct
{
  volatile uint32_t MACCR;
  volatile uint32_t MACFFR;
  volatile uint32_t MACHTHR;
  volatile uint32_t MACHTLR;
  volatile uint32_t MACMIIAR;
  volatile uint32_t MACMIIDR;
  volatile uint32_t MACFCR;
  volatile uint32_t MACVLANTR;              
  uint32_t      RESERVED0[2];
  volatile uint32_t MACRWUFFR;              
  volatile uint32_t MACPMTCSR;
  uint32_t      RESERVED1;
  volatile uint32_t MACDBGR;
  volatile uint32_t MACSR;                  
  volatile uint32_t MACIMR;
  volatile uint32_t MACA0HR;
  volatile uint32_t MACA0LR;
  volatile uint32_t MACA1HR;
  volatile uint32_t MACA1LR;
  volatile uint32_t MACA2HR;
  volatile uint32_t MACA2LR;
  volatile uint32_t MACA3HR;
  volatile uint32_t MACA3LR;                
  uint32_t      RESERVED2[40];
  volatile uint32_t MMCCR;                  
  volatile uint32_t MMCRIR;
  volatile uint32_t MMCTIR;
  volatile uint32_t MMCRIMR;
  volatile uint32_t MMCTIMR;                
  uint32_t      RESERVED3[14];
  volatile uint32_t MMCTGFSCCR;             
  volatile uint32_t MMCTGFMSCCR;
  uint32_t      RESERVED4[5];
  volatile uint32_t MMCTGFCR;
  uint32_t      RESERVED5[10];
  volatile uint32_t MMCRFCECR;
  volatile uint32_t MMCRFAECR;
  uint32_t      RESERVED6[10];
  volatile uint32_t MMCRGUFCR;
  uint32_t      RESERVED7[334];
  volatile uint32_t PTPTSCR;
  volatile uint32_t PTPSSIR;
  volatile uint32_t PTPTSHR;
  volatile uint32_t PTPTSLR;
  volatile uint32_t PTPTSHUR;
  volatile uint32_t PTPTSLUR;
  volatile uint32_t PTPTSAR;
  volatile uint32_t PTPTTHR;
  volatile uint32_t PTPTTLR;
  volatile uint32_t RESERVED8;
  volatile uint32_t PTPTSSR;
  uint32_t      RESERVED9[565];
  volatile uint32_t DMABMR;
  volatile uint32_t DMATPDR;
  volatile uint32_t DMARPDR;
  volatile uint32_t DMARDLAR;
  volatile uint32_t DMATDLAR;
  volatile uint32_t DMASR;
  volatile uint32_t DMAOMR;
  volatile uint32_t DMAIER;
  volatile uint32_t DMAMFBOCR;
  volatile uint32_t DMARSWTR;
  uint32_t      RESERVED10[8];
  volatile uint32_t DMACHTDR;
  volatile uint32_t DMACHRDR;
  volatile uint32_t DMACHTBAR;
  volatile uint32_t DMACHRBAR;
} ETH_TypeDef;



 

typedef struct
{
  volatile uint32_t IMR;     
  volatile uint32_t EMR;     
  volatile uint32_t RTSR;    
  volatile uint32_t FTSR;    
  volatile uint32_t SWIER;   
  volatile uint32_t PR;      
} EXTI_TypeDef;



 

typedef struct
{
  volatile uint32_t ACR;       
  volatile uint32_t KEYR;      
  volatile uint32_t OPTKEYR;   
  volatile uint32_t SR;        
  volatile uint32_t CR;        
  volatile uint32_t OPTCR;     
  volatile uint32_t OPTCR1;    
} FLASH_TypeDef;





 

typedef struct
{
  volatile uint32_t BTCR[8];        
} FSMC_Bank1_TypeDef;



 

typedef struct
{
  volatile uint32_t BWTR[7];     
} FSMC_Bank1E_TypeDef;



 
  
typedef struct
{
  volatile uint32_t PCR2;        
  volatile uint32_t SR2;         
  volatile uint32_t PMEM2;       
  volatile uint32_t PATT2;       
  uint32_t      RESERVED0;   
  volatile uint32_t ECCR2;       
  uint32_t      RESERVED1;   
  uint32_t      RESERVED2;   
  volatile uint32_t PCR3;        
  volatile uint32_t SR3;         
  volatile uint32_t PMEM3;       
  volatile uint32_t PATT3;       
  uint32_t      RESERVED3;   
  volatile uint32_t ECCR3;       
} FSMC_Bank2_3_TypeDef;



 

typedef struct
{
  volatile uint32_t PCR4;        
  volatile uint32_t SR4;         
  volatile uint32_t PMEM4;       
  volatile uint32_t PATT4;       
  volatile uint32_t PIO4;        
} FSMC_Bank4_TypeDef; 



 

typedef struct
{
  volatile uint32_t MODER;     
  volatile uint32_t OTYPER;    
  volatile uint32_t OSPEEDR;   
  volatile uint32_t PUPDR;     
  volatile uint32_t IDR;       
  volatile uint32_t ODR;       
  volatile uint32_t BSRR;      
  volatile uint32_t LCKR;      
  volatile uint32_t AFR[2];    
} GPIO_TypeDef;



 

typedef struct
{
  volatile uint32_t MEMRMP;        
  volatile uint32_t PMC;           
  volatile uint32_t EXTICR[4];     
  uint32_t      RESERVED[2];   
  volatile uint32_t CMPCR;         
} SYSCFG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR1;         
  volatile uint32_t CR2;         
  volatile uint32_t OAR1;        
  volatile uint32_t OAR2;        
  volatile uint32_t DR;          
  volatile uint32_t SR1;         
  volatile uint32_t SR2;         
  volatile uint32_t CCR;         
  volatile uint32_t TRISE;       
} I2C_TypeDef;



 

typedef struct
{
  volatile uint32_t KR;    
  volatile uint32_t PR;    
  volatile uint32_t RLR;   
  volatile uint32_t SR;    
} IWDG_TypeDef;




 

typedef struct
{
  volatile uint32_t CR;    
  volatile uint32_t CSR;   
} PWR_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;             
  volatile uint32_t PLLCFGR;        
  volatile uint32_t CFGR;           
  volatile uint32_t CIR;            
  volatile uint32_t AHB1RSTR;       
  volatile uint32_t AHB2RSTR;       
  volatile uint32_t AHB3RSTR;       
  uint32_t      RESERVED0;      
  volatile uint32_t APB1RSTR;       
  volatile uint32_t APB2RSTR;       
  uint32_t      RESERVED1[2];   
  volatile uint32_t AHB1ENR;        
  volatile uint32_t AHB2ENR;        
  volatile uint32_t AHB3ENR;        
  uint32_t      RESERVED2;      
  volatile uint32_t APB1ENR;        
  volatile uint32_t APB2ENR;        
  uint32_t      RESERVED3[2];   
  volatile uint32_t AHB1LPENR;      
  volatile uint32_t AHB2LPENR;      
  volatile uint32_t AHB3LPENR;      
  uint32_t      RESERVED4;      
  volatile uint32_t APB1LPENR;      
  volatile uint32_t APB2LPENR;      
  uint32_t      RESERVED5[2];   
  volatile uint32_t BDCR;           
  volatile uint32_t CSR;            
  uint32_t      RESERVED6[2];   
  volatile uint32_t SSCGR;          
  volatile uint32_t PLLI2SCFGR;     
} RCC_TypeDef;



 

typedef struct
{
  volatile uint32_t TR;       
  volatile uint32_t DR;       
  volatile uint32_t CR;       
  volatile uint32_t ISR;      
  volatile uint32_t PRER;     
  volatile uint32_t WUTR;     
  volatile uint32_t CALIBR;   
  volatile uint32_t ALRMAR;   
  volatile uint32_t ALRMBR;   
  volatile uint32_t WPR;      
  volatile uint32_t SSR;      
  volatile uint32_t SHIFTR;   
  volatile uint32_t TSTR;     
  volatile uint32_t TSDR;     
  volatile uint32_t TSSSR;    
  volatile uint32_t CALR;     
  volatile uint32_t TAFCR;    
  volatile uint32_t ALRMASSR; 
  volatile uint32_t ALRMBSSR; 
  uint32_t RESERVED7;     
  volatile uint32_t BKP0R;    
  volatile uint32_t BKP1R;    
  volatile uint32_t BKP2R;    
  volatile uint32_t BKP3R;    
  volatile uint32_t BKP4R;    
  volatile uint32_t BKP5R;    
  volatile uint32_t BKP6R;    
  volatile uint32_t BKP7R;    
  volatile uint32_t BKP8R;    
  volatile uint32_t BKP9R;    
  volatile uint32_t BKP10R;   
  volatile uint32_t BKP11R;   
  volatile uint32_t BKP12R;   
  volatile uint32_t BKP13R;   
  volatile uint32_t BKP14R;   
  volatile uint32_t BKP15R;   
  volatile uint32_t BKP16R;   
  volatile uint32_t BKP17R;   
  volatile uint32_t BKP18R;   
  volatile uint32_t BKP19R;   
} RTC_TypeDef;



 

typedef struct
{
  volatile uint32_t POWER;                  
  volatile uint32_t CLKCR;                  
  volatile uint32_t ARG;                    
  volatile uint32_t CMD;                    
  volatile const uint32_t  RESPCMD;         
  volatile const uint32_t  RESP1;           
  volatile const uint32_t  RESP2;           
  volatile const uint32_t  RESP3;           
  volatile const uint32_t  RESP4;           
  volatile uint32_t DTIMER;                 
  volatile uint32_t DLEN;                   
  volatile uint32_t DCTRL;                  
  volatile const uint32_t  DCOUNT;          
  volatile const uint32_t  STA;             
  volatile uint32_t ICR;                    
  volatile uint32_t MASK;                   
  uint32_t      RESERVED0[2];           
  volatile const uint32_t  FIFOCNT;         
  uint32_t      RESERVED1[13];          
  volatile uint32_t FIFO;                   
} SDIO_TypeDef;



 

typedef struct
{
  volatile uint32_t CR1;         
  volatile uint32_t CR2;         
  volatile uint32_t SR;          
  volatile uint32_t DR;          
  volatile uint32_t CRCPR;       
  volatile uint32_t RXCRCR;      
  volatile uint32_t TXCRCR;      
  volatile uint32_t I2SCFGR;     
  volatile uint32_t I2SPR;       
} SPI_TypeDef;




 

typedef struct
{
  volatile uint32_t CR1;          
  volatile uint32_t CR2;          
  volatile uint32_t SMCR;         
  volatile uint32_t DIER;         
  volatile uint32_t SR;           
  volatile uint32_t EGR;          
  volatile uint32_t CCMR1;        
  volatile uint32_t CCMR2;        
  volatile uint32_t CCER;         
  volatile uint32_t CNT;          
  volatile uint32_t PSC;          
  volatile uint32_t ARR;          
  volatile uint32_t RCR;          
  volatile uint32_t CCR1;         
  volatile uint32_t CCR2;         
  volatile uint32_t CCR3;         
  volatile uint32_t CCR4;         
  volatile uint32_t BDTR;         
  volatile uint32_t DCR;          
  volatile uint32_t DMAR;         
  volatile uint32_t OR;           
} TIM_TypeDef;



 
 
typedef struct
{
  volatile uint32_t SR;          
  volatile uint32_t DR;          
  volatile uint32_t BRR;         
  volatile uint32_t CR1;         
  volatile uint32_t CR2;         
  volatile uint32_t CR3;         
  volatile uint32_t GTPR;        
} USART_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;    
  volatile uint32_t CFR;   
  volatile uint32_t SR;    
} WWDG_TypeDef;



 
  
typedef struct 
{
  volatile uint32_t CR;   
  volatile uint32_t SR;   
  volatile uint32_t DR;   
} RNG_TypeDef;



 
typedef struct
{
  volatile uint32_t GOTGCTL;               
  volatile uint32_t GOTGINT;               
  volatile uint32_t GAHBCFG;               
  volatile uint32_t GUSBCFG;               
  volatile uint32_t GRSTCTL;               
  volatile uint32_t GINTSTS;               
  volatile uint32_t GINTMSK;               
  volatile uint32_t GRXSTSR;               
  volatile uint32_t GRXSTSP;               
  volatile uint32_t GRXFSIZ;               
  volatile uint32_t DIEPTXF0_HNPTXFSIZ;    
  volatile uint32_t HNPTXSTS;              
  uint32_t Reserved30[2];              
  volatile uint32_t GCCFG;                 
  volatile uint32_t CID;                   
  uint32_t  Reserved40[48];            
  volatile uint32_t HPTXFSIZ;              
  volatile uint32_t DIEPTXF[0x0F];         
} USB_OTG_GlobalTypeDef;



 
typedef struct 
{
  volatile uint32_t DCFG;             
  volatile uint32_t DCTL;             
  volatile uint32_t DSTS;             
  uint32_t Reserved0C;            
  volatile uint32_t DIEPMSK;          
  volatile uint32_t DOEPMSK;          
  volatile uint32_t DAINT;            
  volatile uint32_t DAINTMSK;         
  uint32_t  Reserved20;           
  uint32_t Reserved9;             
  volatile uint32_t DVBUSDIS;         
  volatile uint32_t DVBUSPULSE;       
  volatile uint32_t DTHRCTL;          
  volatile uint32_t DIEPEMPMSK;       
  volatile uint32_t DEACHINT;         
  volatile uint32_t DEACHMSK;         
  uint32_t Reserved40;            
  volatile uint32_t DINEP1MSK;        
  uint32_t  Reserved44[15];       
  volatile uint32_t DOUTEP1MSK;       
} USB_OTG_DeviceTypeDef;



 
typedef struct 
{
  volatile uint32_t DIEPCTL;            
  uint32_t Reserved04;              
  volatile uint32_t DIEPINT;            
  uint32_t Reserved0C;              
  volatile uint32_t DIEPTSIZ;           
  volatile uint32_t DIEPDMA;            
  volatile uint32_t DTXFSTS;            
  uint32_t Reserved18;              
} USB_OTG_INEndpointTypeDef;



 
typedef struct 
{
  volatile uint32_t DOEPCTL;        
  uint32_t Reserved04;          
  volatile uint32_t DOEPINT;        
  uint32_t Reserved0C;          
  volatile uint32_t DOEPTSIZ;       
  volatile uint32_t DOEPDMA;        
  uint32_t Reserved18[2];       
} USB_OTG_OUTEndpointTypeDef;



 
typedef struct 
{
  volatile uint32_t HCFG;              
  volatile uint32_t HFIR;              
  volatile uint32_t HFNUM;             
  uint32_t Reserved40C;            
  volatile uint32_t HPTXSTS;           
  volatile uint32_t HAINT;             
  volatile uint32_t HAINTMSK;          
} USB_OTG_HostTypeDef;



 
typedef struct
{
  volatile uint32_t HCCHAR;            
  volatile uint32_t HCSPLT;            
  volatile uint32_t HCINT;             
  volatile uint32_t HCINTMSK;          
  volatile uint32_t HCTSIZ;            
  volatile uint32_t HCDMA;             
  uint32_t Reserved[2];            
} USB_OTG_HostChannelTypeDef;



 



 
#line 938 "..\\USER\\stm32f407xx.h"

 



 





 
#line 977 "..\\USER\\stm32f407xx.h"

 
#line 987 "..\\USER\\stm32f407xx.h"
 
#line 996 "..\\USER\\stm32f407xx.h"

 
#line 1033 "..\\USER\\stm32f407xx.h"

 



 






 

 



#line 1063 "..\\USER\\stm32f407xx.h"






 



   
#line 1110 "..\\USER\\stm32f407xx.h"
 
#line 1159 "..\\USER\\stm32f407xx.h"



 



 
  
  

 
    
 
 
 

 
 
 
 
 


 


 
#line 1205 "..\\USER\\stm32f407xx.h"

 
#line 1259 "..\\USER\\stm32f407xx.h"
  
 
#line 1309 "..\\USER\\stm32f407xx.h"

 
#line 1365 "..\\USER\\stm32f407xx.h"

 
#line 1427 "..\\USER\\stm32f407xx.h"

 




 




 




 




 




 




 
#line 1498 "..\\USER\\stm32f407xx.h"

 
#line 1548 "..\\USER\\stm32f407xx.h"

 
#line 1598 "..\\USER\\stm32f407xx.h"

 
#line 1637 "..\\USER\\stm32f407xx.h"

 




 




 




 




 
#line 1665 "..\\USER\\stm32f407xx.h"

 
#line 1721 "..\\USER\\stm32f407xx.h"

 




 
#line 1762 "..\\USER\\stm32f407xx.h"

 
#line 1770 "..\\USER\\stm32f407xx.h"

 



 
 
 
 
 
 
 
#line 1812 "..\\USER\\stm32f407xx.h"
 
#line 1840 "..\\USER\\stm32f407xx.h"

 
#line 1890 "..\\USER\\stm32f407xx.h"

#line 1903 "..\\USER\\stm32f407xx.h"

#line 1916 "..\\USER\\stm32f407xx.h"

 
#line 1930 "..\\USER\\stm32f407xx.h"

 
#line 1944 "..\\USER\\stm32f407xx.h"

 
#line 1989 "..\\USER\\stm32f407xx.h"

 
#line 2000 "..\\USER\\stm32f407xx.h"

#line 2007 "..\\USER\\stm32f407xx.h"

#line 2014 "..\\USER\\stm32f407xx.h"

 
#line 2043 "..\\USER\\stm32f407xx.h"


 
 
#line 2062 "..\\USER\\stm32f407xx.h"

 
#line 2073 "..\\USER\\stm32f407xx.h"

 
#line 2087 "..\\USER\\stm32f407xx.h"

 
#line 2101 "..\\USER\\stm32f407xx.h"

 
#line 2118 "..\\USER\\stm32f407xx.h"

 
#line 2129 "..\\USER\\stm32f407xx.h"

 
#line 2143 "..\\USER\\stm32f407xx.h"

 
#line 2157 "..\\USER\\stm32f407xx.h"

 
#line 2174 "..\\USER\\stm32f407xx.h"

   
#line 2185 "..\\USER\\stm32f407xx.h"

 
#line 2199 "..\\USER\\stm32f407xx.h"

 
#line 2213 "..\\USER\\stm32f407xx.h"

 
#line 2227 "..\\USER\\stm32f407xx.h"

 
#line 2238 "..\\USER\\stm32f407xx.h"

 
#line 2252 "..\\USER\\stm32f407xx.h"

 
#line 2266 "..\\USER\\stm32f407xx.h"

 
#line 2280 "..\\USER\\stm32f407xx.h"

 
#line 2291 "..\\USER\\stm32f407xx.h"

 
#line 2305 "..\\USER\\stm32f407xx.h"

 
#line 2319 "..\\USER\\stm32f407xx.h"

 
 
#line 2328 "..\\USER\\stm32f407xx.h"

 
#line 2417 "..\\USER\\stm32f407xx.h"

 
#line 2506 "..\\USER\\stm32f407xx.h"

 
#line 2595 "..\\USER\\stm32f407xx.h"

 
#line 2684 "..\\USER\\stm32f407xx.h"


 
#line 2783 "..\\USER\\stm32f407xx.h"

 
#line 2881 "..\\USER\\stm32f407xx.h"

 
#line 2979 "..\\USER\\stm32f407xx.h"

 
#line 3077 "..\\USER\\stm32f407xx.h"

 
#line 3175 "..\\USER\\stm32f407xx.h"

 
#line 3273 "..\\USER\\stm32f407xx.h"

 
#line 3371 "..\\USER\\stm32f407xx.h"

 
#line 3469 "..\\USER\\stm32f407xx.h"

 
#line 3567 "..\\USER\\stm32f407xx.h"

 
#line 3665 "..\\USER\\stm32f407xx.h"

 
#line 3763 "..\\USER\\stm32f407xx.h"

 
#line 3861 "..\\USER\\stm32f407xx.h"

 
#line 3959 "..\\USER\\stm32f407xx.h"

 
#line 4057 "..\\USER\\stm32f407xx.h"

 
#line 4155 "..\\USER\\stm32f407xx.h"

 
#line 4253 "..\\USER\\stm32f407xx.h"

 
#line 4351 "..\\USER\\stm32f407xx.h"

 
#line 4449 "..\\USER\\stm32f407xx.h"

 
#line 4547 "..\\USER\\stm32f407xx.h"

 
#line 4645 "..\\USER\\stm32f407xx.h"

 
#line 4743 "..\\USER\\stm32f407xx.h"

 
#line 4841 "..\\USER\\stm32f407xx.h"

 
#line 4939 "..\\USER\\stm32f407xx.h"

 
#line 5037 "..\\USER\\stm32f407xx.h"

 
#line 5135 "..\\USER\\stm32f407xx.h"

 
#line 5233 "..\\USER\\stm32f407xx.h"

 
#line 5331 "..\\USER\\stm32f407xx.h"

 
#line 5429 "..\\USER\\stm32f407xx.h"

 
 
 
 
 
 





 





 




 
 
 
 
 


 

 
#line 5471 "..\\USER\\stm32f407xx.h"

#line 5478 "..\\USER\\stm32f407xx.h"







#line 5492 "..\\USER\\stm32f407xx.h"

#line 5508 "..\\USER\\stm32f407xx.h"

#line 5515 "..\\USER\\stm32f407xx.h"







#line 5529 "..\\USER\\stm32f407xx.h"

#line 5536 "..\\USER\\stm32f407xx.h"

 
#line 5544 "..\\USER\\stm32f407xx.h"

 




 




 




 




 




 




 
#line 5582 "..\\USER\\stm32f407xx.h"

 
#line 5590 "..\\USER\\stm32f407xx.h"

 
#line 5598 "..\\USER\\stm32f407xx.h"

 




 




 
#line 5616 "..\\USER\\stm32f407xx.h"

 
 
 
 
 
 
#line 5657 "..\\USER\\stm32f407xx.h"

 
#line 5668 "..\\USER\\stm32f407xx.h"

 
#line 5685 "..\\USER\\stm32f407xx.h"
 
#line 5692 "..\\USER\\stm32f407xx.h"

 
#line 5709 "..\\USER\\stm32f407xx.h"
 


 
#line 5728 "..\\USER\\stm32f407xx.h"

 






 
#line 5752 "..\\USER\\stm32f407xx.h"

 


 
#line 5769 "..\\USER\\stm32f407xx.h"

 
#line 5783 "..\\USER\\stm32f407xx.h"

 
#line 5791 "..\\USER\\stm32f407xx.h"

 
#line 5799 "..\\USER\\stm32f407xx.h"

 
#line 5813 "..\\USER\\stm32f407xx.h"

 
 
 
 
 
 
#line 5892 "..\\USER\\stm32f407xx.h"

 




 
#line 5918 "..\\USER\\stm32f407xx.h"

  
#line 5937 "..\\USER\\stm32f407xx.h"

  
#line 5999 "..\\USER\\stm32f407xx.h"

  
#line 6061 "..\\USER\\stm32f407xx.h"

  
#line 6123 "..\\USER\\stm32f407xx.h"

  
#line 6185 "..\\USER\\stm32f407xx.h"

 




 




 





 
 
 
 
 
 
#line 6277 "..\\USER\\stm32f407xx.h"

 
#line 6305 "..\\USER\\stm32f407xx.h"

 
#line 6376 "..\\USER\\stm32f407xx.h"

 
#line 6401 "..\\USER\\stm32f407xx.h"

 
#line 6472 "..\\USER\\stm32f407xx.h"

 
#line 6543 "..\\USER\\stm32f407xx.h"

 
#line 6614 "..\\USER\\stm32f407xx.h"

 
#line 6685 "..\\USER\\stm32f407xx.h"

 
 
 
 
 
 
#line 6703 "..\\USER\\stm32f407xx.h"

#line 6725 "..\\USER\\stm32f407xx.h"

 
#line 6748 "..\\USER\\stm32f407xx.h"

 
#line 6781 "..\\USER\\stm32f407xx.h"

 
#line 6789 "..\\USER\\stm32f407xx.h"

#line 6830 "..\\USER\\stm32f407xx.h"
                                             
 
#line 6847 "..\\USER\\stm32f407xx.h"

 
 
 
 
 
 
#line 6860 "..\\USER\\stm32f407xx.h"













#line 6909 "..\\USER\\stm32f407xx.h"

 
#line 6917 "..\\USER\\stm32f407xx.h"













#line 6966 "..\\USER\\stm32f407xx.h"

 
#line 6974 "..\\USER\\stm32f407xx.h"













#line 7023 "..\\USER\\stm32f407xx.h"

 
#line 7031 "..\\USER\\stm32f407xx.h"













#line 7080 "..\\USER\\stm32f407xx.h"

 
#line 7089 "..\\USER\\stm32f407xx.h"

#line 7097 "..\\USER\\stm32f407xx.h"

#line 7109 "..\\USER\\stm32f407xx.h"

#line 7117 "..\\USER\\stm32f407xx.h"

#line 7125 "..\\USER\\stm32f407xx.h"

#line 7133 "..\\USER\\stm32f407xx.h"







 
#line 7148 "..\\USER\\stm32f407xx.h"

#line 7156 "..\\USER\\stm32f407xx.h"

#line 7168 "..\\USER\\stm32f407xx.h"

#line 7176 "..\\USER\\stm32f407xx.h"

#line 7184 "..\\USER\\stm32f407xx.h"

#line 7192 "..\\USER\\stm32f407xx.h"







 
#line 7207 "..\\USER\\stm32f407xx.h"

#line 7215 "..\\USER\\stm32f407xx.h"

#line 7227 "..\\USER\\stm32f407xx.h"

#line 7235 "..\\USER\\stm32f407xx.h"

#line 7243 "..\\USER\\stm32f407xx.h"

#line 7251 "..\\USER\\stm32f407xx.h"







 
#line 7266 "..\\USER\\stm32f407xx.h"

#line 7274 "..\\USER\\stm32f407xx.h"

#line 7286 "..\\USER\\stm32f407xx.h"

#line 7294 "..\\USER\\stm32f407xx.h"

#line 7302 "..\\USER\\stm32f407xx.h"

#line 7310 "..\\USER\\stm32f407xx.h"







 
#line 7325 "..\\USER\\stm32f407xx.h"

#line 7333 "..\\USER\\stm32f407xx.h"

#line 7345 "..\\USER\\stm32f407xx.h"

#line 7353 "..\\USER\\stm32f407xx.h"







 
#line 7368 "..\\USER\\stm32f407xx.h"

#line 7376 "..\\USER\\stm32f407xx.h"

#line 7388 "..\\USER\\stm32f407xx.h"

#line 7396 "..\\USER\\stm32f407xx.h"







 
#line 7411 "..\\USER\\stm32f407xx.h"

#line 7419 "..\\USER\\stm32f407xx.h"

#line 7431 "..\\USER\\stm32f407xx.h"

#line 7439 "..\\USER\\stm32f407xx.h"







 
#line 7454 "..\\USER\\stm32f407xx.h"

#line 7462 "..\\USER\\stm32f407xx.h"

#line 7474 "..\\USER\\stm32f407xx.h"

#line 7482 "..\\USER\\stm32f407xx.h"







 
#line 7499 "..\\USER\\stm32f407xx.h"











#line 7517 "..\\USER\\stm32f407xx.h"

#line 7525 "..\\USER\\stm32f407xx.h"

#line 7532 "..\\USER\\stm32f407xx.h"

 
#line 7543 "..\\USER\\stm32f407xx.h"











#line 7561 "..\\USER\\stm32f407xx.h"

#line 7569 "..\\USER\\stm32f407xx.h"

#line 7576 "..\\USER\\stm32f407xx.h"

 
#line 7587 "..\\USER\\stm32f407xx.h"











#line 7605 "..\\USER\\stm32f407xx.h"

#line 7613 "..\\USER\\stm32f407xx.h"

#line 7620 "..\\USER\\stm32f407xx.h"

 
#line 7643 "..\\USER\\stm32f407xx.h"

 
#line 7666 "..\\USER\\stm32f407xx.h"

 
#line 7689 "..\\USER\\stm32f407xx.h"

 
#line 7702 "..\\USER\\stm32f407xx.h"

#line 7714 "..\\USER\\stm32f407xx.h"

#line 7726 "..\\USER\\stm32f407xx.h"

#line 7738 "..\\USER\\stm32f407xx.h"

 
#line 7751 "..\\USER\\stm32f407xx.h"

#line 7763 "..\\USER\\stm32f407xx.h"

#line 7775 "..\\USER\\stm32f407xx.h"

#line 7787 "..\\USER\\stm32f407xx.h"

 
#line 7800 "..\\USER\\stm32f407xx.h"

#line 7812 "..\\USER\\stm32f407xx.h"

#line 7824 "..\\USER\\stm32f407xx.h"

#line 7836 "..\\USER\\stm32f407xx.h"

 
#line 7849 "..\\USER\\stm32f407xx.h"

#line 7861 "..\\USER\\stm32f407xx.h"

#line 7873 "..\\USER\\stm32f407xx.h"

#line 7885 "..\\USER\\stm32f407xx.h"

 
#line 7898 "..\\USER\\stm32f407xx.h"

#line 7910 "..\\USER\\stm32f407xx.h"

#line 7922 "..\\USER\\stm32f407xx.h"

#line 7934 "..\\USER\\stm32f407xx.h"

 
#line 7947 "..\\USER\\stm32f407xx.h"

#line 7959 "..\\USER\\stm32f407xx.h"

#line 7971 "..\\USER\\stm32f407xx.h"

#line 7983 "..\\USER\\stm32f407xx.h"

 
#line 7996 "..\\USER\\stm32f407xx.h"

#line 8008 "..\\USER\\stm32f407xx.h"

#line 8020 "..\\USER\\stm32f407xx.h"

#line 8032 "..\\USER\\stm32f407xx.h"

 




 




 
 
 
 
 
 
#line 8129 "..\\USER\\stm32f407xx.h"

 
#line 8211 "..\\USER\\stm32f407xx.h"

 
#line 8261 "..\\USER\\stm32f407xx.h"

 
#line 8279 "..\\USER\\stm32f407xx.h"

 
#line 8361 "..\\USER\\stm32f407xx.h"

 
#line 8411 "..\\USER\\stm32f407xx.h"

 
#line 8493 "..\\USER\\stm32f407xx.h"

 
#line 8543 "..\\USER\\stm32f407xx.h"

 
#line 8593 "..\\USER\\stm32f407xx.h"

 
#line 8611 "..\\USER\\stm32f407xx.h"

 
#line 8661 "..\\USER\\stm32f407xx.h"
 
#line 8678 "..\\USER\\stm32f407xx.h"

 
#line 8776 "..\\USER\\stm32f407xx.h"

 
#line 8858 "..\\USER\\stm32f407xx.h"
 
#line 8910 "..\\USER\\stm32f407xx.h"
 
#line 8967 "..\\USER\\stm32f407xx.h"

 
#line 9009 "..\\USER\\stm32f407xx.h"

 
#line 9067 "..\\USER\\stm32f407xx.h"

 
#line 9109 "..\\USER\\stm32f407xx.h"


 
 
 
 
 
 
#line 9159 "..\\USER\\stm32f407xx.h"

 
#line 9170 "..\\USER\\stm32f407xx.h"

#line 9186 "..\\USER\\stm32f407xx.h"

 



#line 9221 "..\\USER\\stm32f407xx.h"





 
#line 9233 "..\\USER\\stm32f407xx.h"

 




 
#line 9282 "..\\USER\\stm32f407xx.h"

 
#line 9308 "..\\USER\\stm32f407xx.h"

 
#line 9319 "..\\USER\\stm32f407xx.h"

 





 
 
 
 
 
 




 
#line 9343 "..\\USER\\stm32f407xx.h"

 




 
#line 9356 "..\\USER\\stm32f407xx.h"



 
 
 
 
 
 
#line 9380 "..\\USER\\stm32f407xx.h"

#line 9387 "..\\USER\\stm32f407xx.h"

 
#line 9406 "..\\USER\\stm32f407xx.h"

 


 
#line 9432 "..\\USER\\stm32f407xx.h"

 


 
 
 
 
 
 
#line 9448 "..\\USER\\stm32f407xx.h"

#line 9457 "..\\USER\\stm32f407xx.h"

#line 9469 "..\\USER\\stm32f407xx.h"

#line 9488 "..\\USER\\stm32f407xx.h"


 


#line 9499 "..\\USER\\stm32f407xx.h"

 
#line 9510 "..\\USER\\stm32f407xx.h"

#line 9523 "..\\USER\\stm32f407xx.h"







#line 9537 "..\\USER\\stm32f407xx.h"

#line 9545 "..\\USER\\stm32f407xx.h"


 
 










 










 
#line 9578 "..\\USER\\stm32f407xx.h"

#line 9588 "..\\USER\\stm32f407xx.h"

 
#line 9596 "..\\USER\\stm32f407xx.h"







 
#line 9610 "..\\USER\\stm32f407xx.h"







 
#line 9626 "..\\USER\\stm32f407xx.h"

 










#line 9644 "..\\USER\\stm32f407xx.h"

#line 9651 "..\\USER\\stm32f407xx.h"







 
#line 9677 "..\\USER\\stm32f407xx.h"

#line 9699 "..\\USER\\stm32f407xx.h"

#line 9718 "..\\USER\\stm32f407xx.h"





 
#line 9766 "..\\USER\\stm32f407xx.h"

 
#line 9777 "..\\USER\\stm32f407xx.h"
 





 
#line 9853 "..\\USER\\stm32f407xx.h"

 
#line 9888 "..\\USER\\stm32f407xx.h"

 


 
#line 9953 "..\\USER\\stm32f407xx.h"
 


 


#line 9968 "..\\USER\\stm32f407xx.h"

 


 






 
#line 10049 "..\\USER\\stm32f407xx.h"

 
#line 10090 "..\\USER\\stm32f407xx.h"

 
#line 10140 "..\\USER\\stm32f407xx.h"

#line 10159 "..\\USER\\stm32f407xx.h"

 
#line 10170 "..\\USER\\stm32f407xx.h"

 




 
#line 10246 "..\\USER\\stm32f407xx.h"

 
#line 10287 "..\\USER\\stm32f407xx.h"

 
#line 10298 "..\\USER\\stm32f407xx.h"







#line 10311 "..\\USER\\stm32f407xx.h"

 
#line 10343 "..\\USER\\stm32f407xx.h"
 



 
#line 10360 "..\\USER\\stm32f407xx.h"

 
#line 10374 "..\\USER\\stm32f407xx.h"

#line 10381 "..\\USER\\stm32f407xx.h"


 
 
 
 
 
 
#line 10395 "..\\USER\\stm32f407xx.h"

 
#line 10412 "..\\USER\\stm32f407xx.h"

 
 
 
 
 


 


 
#line 10465 "..\\USER\\stm32f407xx.h"

 
#line 10509 "..\\USER\\stm32f407xx.h"

 
#line 10579 "..\\USER\\stm32f407xx.h"

 


 
#line 10632 "..\\USER\\stm32f407xx.h"

 
#line 10640 "..\\USER\\stm32f407xx.h"

 




 
#line 10653 "..\\USER\\stm32f407xx.h"

 
#line 10723 "..\\USER\\stm32f407xx.h"

 
#line 10793 "..\\USER\\stm32f407xx.h"

 




 




 
#line 10811 "..\\USER\\stm32f407xx.h"

 
#line 10854 "..\\USER\\stm32f407xx.h"

 
#line 10884 "..\\USER\\stm32f407xx.h"

 




 
#line 10912 "..\\USER\\stm32f407xx.h"

 
#line 10960 "..\\USER\\stm32f407xx.h"

 


 
#line 10975 "..\\USER\\stm32f407xx.h"

 
#line 10987 "..\\USER\\stm32f407xx.h"

 




 




 




 




 




 




 




 




 




 




 




 




 




 




 




 




 




 




 




 




 



 
 
 
 
 
 






 
#line 11117 "..\\USER\\stm32f407xx.h"







#line 11130 "..\\USER\\stm32f407xx.h"

 




 










#line 11168 "..\\USER\\stm32f407xx.h"

 




 




 




 




 




 




 




 




 
#line 11222 "..\\USER\\stm32f407xx.h"

#line 11230 "..\\USER\\stm32f407xx.h"

#line 11243 "..\\USER\\stm32f407xx.h"

 




 
#line 11322 "..\\USER\\stm32f407xx.h"

 
#line 11363 "..\\USER\\stm32f407xx.h"

 
#line 11437 "..\\USER\\stm32f407xx.h"

 




 




 
 
 
 
 


 
#line 11465 "..\\USER\\stm32f407xx.h"

#line 11472 "..\\USER\\stm32f407xx.h"

#line 11503 "..\\USER\\stm32f407xx.h"

 
#line 11526 "..\\USER\\stm32f407xx.h"

 
#line 11555 "..\\USER\\stm32f407xx.h"

 




 




 




 




 






























#line 11613 "..\\USER\\stm32f407xx.h"

 
#line 11624 "..\\USER\\stm32f407xx.h"

 
 
 
 
 
 





 



 


 
#line 11656 "..\\USER\\stm32f407xx.h"


 
#line 11668 "..\\USER\\stm32f407xx.h"



 
#line 11681 "..\\USER\\stm32f407xx.h"



 
#line 11694 "..\\USER\\stm32f407xx.h"



 
#line 11707 "..\\USER\\stm32f407xx.h"

 
#line 11721 "..\\USER\\stm32f407xx.h"



 
#line 11734 "..\\USER\\stm32f407xx.h"



 
#line 11747 "..\\USER\\stm32f407xx.h"



 
#line 11760 "..\\USER\\stm32f407xx.h"



 
#line 11773 "..\\USER\\stm32f407xx.h"

 
#line 11787 "..\\USER\\stm32f407xx.h"



 
#line 11800 "..\\USER\\stm32f407xx.h"



 
#line 11813 "..\\USER\\stm32f407xx.h"



 
#line 11826 "..\\USER\\stm32f407xx.h"



 
#line 11839 "..\\USER\\stm32f407xx.h"

 
#line 11853 "..\\USER\\stm32f407xx.h"



 
#line 11865 "..\\USER\\stm32f407xx.h"



 
#line 11877 "..\\USER\\stm32f407xx.h"



 
#line 11889 "..\\USER\\stm32f407xx.h"



 
#line 11901 "..\\USER\\stm32f407xx.h"

 
#line 11909 "..\\USER\\stm32f407xx.h"

 
 
 
 
 
 
#line 11931 "..\\USER\\stm32f407xx.h"

















 
#line 11958 "..\\USER\\stm32f407xx.h"

#line 11965 "..\\USER\\stm32f407xx.h"

#line 11990 "..\\USER\\stm32f407xx.h"

 
#line 11998 "..\\USER\\stm32f407xx.h"

#line 12005 "..\\USER\\stm32f407xx.h"





#line 12017 "..\\USER\\stm32f407xx.h"







#line 12030 "..\\USER\\stm32f407xx.h"

 
#line 12077 "..\\USER\\stm32f407xx.h"

 
#line 12115 "..\\USER\\stm32f407xx.h"

 
#line 12141 "..\\USER\\stm32f407xx.h"

 






#line 12155 "..\\USER\\stm32f407xx.h"

#line 12162 "..\\USER\\stm32f407xx.h"











#line 12179 "..\\USER\\stm32f407xx.h"

#line 12186 "..\\USER\\stm32f407xx.h"





 







#line 12206 "..\\USER\\stm32f407xx.h"







#line 12220 "..\\USER\\stm32f407xx.h"

 






#line 12234 "..\\USER\\stm32f407xx.h"

#line 12241 "..\\USER\\stm32f407xx.h"











#line 12258 "..\\USER\\stm32f407xx.h"

#line 12265 "..\\USER\\stm32f407xx.h"





 







#line 12285 "..\\USER\\stm32f407xx.h"







#line 12299 "..\\USER\\stm32f407xx.h"

 
#line 12346 "..\\USER\\stm32f407xx.h"

 




 




 




 




 




 




 




 




 
#line 12399 "..\\USER\\stm32f407xx.h"







#line 12424 "..\\USER\\stm32f407xx.h"

 
#line 12434 "..\\USER\\stm32f407xx.h"

#line 12443 "..\\USER\\stm32f407xx.h"

 




 






#line 12466 "..\\USER\\stm32f407xx.h"


 
 
 
 
 
 
#line 12504 "..\\USER\\stm32f407xx.h"

 




 
#line 12517 "..\\USER\\stm32f407xx.h"

 
#line 12564 "..\\USER\\stm32f407xx.h"

 
#line 12587 "..\\USER\\stm32f407xx.h"











 
#line 12635 "..\\USER\\stm32f407xx.h"

 
#line 12648 "..\\USER\\stm32f407xx.h"





 
 
 
 
 
 
#line 12669 "..\\USER\\stm32f407xx.h"
 
#line 12677 "..\\USER\\stm32f407xx.h"





 
#line 12693 "..\\USER\\stm32f407xx.h"
 
#line 12701 "..\\USER\\stm32f407xx.h"






 







 





 
 
 
 
 
 
#line 12733 "..\\USER\\stm32f407xx.h"

 
#line 12747 "..\\USER\\stm32f407xx.h"







 
#line 12806 "..\\USER\\stm32f407xx.h"
 


 
#line 12825 "..\\USER\\stm32f407xx.h"

 
 
 
 
 
 
#line 12890 "..\\USER\\stm32f407xx.h"

 
#line 12934 "..\\USER\\stm32f407xx.h"

 




 




 
#line 12974 "..\\USER\\stm32f407xx.h"

 




 
#line 13012 "..\\USER\\stm32f407xx.h"

 
#line 13020 "..\\USER\\stm32f407xx.h"

  




 








 

  
#line 13059 "..\\USER\\stm32f407xx.h"

 
#line 13139 "..\\USER\\stm32f407xx.h"

 
#line 13156 "..\\USER\\stm32f407xx.h"

 
#line 13164 "..\\USER\\stm32f407xx.h"

 




 




 
#line 13194 "..\\USER\\stm32f407xx.h"

 




 
#line 13219 "..\\USER\\stm32f407xx.h"

 




 
#line 13244 "..\\USER\\stm32f407xx.h"

 




 
 
 

 
#line 13273 "..\\USER\\stm32f407xx.h"

 
#line 13284 "..\\USER\\stm32f407xx.h"

 
#line 13295 "..\\USER\\stm32f407xx.h"

 
#line 13306 "..\\USER\\stm32f407xx.h"

 
#line 13317 "..\\USER\\stm32f407xx.h"

 




 




 




 




 




 




 
 
 

 
#line 13380 "..\\USER\\stm32f407xx.h"

#line 13399 "..\\USER\\stm32f407xx.h"

 




 




 
#line 13417 "..\\USER\\stm32f407xx.h"

 




 
#line 13430 "..\\USER\\stm32f407xx.h"

 




 




 




 
#line 13453 "..\\USER\\stm32f407xx.h"

 
 
 

 
#line 13520 "..\\USER\\stm32f407xx.h"

 




 




 




 




 
#line 13554 "..\\USER\\stm32f407xx.h"
   
#line 13647 "..\\USER\\stm32f407xx.h"

 
#line 13697 "..\\USER\\stm32f407xx.h"

 
#line 13744 "..\\USER\\stm32f407xx.h"

 
#line 13758 "..\\USER\\stm32f407xx.h"

 




 




 




 




 
 
 
 
 
 
#line 13815 "..\\USER\\stm32f407xx.h"

 

#line 13826 "..\\USER\\stm32f407xx.h"

 

#line 13837 "..\\USER\\stm32f407xx.h"

#line 13848 "..\\USER\\stm32f407xx.h"





















 
#line 13879 "..\\USER\\stm32f407xx.h"

 
#line 13899 "..\\USER\\stm32f407xx.h"

 
#line 13913 "..\\USER\\stm32f407xx.h"

#line 13935 "..\\USER\\stm32f407xx.h"

 




 
#line 13948 "..\\USER\\stm32f407xx.h"

 




#line 13965 "..\\USER\\stm32f407xx.h"

 
#line 13987 "..\\USER\\stm32f407xx.h"

 

#line 14051 "..\\USER\\stm32f407xx.h"

 
#line 14068 "..\\USER\\stm32f407xx.h"


#line 14084 "..\\USER\\stm32f407xx.h"

 
#line 14110 "..\\USER\\stm32f407xx.h"

 
#line 14126 "..\\USER\\stm32f407xx.h"

#line 14138 "..\\USER\\stm32f407xx.h"

 




 
#line 14181 "..\\USER\\stm32f407xx.h"
 
#line 14260 "..\\USER\\stm32f407xx.h"

 
#line 14340 "..\\USER\\stm32f407xx.h"

 
#line 14348 "..\\USER\\stm32f407xx.h"

 




 
#line 14367 "..\\USER\\stm32f407xx.h"

 
#line 14375 "..\\USER\\stm32f407xx.h"

 




 




 
#line 14399 "..\\USER\\stm32f407xx.h"

 




 




#line 14421 "..\\USER\\stm32f407xx.h"

#line 14432 "..\\USER\\stm32f407xx.h"

 
#line 14440 "..\\USER\\stm32f407xx.h"

#line 14456 "..\\USER\\stm32f407xx.h"

#line 14472 "..\\USER\\stm32f407xx.h"

 




 
#line 14485 "..\\USER\\stm32f407xx.h"

 
#line 14505 "..\\USER\\stm32f407xx.h"

 
#line 14513 "..\\USER\\stm32f407xx.h"

 




 
#line 14547 "..\\USER\\stm32f407xx.h"

 
#line 14576 "..\\USER\\stm32f407xx.h"

#line 14585 "..\\USER\\stm32f407xx.h"

#line 14593 "..\\USER\\stm32f407xx.h"







 
#line 14634 "..\\USER\\stm32f407xx.h"

 
#line 14642 "..\\USER\\stm32f407xx.h"

 
#line 14656 "..\\USER\\stm32f407xx.h"

#line 14665 "..\\USER\\stm32f407xx.h"

#line 14691 "..\\USER\\stm32f407xx.h"

 




#line 14710 "..\\USER\\stm32f407xx.h"













#line 14742 "..\\USER\\stm32f407xx.h"

 

#line 14755 "..\\USER\\stm32f407xx.h"

#line 14766 "..\\USER\\stm32f407xx.h"

#line 14778 "..\\USER\\stm32f407xx.h"

 
#line 14813 "..\\USER\\stm32f407xx.h"

 
#line 14854 "..\\USER\\stm32f407xx.h"

 
#line 14889 "..\\USER\\stm32f407xx.h"

 

#line 14901 "..\\USER\\stm32f407xx.h"
 
#line 14916 "..\\USER\\stm32f407xx.h"

 




 




 




 
#line 14939 "..\\USER\\stm32f407xx.h"

 

#line 14980 "..\\USER\\stm32f407xx.h"

 
#line 15015 "..\\USER\\stm32f407xx.h"
 

#line 15023 "..\\USER\\stm32f407xx.h"







 
#line 15040 "..\\USER\\stm32f407xx.h"

 
 
#line 15053 "..\\USER\\stm32f407xx.h"







#line 15067 "..\\USER\\stm32f407xx.h"

#line 15075 "..\\USER\\stm32f407xx.h"

#line 15083 "..\\USER\\stm32f407xx.h"


  



 



 

 








 


 


 


 


 
#line 15133 "..\\USER\\stm32f407xx.h"

 
#line 15144 "..\\USER\\stm32f407xx.h"

 




 


 




 


 


 


 



 





 
#line 15192 "..\\USER\\stm32f407xx.h"

 
#line 15206 "..\\USER\\stm32f407xx.h"

 
#line 15216 "..\\USER\\stm32f407xx.h"

 
#line 15224 "..\\USER\\stm32f407xx.h"

 
#line 15232 "..\\USER\\stm32f407xx.h"

 



 
#line 15244 "..\\USER\\stm32f407xx.h"

 
#line 15254 "..\\USER\\stm32f407xx.h"

 
#line 15262 "..\\USER\\stm32f407xx.h"

 
#line 15270 "..\\USER\\stm32f407xx.h"

 
#line 15278 "..\\USER\\stm32f407xx.h"

 
#line 15288 "..\\USER\\stm32f407xx.h"

 
#line 15298 "..\\USER\\stm32f407xx.h"

 


 



 
#line 15313 "..\\USER\\stm32f407xx.h"

 




 
#line 15376 "..\\USER\\stm32f407xx.h"

 
#line 15388 "..\\USER\\stm32f407xx.h"

 
#line 15396 "..\\USER\\stm32f407xx.h"

 
#line 15410 "..\\USER\\stm32f407xx.h"

 




 
#line 15423 "..\\USER\\stm32f407xx.h"

 
#line 15433 "..\\USER\\stm32f407xx.h"

 
#line 15441 "..\\USER\\stm32f407xx.h"

 
#line 15451 "..\\USER\\stm32f407xx.h"

 
#line 15461 "..\\USER\\stm32f407xx.h"

 



 
#line 15475 "..\\USER\\stm32f407xx.h"
 
#line 15482 "..\\USER\\stm32f407xx.h"
 



 





 
#line 15499 "..\\USER\\stm32f407xx.h"

 


 




 


 





 
#line 15524 "..\\USER\\stm32f407xx.h"


 



 



 


 


 


 







 



#line 15562 "..\\USER\\stm32f407xx.h"



















 
 
 
 
 
 
 
 


 




 



 



 









 
#line 150 "..\\USER\\stm32f4xx.h"
#line 193 "..\\USER\\stm32f4xx.h"



 



  
typedef enum 
{
  RESET = 0U, 
  SET = !RESET
} FlagStatus, ITStatus;

typedef enum 
{
  DISABLE = 0U, 
  ENABLE = !DISABLE
} FunctionalState;


typedef enum
{
  SUCCESS = 0U,
  ERROR = !SUCCESS
} ErrorStatus;



 




 



















 

#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal.h"


















  

 
#line 285 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal.h"

 
#line 251 "..\\USER\\stm32f4xx.h"









 



 
  



 
#line 31 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_def.h"
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"


















 

 







 
 
 



 








 



 
#line 89 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 97 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"






 



 





 



 
#line 135 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 202 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"


 



 



 



 






 



 

#line 238 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"



 



 
#line 260 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"





#line 300 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 359 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"



 



 

#line 454 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"



 



 

#line 471 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"



 



 

#line 489 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"


 




 
#line 508 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"


 



 





 



 


















#line 551 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"





#line 562 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 569 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"










 



 
#line 593 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 602 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"


 



 
#line 625 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"


 



 





 



 






 



 















 
 






 



 














 



 










 



 




























 



 


#line 758 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"






 



 

 
#line 780 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

 












 



 






























 




 















 




 
#line 867 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"


 



 









#line 897 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"



 



 



#line 935 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 945 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 964 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"












 



 




 



 

























 




 








 



 




 



 
#line 1053 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"



 



 

#line 1070 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 1082 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 1113 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"



 



 











 

#line 1161 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"



 



 

 



 



 



 
#line 1189 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

 













 



 
#line 1224 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"


 



 
#line 1238 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

 

 



 







#line 1263 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 1274 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"
 

 



 
#line 1297 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 1305 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"






#line 1321 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"



 

 



 





 



 



 



 
#line 1361 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"


 



 



 



 






 




 



 

 



 





 



 
#line 1422 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"









 




 
#line 1450 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 1471 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 1482 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 1491 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 1504 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 1513 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"



 



 







 



 
#line 1549 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 1564 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"


#line 1597 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"



 



 
#line 1764 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"



#line 1774 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"


 

#line 1788 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"



 







 



 

#line 1811 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"



 



 

#line 1839 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"


 



 










 



 














 




 




 




 







 




 
#line 1917 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"



 




 
#line 1961 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 1975 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"


 




 







#line 2248 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 2262 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 2505 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 2653 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

 



#line 2678 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 2699 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 2816 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 2833 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 2848 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"






#line 2877 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

















#line 2903 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"





#line 2930 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 2937 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 2946 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 2979 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 2997 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"












#line 3015 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 3036 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 3044 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"



 



 




 



 
#line 3067 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 3095 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 3110 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"






 



 




#line 3146 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"
 




#line 3176 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 3183 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 3195 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"


 



 

#line 3209 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"








 



 
#line 3230 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"


 



 







 



 













 




 











 



 












#line 3303 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 3312 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"

#line 3321 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"








 



 








#line 3354 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"




 



 

#line 3371 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"






 



 




 



 
#line 3405 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"


 



 







 



 
#line 3432 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\Legacy/stm32_hal_legacy.h"


 



 



 







 

#line 32 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_def.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"
 






 

 
 
 





 





#line 34 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"




  typedef signed int ptrdiff_t;



  



    typedef unsigned int size_t;    
#line 57 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



   



      typedef unsigned short wchar_t;  
#line 82 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



    




   




  typedef long double max_align_t;









#line 114 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



 

#line 33 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_def.h"

 



   
typedef enum 
{
  HAL_OK       = 0x00U,
  HAL_ERROR    = 0x01U,
  HAL_BUSY     = 0x02U,
  HAL_TIMEOUT  = 0x03U
} HAL_StatusTypeDef;



 
typedef enum 
{
  HAL_UNLOCKED = 0x00U,
  HAL_LOCKED   = 0x01U  
} HAL_LockTypeDef;

 




























 


#line 103 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_def.h"







#line 118 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_def.h"


 
#line 140 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_def.h"




  









 


#line 173 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_def.h"



  



 


#line 190 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_def.h"







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"

 
 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

















  

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"



 



  

 


 



 
typedef struct
{
  uint32_t PLLState;   
 

  uint32_t PLLSource;  
 

  uint32_t PLLM;       
 

  uint32_t PLLN;       

 

  uint32_t PLLP;       
 

  uint32_t PLLQ;       
 
#line 75 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
}RCC_PLLInitTypeDef;

#line 176 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 202 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 293 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 378 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"





 
typedef struct
{




                                
  uint32_t PLLI2SN;    


 

  uint32_t PLLI2SR;    

 

}RCC_PLLI2SInitTypeDef;
 


 
typedef struct
{
  uint32_t PeriphClockSelection; 
 

  RCC_PLLI2SInitTypeDef PLLI2S;  
 

  uint32_t RTCClockSelection;      
 




}RCC_PeriphCLKInitTypeDef;



  

 


 



 
 
#line 454 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
 

 
#line 464 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
 

 
#line 481 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
 
    
 
#line 495 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
 

 
#line 507 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
 

 
#line 519 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
 


 






 




 





 
#line 548 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


 



 
#line 562 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


 



 
#line 575 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


 

#line 600 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
      
#line 629 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 722 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 777 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 856 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 890 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 907 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 922 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"








 






 




#line 954 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"



 
     
 


 
 
#line 2007 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
 

 







 
#line 2099 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


 
#line 2135 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"



 
#line 2149 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


 
  






   
#line 2170 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 2182 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


 
#line 2192 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


 
#line 2203 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


 
  






 



                                        


#line 2228 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 2239 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 2258 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


 








 











#line 2288 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


   
  






 
#line 2307 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


 







 




    
   






 
#line 2459 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


 
 






  
#line 2486 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 2503 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
  

 
  






  
#line 2556 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 2563 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


 







 
#line 2580 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
  
#line 2587 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


 
    



 
#line 2603 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 2612 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


 




 








#line 2635 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
   







 




  







 




 
#line 2678 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 2695 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


 




 




                                          






 
                                        







 
#line 2740 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 2757 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


 








 











#line 2787 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


 
                                        







 




 
                                        







 
#line 2829 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 2846 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


 
                                        







 
#line 2864 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 2871 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"


 

 

 
#line 3256 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
 

 
#line 3526 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
 

 
#line 3902 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
 

 
#line 4706 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
 

 
#line 5735 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
 

 
#line 5781 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"




























 
#line 5816 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
 
                             
 








 



#line 5899 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"














 





#line 5944 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 5967 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
 

 
#line 6057 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
 

 
#line 6076 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
                                 
#line 6095 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 6107 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
 

 











 








 


                                 
#line 6166 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 6331 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
      
#line 6380 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 6614 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 6669 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
      
#line 6693 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

 

#line 6720 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 6733 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"



 

 


 



 
HAL_StatusTypeDef HAL_RCCEx_PeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit);
void HAL_RCCEx_GetPeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit);

uint32_t HAL_RCCEx_GetPeriphCLKFreq(uint32_t PeriphClk);

#line 6758 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
HAL_StatusTypeDef HAL_RCCEx_EnablePLLI2S(RCC_PLLI2SInitTypeDef  *PLLI2SInit);
HAL_StatusTypeDef HAL_RCCEx_DisablePLLI2S(void);







  



 
 
 
 


 




 
   
#line 6792 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"






 






 
#line 6818 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

 





 


      



      
#line 6843 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 6853 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"




 



 

 


 


 
#line 6880 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"
      



























      



      


#line 6934 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 6942 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 6962 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 7014 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 7035 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"

#line 7099 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc_ex.h"






      













 



 



  



   






 
#line 34 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"



 



 

 


 



 
typedef struct
{
  uint32_t OscillatorType;       
 

  uint32_t HSEState;             
 

  uint32_t LSEState;             
 

  uint32_t HSIState;             
 

  uint32_t HSICalibrationValue;  
 

  uint32_t LSIState;             
 

  RCC_PLLInitTypeDef PLL;         
}RCC_OscInitTypeDef;



 
typedef struct
{
  uint32_t ClockType;             
 

  uint32_t SYSCLKSource;          
 

  uint32_t AHBCLKDivider;         
 

  uint32_t APB1CLKDivider;        
 

  uint32_t APB2CLKDivider;        
 

}RCC_ClkInitTypeDef;



 

 


 



 







 



 





 



 





 



 






 



 




 



 





 



 






 



 




 



 






 





 






 





 






 



 
#line 236 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"


 



 







 



 
#line 289 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"


 



 




 



 






 



 







 



 
#line 335 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"


 









 
 





 


 
#line 366 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"


 



 

 


 







 
#line 428 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"

#line 435 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"


 







 
#line 452 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"

#line 459 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"


 







 
#line 519 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"

#line 527 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"


 







 
#line 545 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"

#line 553 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"


 







 
#line 620 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"

#line 629 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"


 







 
#line 648 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"

#line 657 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"


 




 
#line 672 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"

#line 680 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"


 




 
#line 696 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"

#line 705 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"


 




 
#line 722 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"

#line 732 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"


 








 
#line 750 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"

#line 757 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"


 








 
#line 776 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"

#line 784 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"


 








 
#line 804 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"

#line 813 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"


 



 















 









 




 



 








 




 



 





















 
#line 912 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"


 



 


















 
#line 955 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"


 



 



 
























 













 







 






 




 



 







 










 










 



 



 









 










 







 



 



 















 




















 




 




 











 












 













 













 




 



















 





 



 

 
 

 



 
 
HAL_StatusTypeDef HAL_RCC_DeInit(void);
HAL_StatusTypeDef HAL_RCC_OscConfig(RCC_OscInitTypeDef *RCC_OscInitStruct);
HAL_StatusTypeDef HAL_RCC_ClockConfig(RCC_ClkInitTypeDef *RCC_ClkInitStruct, uint32_t FLatency);


 



 
 
void     HAL_RCC_MCOConfig(uint32_t RCC_MCOx, uint32_t RCC_MCOSource, uint32_t RCC_MCODiv);
void     HAL_RCC_EnableCSS(void);
void     HAL_RCC_DisableCSS(void);
uint32_t HAL_RCC_GetSysClockFreq(void);
uint32_t HAL_RCC_GetHCLKFreq(void);
uint32_t HAL_RCC_GetPCLK1Freq(void);
uint32_t HAL_RCC_GetPCLK2Freq(void);
void     HAL_RCC_GetOscConfig(RCC_OscInitTypeDef *RCC_OscInitStruct);
void     HAL_RCC_GetClockConfig(RCC_ClkInitTypeDef *RCC_ClkInitStruct, uint32_t *pFLatency);

 
void HAL_RCC_NMI_IRQHandler(void);

 
void HAL_RCC_CSSCallback(void);



 



 

 
 
 


 




 

 
 



 


 



 
 



 



 
 




 


 


 


 












 



 

 


 



 






















#line 1413 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"































 



 



 



 







 
#line 221 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_exti.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_exti.h"



 




 

 



 
typedef enum
{
  HAL_EXTI_COMMON_CB_ID          = 0x00U,
  HAL_EXTI_RISING_CB_ID          = 0x01U,
  HAL_EXTI_FALLING_CB_ID         = 0x02U,
} EXTI_CallbackIDTypeDef;



 
typedef struct
{
  uint32_t Line;                     
  void (* RisingCallback)(void);     
  void (* FallingCallback)(void);    
} EXTI_HandleTypeDef;



 
typedef struct
{
  uint32_t Line;      
 
  uint32_t Mode;      
 
  uint32_t Trigger;   
   
} EXTI_ConfigTypeDef;



 

 


 



 
#line 110 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_exti.h"



 



 




 



 






 
    


 

 


 



 

 


 


 




 




 




 

 


 
#line 198 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_exti.h"












 

 



 




 
 
HAL_StatusTypeDef HAL_EXTI_SetConfigLine(EXTI_HandleTypeDef *hexti, EXTI_ConfigTypeDef *pExtiConfig);
HAL_StatusTypeDef HAL_EXTI_GetConfigLine(EXTI_HandleTypeDef *hexti, EXTI_ConfigTypeDef *pExtiConfig);
HAL_StatusTypeDef HAL_EXTI_ClearConfigLine(EXTI_HandleTypeDef *hexti);
HAL_StatusTypeDef HAL_EXTI_RegisterCallback(EXTI_HandleTypeDef *hexti, EXTI_CallbackIDTypeDef CallbackID, void (*pPendingCbfn)(void));
HAL_StatusTypeDef HAL_EXTI_GetHandle(EXTI_HandleTypeDef *hexti, uint32_t ExtiLine);


 




 
 
void HAL_EXTI_IRQHandler(EXTI_HandleTypeDef *hexti);
uint32_t HAL_EXTI_GetPending(EXTI_HandleTypeDef *hexti, uint32_t Edge);
void HAL_EXTI_ClearPending(EXTI_HandleTypeDef *hexti, uint32_t Edge);
void HAL_EXTI_GenerateSWI(EXTI_HandleTypeDef *hexti);



 



 



 



 







 
#line 225 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio.h"

















  

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio.h"



 



  

 


 



  
typedef struct
{
  uint32_t Pin;       
 

  uint32_t Mode;      
 

  uint32_t Pull;      
 

  uint32_t Speed;     
 

  uint32_t Alternate;  
 
}GPIO_InitTypeDef;



 
typedef enum
{
  GPIO_PIN_RESET = 0,
  GPIO_PIN_SET
}GPIO_PinState;


 

 



  



 
#line 103 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio.h"




 










  







    



 





 




 






 

 


   





 
  


 

 


 






 







 







 







 







 



 

 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"

















  

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"



 



  

 
 


 
  


 

 
#line 166 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"
 

 
#line 281 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"
 

 



  








  





  






  







  






  






  





  







  






  








  





  




  






  




  


 

 
#line 483 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"

 

 
#line 573 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"
 

 
#line 682 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"

 

 
#line 816 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"

 
#line 908 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"

 
#line 982 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"

 
#line 1102 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"
 

 
#line 1225 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"
 


  



 

 


 


 

 


 


 

 
 
 


 


 

 


 


 
#line 1277 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"

#line 1291 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"







#line 1305 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"

#line 1333 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"



 



   
 
#line 1367 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"
 

 
#line 1394 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"
 

 
#line 1416 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"


 

 
#line 1441 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"

 

 
#line 1461 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"
 
 




 
#line 1486 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"
 

 
#line 1518 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"
 

 
#line 1547 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio_ex.h"
 

 



 

 



 



  



 

 


 



 



  



  
  






 
#line 215 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio.h"

 


 



 
 
void  HAL_GPIO_Init(GPIO_TypeDef  *GPIOx, GPIO_InitTypeDef *GPIO_Init);
void  HAL_GPIO_DeInit(GPIO_TypeDef  *GPIOx, uint32_t GPIO_Pin);


 



 
 
GPIO_PinState HAL_GPIO_ReadPin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void HAL_GPIO_WritePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState);
void HAL_GPIO_TogglePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
HAL_StatusTypeDef HAL_GPIO_LockPin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void HAL_GPIO_EXTI_IRQHandler(uint16_t GPIO_Pin);
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin);



  



  
 
 
 


 



 

 


 
#line 282 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_gpio.h"


 

 


 



 



  



 







 
#line 229 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dma.h"

















  

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dma.h"



 



  

 




 
   


 
typedef struct
{
  uint32_t Channel;              
 

  uint32_t Direction;            

 

  uint32_t PeriphInc;            
 

  uint32_t MemInc;               
 

  uint32_t PeriphDataAlignment;  
 

  uint32_t MemDataAlignment;     
 

  uint32_t Mode;                 


 

  uint32_t Priority;             
 

  uint32_t FIFOMode;             


 

  uint32_t FIFOThreshold;        
 

  uint32_t MemBurst;             



 

  uint32_t PeriphBurst;          



 
}DMA_InitTypeDef;




 
typedef enum
{
  HAL_DMA_STATE_RESET             = 0x00U,   
  HAL_DMA_STATE_READY             = 0x01U,   
  HAL_DMA_STATE_BUSY              = 0x02U,   
  HAL_DMA_STATE_TIMEOUT           = 0x03U,   
  HAL_DMA_STATE_ERROR             = 0x04U,   
  HAL_DMA_STATE_ABORT             = 0x05U,   
}HAL_DMA_StateTypeDef;



 
typedef enum
{
  HAL_DMA_FULL_TRANSFER           = 0x00U,   
  HAL_DMA_HALF_TRANSFER           = 0x01U    
}HAL_DMA_LevelCompleteTypeDef;



 
typedef enum
{
  HAL_DMA_XFER_CPLT_CB_ID         = 0x00U,   
  HAL_DMA_XFER_HALFCPLT_CB_ID     = 0x01U,   
  HAL_DMA_XFER_M1CPLT_CB_ID       = 0x02U,   
  HAL_DMA_XFER_M1HALFCPLT_CB_ID   = 0x03U,   
  HAL_DMA_XFER_ERROR_CB_ID        = 0x04U,   
  HAL_DMA_XFER_ABORT_CB_ID        = 0x05U,   
  HAL_DMA_XFER_ALL_CB_ID          = 0x06U    
}HAL_DMA_CallbackIDTypeDef;



 
typedef struct __DMA_HandleTypeDef
{
  DMA_Stream_TypeDef         *Instance;                                                         

  DMA_InitTypeDef            Init;                                                               

  HAL_LockTypeDef            Lock;                                                                

  volatile HAL_DMA_StateTypeDef  State;                                                             

  void                       *Parent;                                                            

  void                       (* XferCpltCallback)( struct __DMA_HandleTypeDef * hdma);          

  void                       (* XferHalfCpltCallback)( struct __DMA_HandleTypeDef * hdma);      

  void                       (* XferM1CpltCallback)( struct __DMA_HandleTypeDef * hdma);        
  
  void                       (* XferM1HalfCpltCallback)( struct __DMA_HandleTypeDef * hdma);    
  
  void                       (* XferErrorCallback)( struct __DMA_HandleTypeDef * hdma);         
  
  void                       (* XferAbortCallback)( struct __DMA_HandleTypeDef * hdma);           

  volatile uint32_t              ErrorCode;                                                         
  
  uint32_t                   StreamBaseAddress;                                                 

  uint32_t                   StreamIndex;                                                       
 
}DMA_HandleTypeDef;



 

 




 




  
#line 194 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dma.h"


 




  
#line 220 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dma.h"


 




  





 
        



  




  




  




 




  





  




 





 




  





 




 






  




 




  




 






  




  






  




  






 




 







 




  
#line 383 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dma.h"


 



 
 
 




 













 






 






 


 





 
#line 448 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dma.h"





       
#line 468 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dma.h"





 
#line 488 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dma.h"





 
#line 508 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dma.h"





 
#line 528 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dma.h"













 

















 
















 














 














 




















 







 



 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dma_ex.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dma_ex.h"



 



  

 



 
   


  
typedef enum
{
  MEMORY0      = 0x00U,     
  MEMORY1      = 0x01U      
}HAL_DMA_MemoryTypeDef;



 

 



 




 

 
HAL_StatusTypeDef HAL_DMAEx_MultiBufferStart(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t SecondMemAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMAEx_MultiBufferStart_IT(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t SecondMemAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMAEx_ChangeMemory(DMA_HandleTypeDef *hdma, uint32_t Address, HAL_DMA_MemoryTypeDef memory);



 


 
         
 



 


 



 



 







 
#line 641 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dma.h"

 




 




 
HAL_StatusTypeDef HAL_DMA_Init(DMA_HandleTypeDef *hdma); 
HAL_StatusTypeDef HAL_DMA_DeInit(DMA_HandleTypeDef *hdma);


 




 
HAL_StatusTypeDef HAL_DMA_Start (DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMA_Start_IT(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMA_Abort(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_Abort_IT(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_PollForTransfer(DMA_HandleTypeDef *hdma, HAL_DMA_LevelCompleteTypeDef CompleteLevel, uint32_t Timeout);
void              HAL_DMA_IRQHandler(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_CleanCallbacks(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_RegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef CallbackID, void (* pCallback)(DMA_HandleTypeDef *_hdma));
HAL_StatusTypeDef HAL_DMA_UnRegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef CallbackID);



  




 
HAL_DMA_StateTypeDef HAL_DMA_GetState(DMA_HandleTypeDef *hdma);
uint32_t             HAL_DMA_GetError(DMA_HandleTypeDef *hdma);


  


  
 



 


  

 



 
#line 730 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dma.h"

















































  

 



 


 



  



 







 
#line 233 "..\\USER\\stm32f4xx_hal_conf.h"

   
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_cortex.h"

















  

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_cortex.h"



 



  
 


 





 
typedef struct
{
  uint8_t                Enable;                
 
  uint8_t                Number;                
 
  uint32_t               BaseAddress;            
  uint8_t                Size;                  
 
  uint8_t                SubRegionDisable;      
          
  uint8_t                TypeExtField;          
                  
  uint8_t                AccessPermission;      
 
  uint8_t                DisableExec;           
 
  uint8_t                IsShareable;           
 
  uint8_t                IsCacheable;           
 
  uint8_t                IsBufferable;          
 
}MPU_Region_InitTypeDef;


 




 

 



 



 
#line 100 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_cortex.h"


 



 





 




 







 



 




 



 




 



 




 



 




 



 




 



 





 



 
#line 213 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_cortex.h"


 
   


 
#line 226 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_cortex.h"


 



 
#line 241 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_cortex.h"


 




 


 

 


 
  


 
 
void HAL_NVIC_SetPriorityGrouping(uint32_t PriorityGroup);
void HAL_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority);
void HAL_NVIC_EnableIRQ(IRQn_Type IRQn);
void HAL_NVIC_DisableIRQ(IRQn_Type IRQn);
void HAL_NVIC_SystemReset(void);
uint32_t HAL_SYSTICK_Config(uint32_t TicksNumb);


 



 
 
uint32_t HAL_NVIC_GetPriorityGrouping(void);
void HAL_NVIC_GetPriority(IRQn_Type IRQn, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority);
uint32_t HAL_NVIC_GetPendingIRQ(IRQn_Type IRQn);
void HAL_NVIC_SetPendingIRQ(IRQn_Type IRQn);
void HAL_NVIC_ClearPendingIRQ(IRQn_Type IRQn);
uint32_t HAL_NVIC_GetActive(IRQn_Type IRQn);
void HAL_SYSTICK_CLKSourceConfig(uint32_t CLKSource);
void HAL_SYSTICK_IRQHandler(void);
void HAL_SYSTICK_Callback(void);


void HAL_MPU_Enable(uint32_t MPU_Control);
void HAL_MPU_Disable(void);
void HAL_MPU_ConfigRegion(MPU_Region_InitTypeDef *MPU_Init);



 



 

 
 
 
 


 



































#line 347 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_cortex.h"

#line 356 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_cortex.h"

#line 385 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_cortex.h"






 

 



  



 
  





 

 
#line 237 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc.h"



 



  

 


 













 
typedef struct
{
  uint32_t ClockPrescaler;               

 
  uint32_t Resolution;                   
 
  uint32_t DataAlign;                    

 
  uint32_t ScanConvMode;                 





 
  uint32_t EOCSelection;                 





 
  FunctionalState ContinuousConvMode;    

 
  uint32_t NbrOfConversion;              

 
  FunctionalState DiscontinuousConvMode; 


 
  uint32_t NbrOfDiscConversion;          

 
  uint32_t ExternalTrigConv;             


 
  uint32_t ExternalTrigConvEdge;         

 
  FunctionalState DMAContinuousRequests; 



 
}ADC_InitTypeDef;







  
typedef struct 
{
  uint32_t Channel;                
 
  uint32_t Rank;                   
 
  uint32_t SamplingTime;           







 
  uint32_t Offset;                  
}ADC_ChannelConfTypeDef;



  
typedef struct
{
  uint32_t WatchdogMode;      
 
  uint32_t HighThreshold;     
      
  uint32_t LowThreshold;      
 
  uint32_t Channel;           

       
  FunctionalState ITMode;     

 
  uint32_t WatchdogNumber;     
}ADC_AnalogWDGConfTypeDef;



  
 





 




 





 




 




 





  



typedef struct

{
  ADC_TypeDef                   *Instance;                    

  ADC_InitTypeDef               Init;                         

  volatile uint32_t                 NbrOfCurrentConversionRank;   

  DMA_HandleTypeDef             *DMA_Handle;                  

  HAL_LockTypeDef               Lock;                         

  volatile uint32_t                 State;                        

  volatile uint32_t                 ErrorCode;                    
#line 218 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc.h"
}ADC_HandleTypeDef;

#line 241 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc.h"



 

 


 



 
#line 262 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc.h"


 




  






  



  
#line 297 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc.h"


  



  






  



  






  



 
 
 
#line 345 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc.h"


  



  




  



  
#line 380 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc.h"





  



  
#line 398 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc.h"


  

  

  





  



  




 



  
#line 431 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc.h"


  
    


  






  
    


  
#line 455 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc.h"


  



  





 



  

 


 




 
#line 493 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc.h"





 






 







 







 






 







 







 




 

 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc_ex.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc_ex.h"



 



  

 


 
   











 
typedef struct 
{
  uint32_t InjectedChannel;                      

 
  uint32_t InjectedRank;                         

 
  uint32_t InjectedSamplingTime;                 







 
  uint32_t InjectedOffset;                       


 
  uint32_t InjectedNbrOfConversion;              



 
  FunctionalState InjectedDiscontinuousConvMode; 





 
  FunctionalState AutoInjectedConv;              






 
  uint32_t ExternalTrigInjecConv;                






 
  uint32_t ExternalTrigInjecConvEdge;            



 
}ADC_InjectionConfTypeDef; 



  
typedef struct
{
  uint32_t Mode;              
 
  uint32_t DMAAccessMode;     
 
  uint32_t TwoSamplingDelay;  
 
}ADC_MultiModeTypeDef;



 

 


 



  
#line 150 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc_ex.h"


  



  






  



  






  



  
#line 196 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc_ex.h"


  



  






 



 
#line 221 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc_ex.h"








  




  

 


 
#line 254 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc_ex.h"


  

 


 



 

 
HAL_StatusTypeDef HAL_ADCEx_InjectedStart(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef HAL_ADCEx_InjectedStop(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef HAL_ADCEx_InjectedPollForConversion(ADC_HandleTypeDef* hadc, uint32_t Timeout);
HAL_StatusTypeDef HAL_ADCEx_InjectedStart_IT(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef HAL_ADCEx_InjectedStop_IT(ADC_HandleTypeDef* hadc);
uint32_t HAL_ADCEx_InjectedGetValue(ADC_HandleTypeDef* hadc, uint32_t InjectedRank);
HAL_StatusTypeDef HAL_ADCEx_MultiModeStart_DMA(ADC_HandleTypeDef* hadc, uint32_t* pData, uint32_t Length);
HAL_StatusTypeDef HAL_ADCEx_MultiModeStop_DMA(ADC_HandleTypeDef* hadc);
uint32_t HAL_ADCEx_MultiModeGetValue(ADC_HandleTypeDef* hadc);
void HAL_ADCEx_InjectedConvCpltCallback(ADC_HandleTypeDef* hadc);

 
HAL_StatusTypeDef HAL_ADCEx_InjectedConfigChannel(ADC_HandleTypeDef* hadc,ADC_InjectionConfTypeDef* sConfigInjected);
HAL_StatusTypeDef HAL_ADCEx_MultiModeConfigChannel(ADC_HandleTypeDef* hadc, ADC_MultiModeTypeDef* multimode);



  



 
 
 
 


 



 

 


 
#line 312 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc_ex.h"







#line 359 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc_ex.h"







 







 







 

 


 



 



  



 








 
#line 553 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc.h"

 


 



 
 
HAL_StatusTypeDef HAL_ADC_Init(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef HAL_ADC_DeInit(ADC_HandleTypeDef *hadc);
void HAL_ADC_MspInit(ADC_HandleTypeDef* hadc);
void HAL_ADC_MspDeInit(ADC_HandleTypeDef* hadc);








 



 
 
HAL_StatusTypeDef HAL_ADC_Start(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef HAL_ADC_Stop(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef HAL_ADC_PollForConversion(ADC_HandleTypeDef* hadc, uint32_t Timeout);

HAL_StatusTypeDef HAL_ADC_PollForEvent(ADC_HandleTypeDef* hadc, uint32_t EventType, uint32_t Timeout);

HAL_StatusTypeDef HAL_ADC_Start_IT(ADC_HandleTypeDef* hadc);
HAL_StatusTypeDef HAL_ADC_Stop_IT(ADC_HandleTypeDef* hadc);

void HAL_ADC_IRQHandler(ADC_HandleTypeDef* hadc);

HAL_StatusTypeDef HAL_ADC_Start_DMA(ADC_HandleTypeDef* hadc, uint32_t* pData, uint32_t Length);
HAL_StatusTypeDef HAL_ADC_Stop_DMA(ADC_HandleTypeDef* hadc);

uint32_t HAL_ADC_GetValue(ADC_HandleTypeDef* hadc);

void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc);
void HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef* hadc);
void HAL_ADC_LevelOutOfWindowCallback(ADC_HandleTypeDef* hadc);
void HAL_ADC_ErrorCallback(ADC_HandleTypeDef *hadc);


 



 
 
HAL_StatusTypeDef HAL_ADC_ConfigChannel(ADC_HandleTypeDef* hadc, ADC_ChannelConfTypeDef* sConfig);
HAL_StatusTypeDef HAL_ADC_AnalogWDGConfig(ADC_HandleTypeDef* hadc, ADC_AnalogWDGConfTypeDef* AnalogWDGConfig);


 



 
 
uint32_t HAL_ADC_GetState(ADC_HandleTypeDef* hadc);
uint32_t HAL_ADC_GetError(ADC_HandleTypeDef *hadc);


 



 
 
 
 


 
 
 
 

 
 
 



 

 



 

 





 









 








 









 






 



    
#line 770 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc.h"

#line 779 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_adc.h"





 







 







 







 







 







 






 






 






 






 






 






 




 

 


 



 



  



 








 
#line 241 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_can.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_can.h"



 




 

 


 


 
typedef enum
{
  HAL_CAN_STATE_RESET             = 0x00U,   
  HAL_CAN_STATE_READY             = 0x01U,   
  HAL_CAN_STATE_LISTENING         = 0x02U,   
  HAL_CAN_STATE_SLEEP_PENDING     = 0x03U,   
  HAL_CAN_STATE_SLEEP_ACTIVE      = 0x04U,   
  HAL_CAN_STATE_ERROR             = 0x05U    

} HAL_CAN_StateTypeDef;



 
typedef struct
{
  uint32_t Prescaler;                  
 

  uint32_t Mode;                       
 

  uint32_t SyncJumpWidth;              

 

  uint32_t TimeSeg1;                   
 

  uint32_t TimeSeg2;                   
 

  FunctionalState TimeTriggeredMode;   
 

  FunctionalState AutoBusOff;          
 

  FunctionalState AutoWakeUp;          
 

  FunctionalState AutoRetransmission;  
 

  FunctionalState ReceiveFifoLocked;   
 

  FunctionalState TransmitFifoPriority;
 

} CAN_InitTypeDef;



 
typedef struct
{
  uint32_t FilterIdHigh;          

 

  uint32_t FilterIdLow;           

 

  uint32_t FilterMaskIdHigh;      


 

  uint32_t FilterMaskIdLow;       


 

  uint32_t FilterFIFOAssignment;  
 

  uint32_t FilterBank;            



 

  uint32_t FilterMode;            
 

  uint32_t FilterScale;           
 

  uint32_t FilterActivation;      
 

  uint32_t SlaveStartFilterBank;  




 

} CAN_FilterTypeDef;



 
typedef struct
{
  uint32_t StdId;    
 

  uint32_t ExtId;    
 

  uint32_t IDE;      
 

  uint32_t RTR;      
 

  uint32_t DLC;      
 

  FunctionalState TransmitGlobalTime; 



 

} CAN_TxHeaderTypeDef;



 
typedef struct
{
  uint32_t StdId;    
 

  uint32_t ExtId;    
 

  uint32_t IDE;      
 

  uint32_t RTR;      
 

  uint32_t DLC;      
 

  uint32_t Timestamp; 

 

  uint32_t FilterMatchIndex; 
 

} CAN_RxHeaderTypeDef;



 
typedef struct __CAN_HandleTypeDef
{
  CAN_TypeDef                 *Instance;                  

  CAN_InitTypeDef             Init;                       

  volatile HAL_CAN_StateTypeDef   State;                      

  volatile uint32_t               ErrorCode;                 
 

#line 239 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_can.h"
} CAN_HandleTypeDef;

#line 272 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_can.h"


 

 



 



 
#line 308 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_can.h"








 



 




 



 






 




 






 



 
#line 369 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_can.h"


 



 
#line 384 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_can.h"


 



 




 



 




 



 




 



 




 



 




 



 




 



 




 



 





 



 
 
#line 483 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_can.h"

 





 






 





 




 
 


 
#line 519 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_can.h"

 



 







 



 

 


 




 
#line 556 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_can.h"







 








 







 







 
#line 595 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_can.h"
























 








 

 


 




 

 
HAL_StatusTypeDef HAL_CAN_Init(CAN_HandleTypeDef *hcan);
HAL_StatusTypeDef HAL_CAN_DeInit(CAN_HandleTypeDef *hcan);
void HAL_CAN_MspInit(CAN_HandleTypeDef *hcan);
void HAL_CAN_MspDeInit(CAN_HandleTypeDef *hcan);

#line 652 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_can.h"


 




 

 
HAL_StatusTypeDef HAL_CAN_ConfigFilter(CAN_HandleTypeDef *hcan, CAN_FilterTypeDef *sFilterConfig);



 




 

 
HAL_StatusTypeDef HAL_CAN_Start(CAN_HandleTypeDef *hcan);
HAL_StatusTypeDef HAL_CAN_Stop(CAN_HandleTypeDef *hcan);
HAL_StatusTypeDef HAL_CAN_RequestSleep(CAN_HandleTypeDef *hcan);
HAL_StatusTypeDef HAL_CAN_WakeUp(CAN_HandleTypeDef *hcan);
uint32_t HAL_CAN_IsSleepActive(CAN_HandleTypeDef *hcan);
HAL_StatusTypeDef HAL_CAN_AddTxMessage(CAN_HandleTypeDef *hcan, CAN_TxHeaderTypeDef *pHeader, uint8_t aData[], uint32_t *pTxMailbox);
HAL_StatusTypeDef HAL_CAN_AbortTxRequest(CAN_HandleTypeDef *hcan, uint32_t TxMailboxes);
uint32_t HAL_CAN_GetTxMailboxesFreeLevel(CAN_HandleTypeDef *hcan);
uint32_t HAL_CAN_IsTxMessagePending(CAN_HandleTypeDef *hcan, uint32_t TxMailboxes);
uint32_t HAL_CAN_GetTxTimestamp(CAN_HandleTypeDef *hcan, uint32_t TxMailbox);
HAL_StatusTypeDef HAL_CAN_GetRxMessage(CAN_HandleTypeDef *hcan, uint32_t RxFifo, CAN_RxHeaderTypeDef *pHeader, uint8_t aData[]);
uint32_t HAL_CAN_GetRxFifoFillLevel(CAN_HandleTypeDef *hcan, uint32_t RxFifo);



 




 
 
HAL_StatusTypeDef HAL_CAN_ActivateNotification(CAN_HandleTypeDef *hcan, uint32_t ActiveITs);
HAL_StatusTypeDef HAL_CAN_DeactivateNotification(CAN_HandleTypeDef *hcan, uint32_t InactiveITs);
void HAL_CAN_IRQHandler(CAN_HandleTypeDef *hcan);



 




 
 

void HAL_CAN_TxMailbox0CompleteCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_TxMailbox1CompleteCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_TxMailbox2CompleteCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_TxMailbox0AbortCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_TxMailbox1AbortCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_TxMailbox2AbortCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_RxFifo0MsgPendingCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_RxFifo0FullCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_RxFifo1MsgPendingCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_RxFifo1FullCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_SleepCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_WakeUpFromRxMsgCallback(CAN_HandleTypeDef *hcan);
void HAL_CAN_ErrorCallback(CAN_HandleTypeDef *hcan);



 




 
 
HAL_CAN_StateTypeDef HAL_CAN_GetState(CAN_HandleTypeDef *hcan);
uint32_t HAL_CAN_GetError(CAN_HandleTypeDef *hcan);
HAL_StatusTypeDef HAL_CAN_ResetError(CAN_HandleTypeDef *hcan);



 



 

 


 



 

 


 



 

 


 



 

 


 

#line 825 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_can.h"



 
 



 





 








 
#line 245 "..\\USER\\stm32f4xx_hal_conf.h"






#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_crc.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_crc.h"



 



 

 


 



 
typedef enum
{
  HAL_CRC_STATE_RESET     = 0x00U,   
  HAL_CRC_STATE_READY     = 0x01U,   
  HAL_CRC_STATE_BUSY      = 0x02U,   
  HAL_CRC_STATE_TIMEOUT   = 0x03U,   
  HAL_CRC_STATE_ERROR     = 0x04U    
} HAL_CRC_StateTypeDef;




 
typedef struct
{
  CRC_TypeDef                 *Instance;    

  HAL_LockTypeDef             Lock;         

  volatile HAL_CRC_StateTypeDef   State;        

} CRC_HandleTypeDef;


 

 


 



 

 


 




 






 








 







 



 


 


 



 

 


 

 


 
HAL_StatusTypeDef HAL_CRC_Init(CRC_HandleTypeDef *hcrc);
HAL_StatusTypeDef HAL_CRC_DeInit(CRC_HandleTypeDef *hcrc);
void HAL_CRC_MspInit(CRC_HandleTypeDef *hcrc);
void HAL_CRC_MspDeInit(CRC_HandleTypeDef *hcrc);


 

 


 
uint32_t HAL_CRC_Accumulate(CRC_HandleTypeDef *hcrc, uint32_t pBuffer[], uint32_t BufferLength);
uint32_t HAL_CRC_Calculate(CRC_HandleTypeDef *hcrc, uint32_t pBuffer[], uint32_t BufferLength);


 

 


 
HAL_CRC_StateTypeDef HAL_CRC_GetState(CRC_HandleTypeDef *hcrc);


 



 



 



 







 
#line 253 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_cryp.h"

















  

 








 
#line 31 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_cryp.h"



 
#line 634 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_cryp.h"



  







 
#line 257 "..\\USER\\stm32f4xx_hal_conf.h"






#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dac.h"

















 

 












 
#line 35 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dac.h"



 



 

 


 



 
typedef enum
{
  HAL_DAC_STATE_RESET             = 0x00U,   
  HAL_DAC_STATE_READY             = 0x01U,   
  HAL_DAC_STATE_BUSY              = 0x02U,   
  HAL_DAC_STATE_TIMEOUT           = 0x03U,   
  HAL_DAC_STATE_ERROR             = 0x04U    
}HAL_DAC_StateTypeDef;
 


 



typedef struct

{
  DAC_TypeDef                 *Instance;      

  volatile HAL_DAC_StateTypeDef   State;          

  HAL_LockTypeDef             Lock;           

  DMA_HandleTypeDef           *DMA_Handle1;   

  DMA_HandleTypeDef           *DMA_Handle2;   

  volatile uint32_t               ErrorCode;      

#line 95 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dac.h"

}DAC_HandleTypeDef;



 
typedef struct
{
  uint32_t DAC_Trigger;       
 

  uint32_t DAC_OutputBuffer;  
 
}DAC_ChannelConfTypeDef;

#line 134 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dac.h"


 

 


 



 
#line 153 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dac.h"


 



 

#line 169 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dac.h"





 



 




 



 




 



 





 



  




 



  




 



 

 


 




 
#line 244 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dac.h"





 






 






 






 









 









 









 



 

 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dac_ex.h"

















 

 












 
#line 35 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dac_ex.h"



 



 

 
 


 



 
#line 77 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dac_ex.h"


 



 

 
 


 



 
 
uint32_t HAL_DACEx_DualGetValue(DAC_HandleTypeDef* hdac);
HAL_StatusTypeDef HAL_DACEx_TriangleWaveGenerate(DAC_HandleTypeDef* hdac, uint32_t Channel, uint32_t Amplitude);
HAL_StatusTypeDef HAL_DACEx_NoiseWaveGenerate(DAC_HandleTypeDef* hdac, uint32_t Channel, uint32_t Amplitude);
HAL_StatusTypeDef HAL_DACEx_DualSetValue(DAC_HandleTypeDef* hdac, uint32_t Alignment, uint32_t Data1, uint32_t Data2);

void HAL_DACEx_ConvCpltCallbackCh2(DAC_HandleTypeDef* hdac);
void HAL_DACEx_ConvHalfCpltCallbackCh2(DAC_HandleTypeDef* hdac);
void HAL_DACEx_ErrorCallbackCh2(DAC_HandleTypeDef* hdac);
void HAL_DACEx_DMAUnderrunCallbackCh2(DAC_HandleTypeDef* hdac);


 



 
 
 
 


 



 

 


 
#line 150 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dac_ex.h"


 

 


 
void DAC_DMAConvCpltCh2(DMA_HandleTypeDef *hdma);
void DAC_DMAErrorCh2(DMA_HandleTypeDef *hdma);
void DAC_DMAHalfConvCpltCh2(DMA_HandleTypeDef *hdma); 


 







 



 
  






 
#line 308 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dac.h"

 


 



 
 
HAL_StatusTypeDef HAL_DAC_Init(DAC_HandleTypeDef* hdac);
HAL_StatusTypeDef HAL_DAC_DeInit(DAC_HandleTypeDef* hdac);
void HAL_DAC_MspInit(DAC_HandleTypeDef* hdac);
void HAL_DAC_MspDeInit(DAC_HandleTypeDef* hdac);


 



 
 
HAL_StatusTypeDef HAL_DAC_Start(DAC_HandleTypeDef* hdac, uint32_t Channel);
HAL_StatusTypeDef HAL_DAC_Stop(DAC_HandleTypeDef* hdac, uint32_t Channel);
HAL_StatusTypeDef HAL_DAC_Start_DMA(DAC_HandleTypeDef* hdac, uint32_t Channel, uint32_t* pData, uint32_t Length, uint32_t Alignment);
HAL_StatusTypeDef HAL_DAC_Stop_DMA(DAC_HandleTypeDef* hdac, uint32_t Channel);
uint32_t HAL_DAC_GetValue(DAC_HandleTypeDef* hdac, uint32_t Channel);


 



 
 
HAL_StatusTypeDef HAL_DAC_ConfigChannel(DAC_HandleTypeDef* hdac, DAC_ChannelConfTypeDef* sConfig, uint32_t Channel);
HAL_StatusTypeDef HAL_DAC_SetValue(DAC_HandleTypeDef* hdac, uint32_t Channel, uint32_t Alignment, uint32_t Data);


 



 
 
HAL_DAC_StateTypeDef HAL_DAC_GetState(DAC_HandleTypeDef* hdac);
void HAL_DAC_IRQHandler(DAC_HandleTypeDef* hdac);
uint32_t HAL_DAC_GetError(DAC_HandleTypeDef *hdac);

void HAL_DAC_ConvCpltCallbackCh1(DAC_HandleTypeDef* hdac);
void HAL_DAC_ConvHalfCpltCallbackCh1(DAC_HandleTypeDef* hdac);
void HAL_DAC_ErrorCallbackCh1(DAC_HandleTypeDef *hdac);
void HAL_DAC_DMAUnderrunCallbackCh1(DAC_HandleTypeDef *hdac);








 



 
 
 
 


 



 

 


 
#line 397 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dac.h"

#line 407 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dac.h"




 





 





 




 

 


 


 







 



 
  






 
#line 265 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dcmi.h"

















 

 










 
#line 33 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dcmi.h"

 
 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dcmi_ex.h"

















  

 











 
#line 34 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dcmi_ex.h"




 




   

 


 


  
typedef struct
{
  uint8_t FrameStartCode;  
  uint8_t LineStartCode;   
  uint8_t LineEndCode;     
  uint8_t FrameEndCode;    
}DCMI_CodesInitTypeDef;



   
typedef struct
{
  uint32_t  SynchroMode;                
 

  uint32_t  PCKPolarity;                
 

  uint32_t  VSPolarity;                 
 

  uint32_t  HSPolarity;                 
 

  uint32_t  CaptureRate;                
 

  uint32_t  ExtendedDataMode;           
 

  DCMI_CodesInitTypeDef SyncroCode;      

  uint32_t JPEGMode;                    
 
#line 101 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dcmi_ex.h"
}DCMI_InitTypeDef;



 

 
#line 159 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dcmi_ex.h"

 
 
 
 
 




 
#line 188 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dcmi_ex.h"


 

 







 



  







 
#line 37 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dcmi.h"



 




 

 


 


  
typedef enum
{
  HAL_DCMI_STATE_RESET             = 0x00U,   
  HAL_DCMI_STATE_READY             = 0x01U,   
  HAL_DCMI_STATE_BUSY              = 0x02U,   
  HAL_DCMI_STATE_TIMEOUT           = 0x03U,   
  HAL_DCMI_STATE_ERROR             = 0x04U,   
  HAL_DCMI_STATE_SUSPENDED         = 0x05U    
}HAL_DCMI_StateTypeDef;



 
typedef struct __DCMI_HandleTypeDef
{
  DCMI_TypeDef                  *Instance;            

  DCMI_InitTypeDef              Init;                 

  HAL_LockTypeDef               Lock;                 

  volatile HAL_DCMI_StateTypeDef    State;                

  volatile uint32_t                 XferCount;            

  volatile uint32_t                 XferSize;             

  uint32_t                      XferTransferNumber;   

  uint32_t                      pBuffPtr;             

  DMA_HandleTypeDef             *DMA_Handle;          

  volatile uint32_t                 ErrorCode;            
#line 96 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dcmi.h"
}DCMI_HandleTypeDef;

#line 112 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dcmi.h"




 

 


 



 
#line 134 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_dcmi.h"


 



  






 



 







 



 





 



 





 



  





 



 





 



 






 



 







 



 




 



  




 



 





 



 







 



 



 





  







  







 



 
 
 


 
  



 










 






 


 



















 















 













 













 













 




 
  
 


 



 
 
HAL_StatusTypeDef HAL_DCMI_Init(DCMI_HandleTypeDef *hdcmi);
HAL_StatusTypeDef HAL_DCMI_DeInit(DCMI_HandleTypeDef *hdcmi);
void              HAL_DCMI_MspInit(DCMI_HandleTypeDef* hdcmi);
void              HAL_DCMI_MspDeInit(DCMI_HandleTypeDef* hdcmi);

 






 



 
 
HAL_StatusTypeDef HAL_DCMI_Start_DMA(DCMI_HandleTypeDef* hdcmi, uint32_t DCMI_Mode, uint32_t pData, uint32_t Length);
HAL_StatusTypeDef HAL_DCMI_Stop(DCMI_HandleTypeDef* hdcmi);
HAL_StatusTypeDef HAL_DCMI_Suspend(DCMI_HandleTypeDef* hdcmi);
HAL_StatusTypeDef HAL_DCMI_Resume(DCMI_HandleTypeDef* hdcmi);
void              HAL_DCMI_ErrorCallback(DCMI_HandleTypeDef *hdcmi);
void              HAL_DCMI_LineEventCallback(DCMI_HandleTypeDef *hdcmi);
void              HAL_DCMI_FrameEventCallback(DCMI_HandleTypeDef *hdcmi);
void              HAL_DCMI_VsyncEventCallback(DCMI_HandleTypeDef *hdcmi);
void              HAL_DCMI_VsyncCallback(DCMI_HandleTypeDef *hdcmi);
void              HAL_DCMI_HsyncCallback(DCMI_HandleTypeDef *hdcmi);
void              HAL_DCMI_IRQHandler(DCMI_HandleTypeDef *hdcmi);


 
  


 
 
HAL_StatusTypeDef HAL_DCMI_ConfigCrop(DCMI_HandleTypeDef *hdcmi, uint32_t X0, uint32_t Y0, uint32_t XSize, uint32_t YSize);
HAL_StatusTypeDef HAL_DCMI_EnableCrop(DCMI_HandleTypeDef *hdcmi);
HAL_StatusTypeDef HAL_DCMI_DisableCrop(DCMI_HandleTypeDef *hdcmi);


 
  


 
 
HAL_DCMI_StateTypeDef HAL_DCMI_GetState(DCMI_HandleTypeDef *hdcmi);
uint32_t              HAL_DCMI_GetError(DCMI_HandleTypeDef *hdcmi);


 



 

 
 
 


 




    
 


 





                              


                                      


                                     


                                     


                                     



                                    




                                    






 

 


 
  


 
      






 
    


 







 
#line 269 "..\\USER\\stm32f4xx_hal_conf.h"






#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash.h"

















  

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash.h"



 



  

 


 
 


 
typedef enum 
{
  FLASH_PROC_NONE = 0U, 
  FLASH_PROC_SECTERASE,
  FLASH_PROC_MASSERASE,
  FLASH_PROC_PROGRAM
} FLASH_ProcedureTypeDef;



 
typedef struct
{
  volatile FLASH_ProcedureTypeDef ProcedureOnGoing;    
  
  volatile uint32_t               NbSectorsToErase;    
  
  volatile uint8_t                VoltageForErase;     
  
  volatile uint32_t               Sector;              
  
  volatile uint32_t               Bank;                
  
  volatile uint32_t               Address;             
  
  HAL_LockTypeDef             Lock;                

  volatile uint32_t               ErrorCode;           

}FLASH_ProcessTypeDef;



 

 


   



  
#line 97 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash.h"


 
  


  






 




  
#line 126 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash.h"


 
  



  




   



 







  



  







  



  
  
 


 





  






  





  





  





  





  





  





  






 








 










   









   
















 















 



 

 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"

















  

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"



 



  

 


 



 
typedef struct
{
  uint32_t TypeErase;   
 

  uint32_t Banks;       
 

  uint32_t Sector;      
 

  uint32_t NbSectors;   
 

  uint32_t VoltageRange;
 

} FLASH_EraseInitTypeDef;



 
typedef struct
{
  uint32_t OptionType;   
 

  uint32_t WRPState;     
 

  uint32_t WRPSector;         
 

  uint32_t Banks;        
         

  uint32_t RDPLevel;     
 

  uint32_t BORLevel;     
 

  uint8_t  USERConfig;    

} FLASH_OBProgramInitTypeDef;



 
#line 133 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"


 

 



 



  




 
  


  






 
  


  




 
  


  






 
  


 






  
  


  




  
  


  




  




  




     



   






 

#line 249 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"



  






#line 266 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"


 



 
   
#line 293 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
 

  




     
#line 311 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
 



  
  



 
#line 327 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"

#line 336 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"


  
    


 





#line 356 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"


  



 
    
#line 391 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
 

    
#line 412 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
       

  
#line 430 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
 

  
#line 441 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
 

  
#line 451 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
 

 
#line 464 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
 



  



 
   
#line 502 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
 

  
#line 524 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
     
      
  
#line 543 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
 

 
#line 555 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
 
 
 
#line 566 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
 

 
#line 580 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
 


 
  


 
    
#line 617 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
 
      
 
#line 639 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
       

 
#line 651 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
 

 
#line 662 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
 

 
#line 677 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
 



 
  


 







 



 
#line 708 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"


 



  
  
 

 


 



 
 
HAL_StatusTypeDef HAL_FLASHEx_Erase(FLASH_EraseInitTypeDef *pEraseInit, uint32_t *SectorError);
HAL_StatusTypeDef HAL_FLASHEx_Erase_IT(FLASH_EraseInitTypeDef *pEraseInit);
HAL_StatusTypeDef HAL_FLASHEx_OBProgram(FLASH_OBProgramInitTypeDef *pOBInit);
void              HAL_FLASHEx_OBGetConfig(FLASH_OBProgramInitTypeDef *pOBInit);

#line 744 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"







 



 
 
 
 


 
  




 




  





  




  




 






  






 

 


 



 



























#line 849 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"







#line 863 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
  
#line 883 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"

#line 898 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"







#line 913 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"
 
#line 928 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"

#line 939 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"

#line 949 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"













#line 968 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"





  
























   


























#line 1034 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ex.h"


 



 

 


 
void FLASH_Erase_Sector(uint32_t Sector, uint8_t VoltageRange);
void FLASH_FlushCaches(void);


  



  



 







 
#line 298 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash.h"
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ramfunc.h"

















  

 



#line 75 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash_ramfunc.h"




 
#line 299 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_flash.h"

 


 


 
 
HAL_StatusTypeDef HAL_FLASH_Program(uint32_t TypeProgram, uint32_t Address, uint64_t Data);
HAL_StatusTypeDef HAL_FLASH_Program_IT(uint32_t TypeProgram, uint32_t Address, uint64_t Data);
 
void HAL_FLASH_IRQHandler(void);
  
void HAL_FLASH_EndOfOperationCallback(uint32_t ReturnValue);
void HAL_FLASH_OperationErrorCallback(uint32_t ReturnValue);


 



 
 
HAL_StatusTypeDef HAL_FLASH_Unlock(void);
HAL_StatusTypeDef HAL_FLASH_Lock(void);
HAL_StatusTypeDef HAL_FLASH_OB_Unlock(void);
HAL_StatusTypeDef HAL_FLASH_OB_Lock(void);
 
HAL_StatusTypeDef HAL_FLASH_OB_Launch(void);


 



 
 
uint32_t HAL_FLASH_GetError(void);
HAL_StatusTypeDef FLASH_WaitForLastOperation(uint32_t Timeout);


 



  
 
 


 



 
 


 



  



  



  



  



  




 

 


 



 






 



 

 


 



 



  



 







 
#line 277 "..\\USER\\stm32f4xx_hal_conf.h"

 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_sram.h"

















  

 







 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_fsmc.h"

















  

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_fsmc.h"



 
   


 



 


 



  
typedef struct
{
  uint32_t NSBank;                       
 

  uint32_t DataAddressMux;               

 

  uint32_t MemoryType;                   

 

  uint32_t MemoryDataWidth;              
 

  uint32_t BurstAccessMode;              

 

  uint32_t WaitSignalPolarity;           

 

  uint32_t WrapMode;                     


 

  uint32_t WaitSignalActive;             


 

  uint32_t WriteOperation;               
 

  uint32_t WaitSignal;                   

 

  uint32_t ExtendedMode;                 
 

  uint32_t AsynchronousWait;             

 

  uint32_t WriteBurst;                   
 

  uint32_t ContinuousClock;              



 

  uint32_t WriteFifo;                    



 

  uint32_t PageSize;                     
 
}FSMC_NORSRAM_InitTypeDef;



 
typedef struct
{
  uint32_t AddressSetupTime;             


 

  uint32_t AddressHoldTime;              


 

  uint32_t DataSetupTime;                



 

  uint32_t BusTurnAroundDuration;        


 

  uint32_t CLKDivision;                  


 

  uint32_t DataLatency;                  





 

  uint32_t AccessMode;                   
 

}FSMC_NORSRAM_TimingTypeDef;




  
typedef struct
{
  uint32_t NandBank;               
 

  uint32_t Waitfeature;            
 

  uint32_t MemoryDataWidth;        
 

  uint32_t EccComputation;         
 

  uint32_t ECCPageSize;            
 

  uint32_t TCLRSetupTime;          

 

  uint32_t TARSetupTime;           

 

}FSMC_NAND_InitTypeDef;



 
typedef struct
{
  uint32_t SetupTime;            



 

  uint32_t WaitSetupTime;        



 

  uint32_t HoldSetupTime;        




 

  uint32_t HiZSetupTime;         



 

}FSMC_NAND_PCC_TimingTypeDef;



 
typedef struct
{
  uint32_t Waitfeature;            
 

  uint32_t TCLRSetupTime;          

 

  uint32_t TARSetupTime;           

 

}FSMC_PCCARD_InitTypeDef;


 


 


 



  


 






 



 




 



 





 



 





 



 




 



 




 



 




 




 




 



 




 



 




 



 




 



 




 



 




 



 







 




 




 



 




 
  



 




 



 






 


 




 


 




 



 




 



 




 



 




 



 




 



 
#line 488 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_fsmc.h"


 


   




   






 
    


  






 



 
#line 527 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_fsmc.h"

#line 534 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_fsmc.h"










#line 550 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_fsmc.h"









#line 571 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_fsmc.h"

#line 585 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_fsmc.h"

#line 592 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_fsmc.h"

























 



 

 


 




 





  







  



  
  



 






   








                                           




  
  



 




  






  



 
  



  










   













 














 














 












  











  












 












 



 




 

































#line 856 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_fsmc.h"










































































 


  

 


 



 



 
HAL_StatusTypeDef  FSMC_NORSRAM_Init(FSMC_Bank1_TypeDef *Device, FSMC_NORSRAM_InitTypeDef *Init);
HAL_StatusTypeDef  FSMC_NORSRAM_Timing_Init(FSMC_Bank1_TypeDef *Device, FSMC_NORSRAM_TimingTypeDef *Timing, uint32_t Bank);
HAL_StatusTypeDef  FSMC_NORSRAM_Extended_Timing_Init(FSMC_Bank1E_TypeDef *Device, FSMC_NORSRAM_TimingTypeDef *Timing, uint32_t Bank, uint32_t ExtendedMode);
HAL_StatusTypeDef  FSMC_NORSRAM_DeInit(FSMC_Bank1_TypeDef *Device, FSMC_Bank1E_TypeDef *ExDevice, uint32_t Bank);


  



 
HAL_StatusTypeDef  FSMC_NORSRAM_WriteOperation_Enable(FSMC_Bank1_TypeDef *Device, uint32_t Bank);
HAL_StatusTypeDef  FSMC_NORSRAM_WriteOperation_Disable(FSMC_Bank1_TypeDef *Device, uint32_t Bank);


  


 




 


 
HAL_StatusTypeDef  FSMC_NAND_Init(FSMC_Bank2_3_TypeDef *Device, FSMC_NAND_InitTypeDef *Init);
HAL_StatusTypeDef  FSMC_NAND_CommonSpace_Timing_Init(FSMC_Bank2_3_TypeDef *Device, FSMC_NAND_PCC_TimingTypeDef *Timing, uint32_t Bank);
HAL_StatusTypeDef  FSMC_NAND_AttributeSpace_Timing_Init(FSMC_Bank2_3_TypeDef *Device, FSMC_NAND_PCC_TimingTypeDef *Timing, uint32_t Bank);
HAL_StatusTypeDef  FSMC_NAND_DeInit(FSMC_Bank2_3_TypeDef *Device, uint32_t Bank);


 



 
HAL_StatusTypeDef  FSMC_NAND_ECC_Enable(FSMC_Bank2_3_TypeDef *Device, uint32_t Bank);
HAL_StatusTypeDef  FSMC_NAND_ECC_Disable(FSMC_Bank2_3_TypeDef *Device, uint32_t Bank);
HAL_StatusTypeDef  FSMC_NAND_GetECC(FSMC_Bank2_3_TypeDef *Device, uint32_t *ECCval, uint32_t Bank, uint32_t Timeout);


  


  



 


 
HAL_StatusTypeDef  FSMC_PCCARD_Init(FSMC_Bank4_TypeDef *Device, FSMC_PCCARD_InitTypeDef *Init);
HAL_StatusTypeDef  FSMC_PCCARD_CommonSpace_Timing_Init(FSMC_Bank4_TypeDef *Device, FSMC_NAND_PCC_TimingTypeDef *Timing);
HAL_StatusTypeDef  FSMC_PCCARD_AttributeSpace_Timing_Init(FSMC_Bank4_TypeDef *Device, FSMC_NAND_PCC_TimingTypeDef *Timing);
HAL_StatusTypeDef  FSMC_PCCARD_IOSpace_Timing_Init(FSMC_Bank4_TypeDef *Device, FSMC_NAND_PCC_TimingTypeDef *Timing); 
HAL_StatusTypeDef  FSMC_PCCARD_DeInit(FSMC_Bank4_TypeDef *Device);


 


 




 




  



 
  






 
#line 32 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_sram.h"










 








  

 



  


  
typedef enum
{
  HAL_SRAM_STATE_RESET     = 0x00U,   
  HAL_SRAM_STATE_READY     = 0x01U,   
  HAL_SRAM_STATE_BUSY      = 0x02U,   
  HAL_SRAM_STATE_ERROR     = 0x03U,   
  HAL_SRAM_STATE_PROTECTED = 0x04U    

} HAL_SRAM_StateTypeDef;



 



typedef struct

{
  FSMC_Bank1_TypeDef           *Instance;    
  
  FSMC_Bank1E_TypeDef  *Extended;   
  
  FSMC_NORSRAM_InitTypeDef       Init;        

  HAL_LockTypeDef               Lock;         
  
  volatile HAL_SRAM_StateTypeDef    State;       
  
  DMA_HandleTypeDef             *hdma;       

#line 98 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_sram.h"
} SRAM_HandleTypeDef;

#line 118 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_sram.h"


 

 
 



 



 
#line 141 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_sram.h"



 
 



 



 
 
HAL_StatusTypeDef HAL_SRAM_Init(SRAM_HandleTypeDef *hsram, FSMC_NORSRAM_TimingTypeDef *Timing, FSMC_NORSRAM_TimingTypeDef *ExtTiming);
HAL_StatusTypeDef HAL_SRAM_DeInit(SRAM_HandleTypeDef *hsram);
void              HAL_SRAM_MspInit(SRAM_HandleTypeDef *hsram);
void              HAL_SRAM_MspDeInit(SRAM_HandleTypeDef *hsram);

void              HAL_SRAM_DMA_XferCpltCallback(DMA_HandleTypeDef *hdma);
void              HAL_SRAM_DMA_XferErrorCallback(DMA_HandleTypeDef *hdma);


  



 
 
HAL_StatusTypeDef HAL_SRAM_Read_8b(SRAM_HandleTypeDef *hsram, uint32_t *pAddress, uint8_t *pDstBuffer, uint32_t BufferSize);
HAL_StatusTypeDef HAL_SRAM_Write_8b(SRAM_HandleTypeDef *hsram, uint32_t *pAddress, uint8_t *pSrcBuffer, uint32_t BufferSize);
HAL_StatusTypeDef HAL_SRAM_Read_16b(SRAM_HandleTypeDef *hsram, uint32_t *pAddress, uint16_t *pDstBuffer, uint32_t BufferSize);
HAL_StatusTypeDef HAL_SRAM_Write_16b(SRAM_HandleTypeDef *hsram, uint32_t *pAddress, uint16_t *pSrcBuffer, uint32_t BufferSize);
HAL_StatusTypeDef HAL_SRAM_Read_32b(SRAM_HandleTypeDef *hsram, uint32_t *pAddress, uint32_t *pDstBuffer, uint32_t BufferSize);
HAL_StatusTypeDef HAL_SRAM_Write_32b(SRAM_HandleTypeDef *hsram, uint32_t *pAddress, uint32_t *pSrcBuffer, uint32_t BufferSize);
HAL_StatusTypeDef HAL_SRAM_Read_DMA(SRAM_HandleTypeDef *hsram, uint32_t *pAddress, uint32_t *pDstBuffer, uint32_t BufferSize);
HAL_StatusTypeDef HAL_SRAM_Write_DMA(SRAM_HandleTypeDef *hsram, uint32_t *pAddress, uint32_t *pSrcBuffer, uint32_t BufferSize);
#line 184 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_sram.h"


  



 
 
HAL_StatusTypeDef HAL_SRAM_WriteOperation_Enable(SRAM_HandleTypeDef *hsram);
HAL_StatusTypeDef HAL_SRAM_WriteOperation_Disable(SRAM_HandleTypeDef *hsram);


  



 
 
HAL_SRAM_StateTypeDef HAL_SRAM_GetState(SRAM_HandleTypeDef *hsram);


 



 

 
 
 
 
 


  






 






 
#line 281 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_nor.h"

















  

 







 
#line 32 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_nor.h"









 



  






 


 



  
typedef enum
{  
  HAL_NOR_STATE_RESET             = 0x00U,   
  HAL_NOR_STATE_READY             = 0x01U,   
  HAL_NOR_STATE_BUSY              = 0x02U,   
  HAL_NOR_STATE_ERROR             = 0x03U,   
  HAL_NOR_STATE_PROTECTED         = 0x04U    
}HAL_NOR_StateTypeDef;



 
typedef enum
{
  HAL_NOR_STATUS_SUCCESS  = 0U,
  HAL_NOR_STATUS_ONGOING,
  HAL_NOR_STATUS_ERROR,
  HAL_NOR_STATUS_TIMEOUT
}HAL_NOR_StatusTypeDef;



 
typedef struct
{
  uint16_t Manufacturer_Code;   

  uint16_t Device_Code1;

  uint16_t Device_Code2;

  uint16_t Device_Code3;       


 
}NOR_IDTypeDef;



 
typedef struct
{
  

 

  uint16_t CFI_1;

  uint16_t CFI_2;

  uint16_t CFI_3;

  uint16_t CFI_4;
}NOR_CFITypeDef;



 



typedef struct


{
  FSMC_Bank1_TypeDef           *Instance;     

  FSMC_Bank1E_TypeDef  *Extended;     

  FSMC_NORSRAM_InitTypeDef       Init;          

  HAL_LockTypeDef               Lock;          

  volatile HAL_NOR_StateTypeDef     State;         





} NOR_HandleTypeDef;

#line 156 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_nor.h"


 
  
 
 


 



 
#line 178 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_nor.h"


 

 


 



 
 
HAL_StatusTypeDef HAL_NOR_Init(NOR_HandleTypeDef *hnor, FSMC_NORSRAM_TimingTypeDef *Timing, FSMC_NORSRAM_TimingTypeDef *ExtTiming);
HAL_StatusTypeDef HAL_NOR_DeInit(NOR_HandleTypeDef *hnor);
void HAL_NOR_MspInit(NOR_HandleTypeDef *hnor);
void HAL_NOR_MspDeInit(NOR_HandleTypeDef *hnor);
void HAL_NOR_MspWait(NOR_HandleTypeDef *hnor, uint32_t Timeout);


 
  


 
 
HAL_StatusTypeDef HAL_NOR_Read_ID(NOR_HandleTypeDef *hnor, NOR_IDTypeDef *pNOR_ID);
HAL_StatusTypeDef HAL_NOR_ReturnToReadMode(NOR_HandleTypeDef *hnor);
HAL_StatusTypeDef HAL_NOR_Read(NOR_HandleTypeDef *hnor, uint32_t *pAddress, uint16_t *pData);
HAL_StatusTypeDef HAL_NOR_Program(NOR_HandleTypeDef *hnor, uint32_t *pAddress, uint16_t *pData);

HAL_StatusTypeDef HAL_NOR_ReadBuffer(NOR_HandleTypeDef *hnor, uint32_t uwAddress, uint16_t *pData, uint32_t uwBufferSize);
HAL_StatusTypeDef HAL_NOR_ProgramBuffer(NOR_HandleTypeDef *hnor, uint32_t uwAddress, uint16_t *pData, uint32_t uwBufferSize);

HAL_StatusTypeDef HAL_NOR_Erase_Block(NOR_HandleTypeDef *hnor, uint32_t BlockAddress, uint32_t Address);
HAL_StatusTypeDef HAL_NOR_Erase_Chip(NOR_HandleTypeDef *hnor, uint32_t Address);
HAL_StatusTypeDef HAL_NOR_Read_CFI(NOR_HandleTypeDef *hnor, NOR_CFITypeDef *pNOR_CFI);








 
  


 
 
HAL_StatusTypeDef HAL_NOR_WriteOperation_Enable(NOR_HandleTypeDef *hnor);
HAL_StatusTypeDef HAL_NOR_WriteOperation_Disable(NOR_HandleTypeDef *hnor);


 
  


 
 
HAL_NOR_StateTypeDef  HAL_NOR_GetState(NOR_HandleTypeDef *hnor);
HAL_NOR_StatusTypeDef HAL_NOR_GetStatus(NOR_HandleTypeDef *hnor, uint32_t Address, uint32_t Timeout);


 
    


 
  
 
 
 


 
 





 





 

   
 



 






 

 


 






 


 





 




 






  



 







 
#line 285 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_nand.h"

















 

 







 
#line 31 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_nand.h"










 



  





 
 


 



 
typedef enum
{
  HAL_NAND_STATE_RESET     = 0x00U,   
  HAL_NAND_STATE_READY     = 0x01U,   
  HAL_NAND_STATE_BUSY      = 0x02U,   
  HAL_NAND_STATE_ERROR     = 0x03U    
}HAL_NAND_StateTypeDef;
   


 
typedef struct
{
   

  uint8_t Maker_Id; 

  uint8_t Device_Id;

  uint8_t Third_Id;

  uint8_t Fourth_Id;
}NAND_IDTypeDef;



 
typedef struct 
{
  uint16_t Page;    

  uint16_t Plane;    

  uint16_t Block;   

}NAND_AddressTypeDef;



  
typedef struct
{
  uint32_t        PageSize;              
 

  uint32_t        SpareAreaSize;         
 
  
  uint32_t        BlockSize;              

  uint32_t        BlockNbr;               
     
  uint32_t        PlaneNbr;               

  uint32_t        PlaneSize;              

  FunctionalState ExtraCommandEnable;    




 
}NAND_DeviceConfigTypeDef; 



 



typedef struct

{
  FSMC_Bank2_3_TypeDef               *Instance;   
  
  FSMC_NAND_InitTypeDef           Init;        

  HAL_LockTypeDef                Lock;        

  volatile HAL_NAND_StateTypeDef     State;       

  NAND_DeviceConfigTypeDef       Config;      






} NAND_HandleTypeDef;

#line 166 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_nand.h"



 

 
 


  




 
#line 190 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_nand.h"



 

 


 
    


 

 
 
HAL_StatusTypeDef  HAL_NAND_Init(NAND_HandleTypeDef *hnand, FSMC_NAND_PCC_TimingTypeDef *ComSpace_Timing, FSMC_NAND_PCC_TimingTypeDef *AttSpace_Timing);
HAL_StatusTypeDef  HAL_NAND_DeInit(NAND_HandleTypeDef *hnand);

HAL_StatusTypeDef  HAL_NAND_ConfigDevice(NAND_HandleTypeDef *hnand, NAND_DeviceConfigTypeDef *pDeviceConfig);

HAL_StatusTypeDef  HAL_NAND_Read_ID(NAND_HandleTypeDef *hnand, NAND_IDTypeDef *pNAND_ID);

void               HAL_NAND_MspInit(NAND_HandleTypeDef *hnand);
void               HAL_NAND_MspDeInit(NAND_HandleTypeDef *hnand);
void               HAL_NAND_IRQHandler(NAND_HandleTypeDef *hnand);
void               HAL_NAND_ITCallback(NAND_HandleTypeDef *hnand);



 
  


 

 
HAL_StatusTypeDef  HAL_NAND_Reset(NAND_HandleTypeDef *hnand);

HAL_StatusTypeDef  HAL_NAND_Read_Page_8b(NAND_HandleTypeDef *hnand, NAND_AddressTypeDef *pAddress, uint8_t *pBuffer, uint32_t NumPageToRead);
HAL_StatusTypeDef  HAL_NAND_Write_Page_8b(NAND_HandleTypeDef *hnand, NAND_AddressTypeDef *pAddress, uint8_t *pBuffer, uint32_t NumPageToWrite);
HAL_StatusTypeDef  HAL_NAND_Read_SpareArea_8b(NAND_HandleTypeDef *hnand, NAND_AddressTypeDef *pAddress, uint8_t *pBuffer, uint32_t NumSpareAreaToRead);
HAL_StatusTypeDef  HAL_NAND_Write_SpareArea_8b(NAND_HandleTypeDef *hnand, NAND_AddressTypeDef *pAddress, uint8_t *pBuffer, uint32_t NumSpareAreaTowrite);

HAL_StatusTypeDef  HAL_NAND_Read_Page_16b(NAND_HandleTypeDef *hnand, NAND_AddressTypeDef *pAddress, uint16_t *pBuffer, uint32_t NumPageToRead);
HAL_StatusTypeDef  HAL_NAND_Write_Page_16b(NAND_HandleTypeDef *hnand, NAND_AddressTypeDef *pAddress, uint16_t *pBuffer, uint32_t NumPageToWrite);
HAL_StatusTypeDef  HAL_NAND_Read_SpareArea_16b(NAND_HandleTypeDef *hnand, NAND_AddressTypeDef *pAddress, uint16_t *pBuffer, uint32_t NumSpareAreaToRead);
HAL_StatusTypeDef  HAL_NAND_Write_SpareArea_16b(NAND_HandleTypeDef *hnand, NAND_AddressTypeDef *pAddress, uint16_t *pBuffer, uint32_t NumSpareAreaTowrite);

HAL_StatusTypeDef  HAL_NAND_Erase_Block(NAND_HandleTypeDef *hnand, NAND_AddressTypeDef *pAddress);

uint32_t           HAL_NAND_Read_Status(NAND_HandleTypeDef *hnand);
uint32_t           HAL_NAND_Address_Inc(NAND_HandleTypeDef *hnand, NAND_AddressTypeDef *pAddress);









 



 

 
HAL_StatusTypeDef  HAL_NAND_ECC_Enable(NAND_HandleTypeDef *hnand);
HAL_StatusTypeDef  HAL_NAND_ECC_Disable(NAND_HandleTypeDef *hnand);
HAL_StatusTypeDef  HAL_NAND_GetECC(NAND_HandleTypeDef *hnand, uint32_t *ECCval, uint32_t Timeout);



 
    


 
 
HAL_NAND_StateTypeDef HAL_NAND_GetState(NAND_HandleTypeDef *hnand);


 



 
    
 
 
 


 












#line 306 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_nand.h"

 
#line 314 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_nand.h"


 

 


 






 







 






 









 





 



    


 


  



  







 
#line 289 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pccard.h"

















  

 







 
#line 31 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pccard.h"








 






  

 


 



  
typedef enum
{
  HAL_PCCARD_STATE_RESET     = 0x00U,     
  HAL_PCCARD_STATE_READY     = 0x01U,     
  HAL_PCCARD_STATE_BUSY      = 0x02U,     
  HAL_PCCARD_STATE_ERROR     = 0x04U      
}HAL_PCCARD_StateTypeDef;

typedef enum
{
  HAL_PCCARD_STATUS_SUCCESS = 0U,
  HAL_PCCARD_STATUS_ONGOING,
  HAL_PCCARD_STATUS_ERROR,
  HAL_PCCARD_STATUS_TIMEOUT
}HAL_PCCARD_StatusTypeDef;



 



typedef struct

{
  FSMC_Bank4_TypeDef           *Instance;               
  
  FSMC_PCCARD_InitTypeDef       Init;                    

  volatile HAL_PCCARD_StateTypeDef State;                   

  HAL_LockTypeDef              Lock;                    






} PCCARD_HandleTypeDef;

#line 112 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pccard.h"


 

 
 


 



 
#line 134 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pccard.h"


  

 


 



 
 
HAL_StatusTypeDef  HAL_PCCARD_Init(PCCARD_HandleTypeDef *hpccard, FSMC_NAND_PCC_TimingTypeDef *ComSpaceTiming, FSMC_NAND_PCC_TimingTypeDef *AttSpaceTiming, FSMC_NAND_PCC_TimingTypeDef *IOSpaceTiming);
HAL_StatusTypeDef  HAL_PCCARD_DeInit(PCCARD_HandleTypeDef *hpccard);
void HAL_PCCARD_MspInit(PCCARD_HandleTypeDef *hpccard);
void HAL_PCCARD_MspDeInit(PCCARD_HandleTypeDef *hpccard);


 



 
 
HAL_StatusTypeDef  HAL_PCCARD_Read_ID(PCCARD_HandleTypeDef *hpccard, uint8_t CompactFlash_ID[], uint8_t *pStatus);
HAL_StatusTypeDef  HAL_PCCARD_Write_Sector(PCCARD_HandleTypeDef *hpccard, uint16_t *pBuffer, uint16_t SectorAddress,  uint8_t *pStatus);
HAL_StatusTypeDef  HAL_PCCARD_Read_Sector(PCCARD_HandleTypeDef *hpccard, uint16_t *pBuffer, uint16_t SectorAddress, uint8_t *pStatus);
HAL_StatusTypeDef  HAL_PCCARD_Erase_Sector(PCCARD_HandleTypeDef *hpccard, uint16_t SectorAddress, uint8_t *pStatus);
HAL_StatusTypeDef  HAL_PCCARD_Reset(PCCARD_HandleTypeDef *hpccard);
void               HAL_PCCARD_IRQHandler(PCCARD_HandleTypeDef *hpccard);
void               HAL_PCCARD_ITCallback(PCCARD_HandleTypeDef *hpccard);








 



 
 
HAL_PCCARD_StateTypeDef  HAL_PCCARD_GetState(PCCARD_HandleTypeDef *hpccard);
HAL_PCCARD_StatusTypeDef HAL_PCCARD_GetStatus(PCCARD_HandleTypeDef *hpccard);
HAL_PCCARD_StatusTypeDef HAL_PCCARD_ReadStatus(PCCARD_HandleTypeDef *hpccard);


 



 
 
 
 


 






 
#line 213 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pccard.h"

 





 









 
 





#line 244 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pccard.h"
























 


 







 
  






 
#line 293 "..\\USER\\stm32f4xx_hal_conf.h"

  




#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_hash.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_hash.h"



 
#line 613 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_hash.h"


 









 
#line 301 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2c.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2c.h"



 



 

 


 




 
typedef struct
{
  uint32_t ClockSpeed;       
 

  uint32_t DutyCycle;        
 

  uint32_t OwnAddress1;      
 

  uint32_t AddressingMode;   
 

  uint32_t DualAddressMode;  
 

  uint32_t OwnAddress2;      
 

  uint32_t GeneralCallMode;  
 

  uint32_t NoStretchMode;    
 

} I2C_InitTypeDef;



 



























 
typedef enum
{
  HAL_I2C_STATE_RESET             = 0x00U,    
  HAL_I2C_STATE_READY             = 0x20U,    
  HAL_I2C_STATE_BUSY              = 0x24U,    
  HAL_I2C_STATE_BUSY_TX           = 0x21U,    
  HAL_I2C_STATE_BUSY_RX           = 0x22U,    
  HAL_I2C_STATE_LISTEN            = 0x28U,    
  HAL_I2C_STATE_BUSY_TX_LISTEN    = 0x29U,   
 
  HAL_I2C_STATE_BUSY_RX_LISTEN    = 0x2AU,   
 
  HAL_I2C_STATE_ABORT             = 0x60U,    
  HAL_I2C_STATE_TIMEOUT           = 0xA0U,    
  HAL_I2C_STATE_ERROR             = 0xE0U     

} HAL_I2C_StateTypeDef;



 


















 
typedef enum
{
  HAL_I2C_MODE_NONE               = 0x00U,    
  HAL_I2C_MODE_MASTER             = 0x10U,    
  HAL_I2C_MODE_SLAVE              = 0x20U,    
  HAL_I2C_MODE_MEM                = 0x40U     

} HAL_I2C_ModeTypeDef;



 




 
#line 176 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2c.h"


 




 
typedef struct __I2C_HandleTypeDef
{
  I2C_TypeDef                *Instance;       

  I2C_InitTypeDef            Init;            

  uint8_t                    *pBuffPtr;       

  uint16_t                   XferSize;        

  volatile uint16_t              XferCount;       

  volatile uint32_t              XferOptions;     

  volatile uint32_t              PreviousState;  
 

  DMA_HandleTypeDef          *hdmatx;         

  DMA_HandleTypeDef          *hdmarx;         

  HAL_LockTypeDef            Lock;            

  volatile HAL_I2C_StateTypeDef  State;           

  volatile HAL_I2C_ModeTypeDef   Mode;            

  volatile uint32_t              ErrorCode;       

  volatile uint32_t              Devaddress;      

  volatile uint32_t              Memaddress;      

  volatile uint32_t              MemaddSize;      

  volatile uint32_t              EventCount;      


#line 239 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2c.h"
} I2C_HandleTypeDef;

#line 269 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2c.h"


 



 
 



 



 




 



 




 



 




 



 




 



 




 



 




 



 




 



 
#line 354 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2c.h"



 




 






 





 



 

#line 397 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2c.h"


 



 

 



 




 
#line 424 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2c.h"









 











 
























 













 






 
#line 499 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2c.h"




 
#line 511 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2c.h"




 





 




 

 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2c_ex.h"

















 

 







#line 109 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2c_ex.h"








 
#line 530 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2c.h"

 


 



 
 
HAL_StatusTypeDef HAL_I2C_Init(I2C_HandleTypeDef *hi2c);
HAL_StatusTypeDef HAL_I2C_DeInit(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MspInit(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MspDeInit(I2C_HandleTypeDef *hi2c);

 
#line 553 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2c.h"


 



 
 
 
HAL_StatusTypeDef HAL_I2C_Master_Transmit(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Master_Receive(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Slave_Transmit(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Slave_Receive(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Mem_Write(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_Mem_Read(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2C_IsDeviceReady(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint32_t Trials, uint32_t Timeout);

 
HAL_StatusTypeDef HAL_I2C_Master_Transmit_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Master_Receive_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Transmit_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Receive_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Write_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Read_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint8_t *pData, uint16_t Size);

HAL_StatusTypeDef HAL_I2C_Master_Seq_Transmit_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Master_Seq_Receive_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Transmit_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Receive_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_EnableListen_IT(I2C_HandleTypeDef *hi2c);
HAL_StatusTypeDef HAL_I2C_DisableListen_IT(I2C_HandleTypeDef *hi2c);
HAL_StatusTypeDef HAL_I2C_Master_Abort_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress);

 
HAL_StatusTypeDef HAL_I2C_Master_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Master_Receive_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Slave_Receive_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Write_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2C_Mem_Read_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddress, uint16_t MemAddSize, uint8_t *pData, uint16_t Size);

HAL_StatusTypeDef HAL_I2C_Master_Seq_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Master_Seq_Receive_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pData, uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, uint32_t XferOptions);
HAL_StatusTypeDef HAL_I2C_Slave_Seq_Receive_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, uint32_t XferOptions);


 



 
 
void HAL_I2C_EV_IRQHandler(I2C_HandleTypeDef *hi2c);
void HAL_I2C_ER_IRQHandler(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MasterTxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MasterRxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_SlaveTxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_SlaveRxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_AddrCallback(I2C_HandleTypeDef *hi2c, uint8_t TransferDirection, uint16_t AddrMatchCode);
void HAL_I2C_ListenCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MemTxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_MemRxCpltCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_ErrorCallback(I2C_HandleTypeDef *hi2c);
void HAL_I2C_AbortCpltCallback(I2C_HandleTypeDef *hi2c);


 



 
 
HAL_I2C_StateTypeDef HAL_I2C_GetState(I2C_HandleTypeDef *hi2c);
HAL_I2C_ModeTypeDef HAL_I2C_GetMode(I2C_HandleTypeDef *hi2c);
uint32_t HAL_I2C_GetError(I2C_HandleTypeDef *hi2c);



 



 
 
 
 


 





 

 


 

#line 664 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2c.h"













 
#line 700 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2c.h"








 



 

 


 



 



 



 








 
#line 305 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2s.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2s.h"



 



 

 


 



 
typedef struct
{
  uint32_t Mode;                
 

  uint32_t Standard;            
 

  uint32_t DataFormat;          
 

  uint32_t MCLKOutput;          
 

  uint32_t AudioFreq;           
 

  uint32_t CPOL;                
 

  uint32_t ClockSource;     
 
  uint32_t FullDuplexMode;  
 
} I2S_InitTypeDef;



 
typedef enum
{
  HAL_I2S_STATE_RESET      = 0x00U,   
  HAL_I2S_STATE_READY      = 0x01U,   
  HAL_I2S_STATE_BUSY       = 0x02U,   
  HAL_I2S_STATE_BUSY_TX    = 0x03U,   
  HAL_I2S_STATE_BUSY_RX    = 0x04U,   
  HAL_I2S_STATE_BUSY_TX_RX = 0x05U,   
  HAL_I2S_STATE_TIMEOUT    = 0x06U,   
  HAL_I2S_STATE_ERROR      = 0x07U    
} HAL_I2S_StateTypeDef;



 
typedef struct __I2S_HandleTypeDef
{
  SPI_TypeDef                *Instance;     

  I2S_InitTypeDef            Init;          

  uint16_t                   *pTxBuffPtr;   

  volatile uint16_t              TxXferSize;    

  volatile uint16_t              TxXferCount;   

  uint16_t                   *pRxBuffPtr;   

  volatile uint16_t              RxXferSize;    

  volatile uint16_t              RxXferCount;  




 
  void (*IrqHandlerISR)(struct __I2S_HandleTypeDef *hi2s);          

  DMA_HandleTypeDef          *hdmatx;       

  DMA_HandleTypeDef          *hdmarx;       

  volatile HAL_LockTypeDef       Lock;          

  volatile HAL_I2S_StateTypeDef  State;         

  volatile uint32_t              ErrorCode;    
 

#line 138 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2s.h"
} I2S_HandleTypeDef;

#line 164 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2s.h"


 

 


 


 
#line 184 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2s.h"


 



 






 



 







 



 






 



 




 



 
#line 244 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2s.h"


 



 




 



 




 



 





 



 













 



 






#line 309 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2s.h"








 



 

 


 




 
#line 341 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2s.h"




 





 










 










 











 














 





 
#line 413 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2s.h"



 







 

 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2s_ex.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2s_ex.h"



 



 

 
 
 


 






 











 












 














 





 
#line 104 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2s_ex.h"



 







 

 


 



 

 
 
HAL_StatusTypeDef HAL_I2SEx_TransmitReceive(I2S_HandleTypeDef *hi2s, uint16_t *pTxData, uint16_t *pRxData,
                                            uint16_t Size, uint32_t Timeout);
 
HAL_StatusTypeDef HAL_I2SEx_TransmitReceive_IT(I2S_HandleTypeDef *hi2s, uint16_t *pTxData, uint16_t *pRxData,
                                               uint16_t Size);
 
HAL_StatusTypeDef HAL_I2SEx_TransmitReceive_DMA(I2S_HandleTypeDef *hi2s, uint16_t *pTxData, uint16_t *pRxData,
                                                uint16_t Size);
 
void HAL_I2SEx_FullDuplex_IRQHandler(I2S_HandleTypeDef *hi2s);
void HAL_I2SEx_TxRxHalfCpltCallback(I2S_HandleTypeDef *hi2s);
void HAL_I2SEx_TxRxCpltCallback(I2S_HandleTypeDef *hi2s);


 



 
 
 
 
 



 

 



 




 








 
#line 428 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2s.h"

 


 



 
 
HAL_StatusTypeDef HAL_I2S_Init(I2S_HandleTypeDef *hi2s);
HAL_StatusTypeDef HAL_I2S_DeInit(I2S_HandleTypeDef *hi2s);
void HAL_I2S_MspInit(I2S_HandleTypeDef *hi2s);
void HAL_I2S_MspDeInit(I2S_HandleTypeDef *hi2s);

 






 



 
 
 
HAL_StatusTypeDef HAL_I2S_Transmit(I2S_HandleTypeDef *hi2s, uint16_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_I2S_Receive(I2S_HandleTypeDef *hi2s, uint16_t *pData, uint16_t Size, uint32_t Timeout);

 
HAL_StatusTypeDef HAL_I2S_Transmit_IT(I2S_HandleTypeDef *hi2s, uint16_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2S_Receive_IT(I2S_HandleTypeDef *hi2s, uint16_t *pData, uint16_t Size);
void HAL_I2S_IRQHandler(I2S_HandleTypeDef *hi2s);

 
HAL_StatusTypeDef HAL_I2S_Transmit_DMA(I2S_HandleTypeDef *hi2s, uint16_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_I2S_Receive_DMA(I2S_HandleTypeDef *hi2s, uint16_t *pData, uint16_t Size);

HAL_StatusTypeDef HAL_I2S_DMAPause(I2S_HandleTypeDef *hi2s);
HAL_StatusTypeDef HAL_I2S_DMAResume(I2S_HandleTypeDef *hi2s);
HAL_StatusTypeDef HAL_I2S_DMAStop(I2S_HandleTypeDef *hi2s);

 
void HAL_I2S_TxHalfCpltCallback(I2S_HandleTypeDef *hi2s);
void HAL_I2S_TxCpltCallback(I2S_HandleTypeDef *hi2s);
void HAL_I2S_RxHalfCpltCallback(I2S_HandleTypeDef *hi2s);
void HAL_I2S_RxCpltCallback(I2S_HandleTypeDef *hi2s);
void HAL_I2S_ErrorCallback(I2S_HandleTypeDef *hi2s);


 



 
 
HAL_I2S_StateTypeDef HAL_I2S_GetState(I2S_HandleTypeDef *hi2s);
uint32_t HAL_I2S_GetError(I2S_HandleTypeDef *hi2s);


 



 

 
 
 


 



 

 


 












 










 






 






























 









#line 589 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_i2s.h"








 



 



 







 
#line 309 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_iwdg.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_iwdg.h"



 



 

 


 



 
typedef struct
{
  uint32_t Prescaler;  
 

  uint32_t Reload;     
 

} IWDG_InitTypeDef;



 
typedef struct
{
  IWDG_TypeDef                 *Instance;   

  IWDG_InitTypeDef             Init;        
} IWDG_HandleTypeDef;




 

 


 



 
#line 87 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_iwdg.h"



 





 

 


 





 







 




 

 


 



 
 
HAL_StatusTypeDef HAL_IWDG_Init(IWDG_HandleTypeDef *hiwdg);


 



 
 
HAL_StatusTypeDef HAL_IWDG_Refresh(IWDG_HandleTypeDef *hiwdg);


 



 

 


 



 







 

 


 





 






 






 
#line 197 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_iwdg.h"





 






 



 



 








 
#line 313 "..\\USER\\stm32f4xx_hal_conf.h"






#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pwr.h"

















  

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pwr.h"



 



  

 



 
   


 
typedef struct
{
  uint32_t PVDLevel;   
 

  uint32_t Mode;      
 
}PWR_PVDTypeDef;



 

 


 
  


 



 



  
#line 86 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pwr.h"


    
 


 
#line 100 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pwr.h"


 




 




 
    


 




 



 




 



 







 



  
  
 


 





















 







 





 





 





 





 





 





 





 






 






 








 







 





 





 




 

 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pwr_ex.h"

















  

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pwr_ex.h"



 



  

  
 


 
#line 66 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pwr_ex.h"



 
#line 80 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pwr_ex.h"


 
#line 99 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pwr_ex.h"



  
  
 


 










 
#line 145 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pwr_ex.h"

#line 193 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pwr_ex.h"


 

 


 
 


 
void HAL_PWREx_EnableFlashPowerDown(void);
void HAL_PWREx_DisableFlashPowerDown(void); 
HAL_StatusTypeDef HAL_PWREx_EnableBkUpReg(void);
HAL_StatusTypeDef HAL_PWREx_DisableBkUpReg(void); 
uint32_t HAL_PWREx_GetVoltageRange(void);
HAL_StatusTypeDef HAL_PWREx_ControlVoltageScaling(uint32_t VoltageScaling);

#line 221 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pwr_ex.h"

#line 228 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pwr_ex.h"



 



 
 
 
 


 



 
 
 
 



 



 


    
 



 



 

 



   
 
 





 



 

 


 



 






#line 310 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pwr_ex.h"

#line 321 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pwr_ex.h"


 



 



  



 
  







 
#line 275 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pwr.h"

 


 
  


 
 
void HAL_PWR_DeInit(void);
void HAL_PWR_EnableBkUpAccess(void);
void HAL_PWR_DisableBkUpAccess(void);


 



 
 
 
void HAL_PWR_ConfigPVD(PWR_PVDTypeDef *sConfigPVD);
void HAL_PWR_EnablePVD(void);
void HAL_PWR_DisablePVD(void);

 
void HAL_PWR_EnableWakeUpPin(uint32_t WakeUpPinx);
void HAL_PWR_DisableWakeUpPin(uint32_t WakeUpPinx);

 
void HAL_PWR_EnterSTOPMode(uint32_t Regulator, uint8_t STOPEntry);
void HAL_PWR_EnterSLEEPMode(uint32_t Regulator, uint8_t SLEEPEntry);
void HAL_PWR_EnterSTANDBYMode(void);

 
void HAL_PWR_PVD_IRQHandler(void);
void HAL_PWR_PVDCallback(void);

 
void HAL_PWR_EnableSleepOnExit(void);
void HAL_PWR_DisableSleepOnExit(void);
void HAL_PWR_EnableSEVOnPend(void);
void HAL_PWR_DisableSEVOnPend(void);


 



 

 
 
 


 



 



 



 
 







 



 
 
 



 



 




 



 
 
 




 



 
 


 



 
#line 408 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pwr.h"


 



 



  



 
  







 
#line 321 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rng.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rng.h"



 






 

 



 



 



 



 
typedef enum
{
  HAL_RNG_STATE_RESET     = 0x00U,   
  HAL_RNG_STATE_READY     = 0x01U,   
  HAL_RNG_STATE_BUSY      = 0x02U,   
  HAL_RNG_STATE_TIMEOUT   = 0x03U,   
  HAL_RNG_STATE_ERROR     = 0x04U    

} HAL_RNG_StateTypeDef;



 



 



typedef struct

{
  RNG_TypeDef                 *Instance;     

  HAL_LockTypeDef             Lock;          

  volatile HAL_RNG_StateTypeDef   State;         

  volatile  uint32_t              ErrorCode;      

  uint32_t                    RandomNumber;  

#line 99 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rng.h"

} RNG_HandleTypeDef;

#line 122 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rng.h"



 



 

 


 



 





 



 





 



 
#line 167 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rng.h"


 



 

 


 




 
#line 193 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rng.h"





 






 











 









 






 






 











 











 




 

 


 



 
HAL_StatusTypeDef HAL_RNG_Init(RNG_HandleTypeDef *hrng);
HAL_StatusTypeDef HAL_RNG_DeInit(RNG_HandleTypeDef *hrng);
void HAL_RNG_MspInit(RNG_HandleTypeDef *hrng);
void HAL_RNG_MspDeInit(RNG_HandleTypeDef *hrng);

 
#line 293 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rng.h"



 



 
uint32_t HAL_RNG_GetRandomNumber(RNG_HandleTypeDef *hrng);     
uint32_t HAL_RNG_GetRandomNumber_IT(RNG_HandleTypeDef *hrng);  
HAL_StatusTypeDef HAL_RNG_GenerateRandomNumber(RNG_HandleTypeDef *hrng, uint32_t *random32bit);
HAL_StatusTypeDef HAL_RNG_GenerateRandomNumber_IT(RNG_HandleTypeDef *hrng);
uint32_t HAL_RNG_ReadLastRandomNumber(RNG_HandleTypeDef *hrng);

void HAL_RNG_IRQHandler(RNG_HandleTypeDef *hrng);
void HAL_RNG_ErrorCallback(RNG_HandleTypeDef *hrng);
void HAL_RNG_ReadyDataCallback(RNG_HandleTypeDef *hrng, uint32_t random32bit);



 



 
HAL_RNG_StateTypeDef HAL_RNG_GetState(RNG_HandleTypeDef *hrng);
uint32_t             HAL_RNG_GetError(RNG_HandleTypeDef *hrng);


 



 

 


 









 



 





 








 
#line 325 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc.h"



 



 

 


 



 
typedef enum
{
  HAL_RTC_STATE_RESET             = 0x00U,   
  HAL_RTC_STATE_READY             = 0x01U,   
  HAL_RTC_STATE_BUSY              = 0x02U,   
  HAL_RTC_STATE_TIMEOUT           = 0x03U,   
  HAL_RTC_STATE_ERROR             = 0x04U    
}HAL_RTCStateTypeDef;



 
typedef struct
{
  uint32_t HourFormat;      
 

  uint32_t AsynchPrediv;    
 

  uint32_t SynchPrediv;     
 

  uint32_t OutPut;          
 

  uint32_t OutPutPolarity;  
 

  uint32_t OutPutType;      
 
}RTC_InitTypeDef;



 
typedef struct
{
  uint8_t Hours;            

 

  uint8_t Minutes;          
 

  uint8_t Seconds;          
 

  uint8_t TimeFormat;       
 

  uint32_t SubSeconds;     

 

  uint32_t SecondFraction;  



 

  uint32_t DayLightSaving;  
 

  uint32_t StoreOperation;  

 
}RTC_TimeTypeDef;



 
typedef struct
{
  uint8_t WeekDay;  
 

  uint8_t Month;    
 

  uint8_t Date;     
 

  uint8_t Year;     
 

}RTC_DateTypeDef;



 
typedef struct
{
  RTC_TimeTypeDef AlarmTime;      

  uint32_t AlarmMask;            
 

  uint32_t AlarmSubSecondMask;   
 

  uint32_t AlarmDateWeekDaySel;  
 

  uint8_t AlarmDateWeekDay;      

 

  uint32_t Alarm;                
 
}RTC_AlarmTypeDef;



 



typedef struct

{
  RTC_TypeDef                 *Instance;   

  RTC_InitTypeDef             Init;        

  HAL_LockTypeDef             Lock;        

  volatile HAL_RTCStateTypeDef    State;       

#line 194 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc.h"

}RTC_HandleTypeDef;

#line 218 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc.h"



 

 


 



 




 



 






 



 




 



 




 



 




 



 





 



 




 



 




 



 
 
#line 319 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc.h"


 



 
#line 333 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc.h"


 



 




 



 
#line 355 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc.h"


 



 




 



 
#line 404 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc.h"


 



 
#line 418 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc.h"


 



 
#line 440 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc.h"


 



 

 


 




 
#line 466 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc.h"





 










 









 






 






 






 










 










 










 












 










 











 





 





 





 





 





 





 





 





 





 







 







 





 





 



 

 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc_ex.h"

















  

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc_ex.h"



 



  

  


 



 
typedef struct 
{
  uint32_t Tamper;                      
 

  uint32_t PinSelection;                
 

  uint32_t Trigger;                     
 

  uint32_t Filter;                      
 

  uint32_t SamplingFrequency;           
 

  uint32_t PrechargeDuration;           
  

  uint32_t TamperPullUp;                
            

  uint32_t TimeStampOnTamperDetection;  
 
}RTC_TamperTypeDef;


 

 


  



 
#line 105 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc_ex.h"


  



  




 
  


 







 



 








  



  







  



  






   



  


#line 177 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc_ex.h"


 



  
#line 200 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc_ex.h"


 



  
#line 215 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc_ex.h"


 
  


  




 
  


  




 



  
#line 246 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc_ex.h"


  



  




 



  
#line 268 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc_ex.h"


  



  







 



  




  


 

  




  



  
  
 


 

 


 





 






 









 









 









 









 










 









 





 





 





 





 





 





 





 





 





 








 







 





 





 




 

 


 





 






 









 









 









 









 










 









 




 

 


 





 






 

                                                                      





 






 


                                                                      








 









 










 










 



 

 


 




 





 





 





 





 





 





 





 





 








 







 





 





 



 

 


 





 






 






 






 






 






 









 



 



 

 


 



 
 
HAL_StatusTypeDef HAL_RTCEx_SetTimeStamp(RTC_HandleTypeDef *hrtc, uint32_t TimeStampEdge, uint32_t RTC_TimeStampPin);
HAL_StatusTypeDef HAL_RTCEx_SetTimeStamp_IT(RTC_HandleTypeDef *hrtc, uint32_t TimeStampEdge, uint32_t RTC_TimeStampPin);
HAL_StatusTypeDef HAL_RTCEx_DeactivateTimeStamp(RTC_HandleTypeDef *hrtc);
HAL_StatusTypeDef HAL_RTCEx_GetTimeStamp(RTC_HandleTypeDef *hrtc, RTC_TimeTypeDef *sTimeStamp, RTC_DateTypeDef *sTimeStampDate, uint32_t Format);

HAL_StatusTypeDef HAL_RTCEx_SetTamper(RTC_HandleTypeDef *hrtc, RTC_TamperTypeDef* sTamper);
HAL_StatusTypeDef HAL_RTCEx_SetTamper_IT(RTC_HandleTypeDef *hrtc, RTC_TamperTypeDef* sTamper);
HAL_StatusTypeDef HAL_RTCEx_DeactivateTamper(RTC_HandleTypeDef *hrtc, uint32_t Tamper);
void HAL_RTCEx_TamperTimeStampIRQHandler(RTC_HandleTypeDef *hrtc);

void HAL_RTCEx_Tamper1EventCallback(RTC_HandleTypeDef *hrtc);
void HAL_RTCEx_Tamper2EventCallback(RTC_HandleTypeDef *hrtc);
void HAL_RTCEx_TimeStampEventCallback(RTC_HandleTypeDef *hrtc);
HAL_StatusTypeDef HAL_RTCEx_PollForTimeStampEvent(RTC_HandleTypeDef *hrtc, uint32_t Timeout);
HAL_StatusTypeDef HAL_RTCEx_PollForTamper1Event(RTC_HandleTypeDef *hrtc, uint32_t Timeout);
HAL_StatusTypeDef HAL_RTCEx_PollForTamper2Event(RTC_HandleTypeDef *hrtc, uint32_t Timeout);


 



 
 
HAL_StatusTypeDef HAL_RTCEx_SetWakeUpTimer(RTC_HandleTypeDef *hrtc, uint32_t WakeUpCounter, uint32_t WakeUpClock);
HAL_StatusTypeDef HAL_RTCEx_SetWakeUpTimer_IT(RTC_HandleTypeDef *hrtc, uint32_t WakeUpCounter, uint32_t WakeUpClock);
uint32_t HAL_RTCEx_DeactivateWakeUpTimer(RTC_HandleTypeDef *hrtc);
uint32_t HAL_RTCEx_GetWakeUpTimer(RTC_HandleTypeDef *hrtc);
void HAL_RTCEx_WakeUpTimerIRQHandler(RTC_HandleTypeDef *hrtc);
void HAL_RTCEx_WakeUpTimerEventCallback(RTC_HandleTypeDef *hrtc);
HAL_StatusTypeDef HAL_RTCEx_PollForWakeUpTimerEvent(RTC_HandleTypeDef *hrtc, uint32_t Timeout);


 



 
 
void HAL_RTCEx_BKUPWrite(RTC_HandleTypeDef *hrtc, uint32_t BackupRegister, uint32_t Data);
uint32_t HAL_RTCEx_BKUPRead(RTC_HandleTypeDef *hrtc, uint32_t BackupRegister);

HAL_StatusTypeDef HAL_RTCEx_SetCoarseCalib(RTC_HandleTypeDef *hrtc, uint32_t CalibSign, uint32_t Value);
HAL_StatusTypeDef HAL_RTCEx_DeactivateCoarseCalib(RTC_HandleTypeDef *hrtc);
HAL_StatusTypeDef HAL_RTCEx_SetSmoothCalib(RTC_HandleTypeDef *hrtc, uint32_t SmoothCalibPeriod, uint32_t SmoothCalibPlusPulses, uint32_t SmouthCalibMinusPulsesValue);
HAL_StatusTypeDef HAL_RTCEx_SetSynchroShift(RTC_HandleTypeDef *hrtc, uint32_t ShiftAdd1S, uint32_t ShiftSubFS);
HAL_StatusTypeDef HAL_RTCEx_SetCalibrationOutPut(RTC_HandleTypeDef *hrtc, uint32_t CalibOutput);
HAL_StatusTypeDef HAL_RTCEx_DeactivateCalibrationOutPut(RTC_HandleTypeDef *hrtc);
HAL_StatusTypeDef HAL_RTCEx_SetRefClock(RTC_HandleTypeDef *hrtc);
HAL_StatusTypeDef HAL_RTCEx_DeactivateRefClock(RTC_HandleTypeDef *hrtc);
HAL_StatusTypeDef HAL_RTCEx_EnableBypassShadow(RTC_HandleTypeDef *hrtc);
HAL_StatusTypeDef HAL_RTCEx_DisableBypassShadow(RTC_HandleTypeDef *hrtc);


 



 
 
void HAL_RTCEx_AlarmBEventCallback(RTC_HandleTypeDef *hrtc); 
HAL_StatusTypeDef HAL_RTCEx_PollForAlarmBEvent(RTC_HandleTypeDef *hrtc, uint32_t Timeout);


 



 

 
 
 


 




 

 


 



  
#line 920 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc_ex.h"







#line 933 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc_ex.h"

#line 970 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc_ex.h"













#line 989 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc_ex.h"


 



 



  



  
  






 
#line 672 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc.h"

 


 



 
 
HAL_StatusTypeDef HAL_RTC_Init(RTC_HandleTypeDef *hrtc);
HAL_StatusTypeDef HAL_RTC_DeInit(RTC_HandleTypeDef *hrtc);
void       HAL_RTC_MspInit(RTC_HandleTypeDef *hrtc);
void       HAL_RTC_MspDeInit(RTC_HandleTypeDef *hrtc);

 






 



 
 
HAL_StatusTypeDef HAL_RTC_SetTime(RTC_HandleTypeDef *hrtc, RTC_TimeTypeDef *sTime, uint32_t Format);
HAL_StatusTypeDef HAL_RTC_GetTime(RTC_HandleTypeDef *hrtc, RTC_TimeTypeDef *sTime, uint32_t Format);
HAL_StatusTypeDef HAL_RTC_SetDate(RTC_HandleTypeDef *hrtc, RTC_DateTypeDef *sDate, uint32_t Format);
HAL_StatusTypeDef HAL_RTC_GetDate(RTC_HandleTypeDef *hrtc, RTC_DateTypeDef *sDate, uint32_t Format);


 



 
 
HAL_StatusTypeDef HAL_RTC_SetAlarm(RTC_HandleTypeDef *hrtc, RTC_AlarmTypeDef *sAlarm, uint32_t Format);
HAL_StatusTypeDef HAL_RTC_SetAlarm_IT(RTC_HandleTypeDef *hrtc, RTC_AlarmTypeDef *sAlarm, uint32_t Format);
HAL_StatusTypeDef HAL_RTC_DeactivateAlarm(RTC_HandleTypeDef *hrtc, uint32_t Alarm);
HAL_StatusTypeDef HAL_RTC_GetAlarm(RTC_HandleTypeDef *hrtc, RTC_AlarmTypeDef *sAlarm, uint32_t Alarm, uint32_t Format);
void                HAL_RTC_AlarmIRQHandler(RTC_HandleTypeDef *hrtc);
HAL_StatusTypeDef   HAL_RTC_PollForAlarmAEvent(RTC_HandleTypeDef *hrtc, uint32_t Timeout);
void         HAL_RTC_AlarmAEventCallback(RTC_HandleTypeDef *hrtc);


 



 
 
HAL_StatusTypeDef   HAL_RTC_WaitForSynchro(RTC_HandleTypeDef* hrtc);


 



 
 
HAL_RTCStateTypeDef HAL_RTC_GetState(RTC_HandleTypeDef *hrtc);


 



 

 
 
 


 
 
#line 761 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc.h"






 

 


 



 
#line 793 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc.h"

#line 824 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc.h"

#line 841 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rtc.h"


 



 

 


 
HAL_StatusTypeDef  RTC_EnterInitMode(RTC_HandleTypeDef* hrtc);
uint8_t            RTC_ByteToBcd2(uint8_t Value);
uint8_t            RTC_Bcd2ToByte(uint8_t Value);


 



 



 







 
#line 329 "..\\USER\\stm32f4xx_hal_conf.h"






#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_sd.h"

















  

 













 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_sdmmc.h"

















  

 






   






 
#line 36 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_sdmmc.h"



 



  

  


 
  


 
typedef struct
{
  uint32_t ClockEdge;            
 

  uint32_t ClockBypass;          

 

  uint32_t ClockPowerSave;       

 

  uint32_t BusWide;              
 

  uint32_t HardwareFlowControl;  
 

  uint32_t ClockDiv;             
   
  
}SDIO_InitTypeDef;
  



 
typedef struct                                                                                            
{
  uint32_t Argument;            


 

  uint32_t CmdIndex;            
 

  uint32_t Response;            
 

  uint32_t WaitForInterrupt;    

 

  uint32_t CPSM;                

 
}SDIO_CmdInitTypeDef;




 
typedef struct
{
  uint32_t DataTimeOut;          

  uint32_t DataLength;           
 
  uint32_t DataBlockSize;       
 
 
  uint32_t TransferDir;         

 
 
  uint32_t TransferMode;        
 
 
  uint32_t DPSM;                

 
}SDIO_DataInitTypeDef;



 
  
 


 
#line 172 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_sdmmc.h"



 
#line 228 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_sdmmc.h"




 
#line 244 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_sdmmc.h"




 
#line 260 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_sdmmc.h"



 
#line 284 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_sdmmc.h"



 










    

    




















 








 







 



 







  



 







 



 









 



 







 
  


 



   
    


 



 



 









 



 









 



 







   



 











 



 



 



 
#line 488 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_sdmmc.h"

#line 504 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_sdmmc.h"


 



 







 



 







 



 







 
  


 







   



 
#line 583 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_sdmmc.h"


  



 
#line 618 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_sdmmc.h"


 



 
  
 


 



 
 


 
 




 
 




 



 



 



 
 




 



 



 



 




 




 
 
 
  




 
 



 
 




 


 




 




 
 




  






 






  





 

 




























 






























 






























 




















 






























 


















 






   






   






   






   






   






   






   






   

      






     





   





     





   





   





   






 



   

 


 
  
 


 
HAL_StatusTypeDef SDIO_Init(SDIO_TypeDef *SDIOx, SDIO_InitTypeDef Init);


 
  
 


 
uint32_t          SDIO_ReadFIFO(SDIO_TypeDef *SDIOx);
HAL_StatusTypeDef SDIO_WriteFIFO(SDIO_TypeDef *SDIOx, uint32_t *pWriteData);


 
  
 


 
HAL_StatusTypeDef SDIO_PowerState_ON(SDIO_TypeDef *SDIOx);
HAL_StatusTypeDef SDIO_PowerState_OFF(SDIO_TypeDef *SDIOx);
uint32_t          SDIO_GetPowerState(SDIO_TypeDef *SDIOx);

 
HAL_StatusTypeDef SDIO_SendCommand(SDIO_TypeDef *SDIOx, SDIO_CmdInitTypeDef *Command);
uint8_t           SDIO_GetCommandResponse(SDIO_TypeDef *SDIOx);
uint32_t          SDIO_GetResponse(SDIO_TypeDef *SDIOx, uint32_t Response);

 
HAL_StatusTypeDef SDIO_ConfigData(SDIO_TypeDef *SDIOx, SDIO_DataInitTypeDef* Data);
uint32_t          SDIO_GetDataCounter(SDIO_TypeDef *SDIOx);
uint32_t          SDIO_GetFIFOCount(SDIO_TypeDef *SDIOx);

 
HAL_StatusTypeDef SDIO_SetSDMMCReadWaitMode(SDIO_TypeDef *SDIOx, uint32_t SDIO_ReadWaitMode);

 
uint32_t SDMMC_CmdBlockLength(SDIO_TypeDef *SDIOx, uint32_t BlockSize);
uint32_t SDMMC_CmdReadSingleBlock(SDIO_TypeDef *SDIOx, uint32_t ReadAdd);
uint32_t SDMMC_CmdReadMultiBlock(SDIO_TypeDef *SDIOx, uint32_t ReadAdd);
uint32_t SDMMC_CmdWriteSingleBlock(SDIO_TypeDef *SDIOx, uint32_t WriteAdd);
uint32_t SDMMC_CmdWriteMultiBlock(SDIO_TypeDef *SDIOx, uint32_t WriteAdd);
uint32_t SDMMC_CmdSDEraseStartAdd(SDIO_TypeDef *SDIOx, uint32_t StartAdd);
uint32_t SDMMC_CmdSDEraseEndAdd(SDIO_TypeDef *SDIOx, uint32_t EndAdd);
uint32_t SDMMC_CmdErase(SDIO_TypeDef *SDIOx);
uint32_t SDMMC_CmdStopTransfer(SDIO_TypeDef *SDIOx);
uint32_t SDMMC_CmdSelDesel(SDIO_TypeDef *SDIOx, uint64_t Addr);
uint32_t SDMMC_CmdGoIdleState(SDIO_TypeDef *SDIOx);
uint32_t SDMMC_CmdOperCond(SDIO_TypeDef *SDIOx);
uint32_t SDMMC_CmdAppCommand(SDIO_TypeDef *SDIOx, uint32_t Argument);
uint32_t SDMMC_CmdAppOperCommand(SDIO_TypeDef *SDIOx, uint32_t SdType);
uint32_t SDMMC_CmdBusWidth(SDIO_TypeDef *SDIOx, uint32_t BusWidth);
uint32_t SDMMC_CmdSendSCR(SDIO_TypeDef *SDIOx);
uint32_t SDMMC_CmdSendCID(SDIO_TypeDef *SDIOx);
uint32_t SDMMC_CmdSendCSD(SDIO_TypeDef *SDIOx, uint32_t Argument);
uint32_t SDMMC_CmdSetRelAdd(SDIO_TypeDef *SDIOx, uint16_t *pRCA);
uint32_t SDMMC_CmdSendStatus(SDIO_TypeDef *SDIOx, uint32_t Argument);
uint32_t SDMMC_CmdStatusRegister(SDIO_TypeDef *SDIOx);

uint32_t SDMMC_CmdOpCondition(SDIO_TypeDef *SDIOx, uint32_t Argument);
uint32_t SDMMC_CmdSwitch(SDIO_TypeDef *SDIOx, uint32_t Argument);
uint32_t SDMMC_CmdEraseStartAdd(SDIO_TypeDef *SDIOx, uint32_t StartAdd);
uint32_t SDMMC_CmdEraseEndAdd(SDIO_TypeDef *SDIOx, uint32_t EndAdd);



 
  


 
  


  



 











 
#line 36 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_sd.h"



 




  

  


 



    
typedef enum
{
  HAL_SD_STATE_RESET                  = 0x00000000U,   
  HAL_SD_STATE_READY                  = 0x00000001U,   
  HAL_SD_STATE_TIMEOUT                = 0x00000002U,   
  HAL_SD_STATE_BUSY                   = 0x00000003U,   
  HAL_SD_STATE_PROGRAMMING            = 0x00000004U,   
  HAL_SD_STATE_RECEIVING              = 0x00000005U,   
  HAL_SD_STATE_TRANSFER               = 0x00000006U,   
  HAL_SD_STATE_ERROR                  = 0x0000000FU    
}HAL_SD_StateTypeDef;


 



    
typedef enum
{
  HAL_SD_CARD_READY                  = 0x00000001U,   
  HAL_SD_CARD_IDENTIFICATION         = 0x00000002U,   
  HAL_SD_CARD_STANDBY                = 0x00000003U,   
  HAL_SD_CARD_TRANSFER               = 0x00000004U,     
  HAL_SD_CARD_SENDING                = 0x00000005U,   
  HAL_SD_CARD_RECEIVING              = 0x00000006U,   
  HAL_SD_CARD_PROGRAMMING            = 0x00000007U,   
  HAL_SD_CARD_DISCONNECTED           = 0x00000008U,   
  HAL_SD_CARD_ERROR                  = 0x000000FFU    
}HAL_SD_CardStateTypeDef;


 



 





  
typedef struct
{
  uint32_t CardType;                      
  
  uint32_t CardVersion;                   

  uint32_t Class;                         

  uint32_t RelCardAdd;                    
  
  uint32_t BlockNbr;                      

  uint32_t BlockSize;                     
  
  uint32_t LogBlockNbr;                   

  uint32_t LogBlockSize;                  

}HAL_SD_CardInfoTypeDef;



  
typedef struct __SD_HandleTypeDef
{
  SDIO_TypeDef                   *Instance;         
  
  SDIO_InitTypeDef               Init;              
  
  HAL_LockTypeDef              Lock;              
  
  uint32_t                     *pTxBuffPtr;       

  uint32_t                     TxXferSize;        

  uint32_t                     *pRxBuffPtr;       

  uint32_t                     RxXferSize;        
  
  volatile uint32_t                Context;           
 
  volatile HAL_SD_StateTypeDef     State;             
  
  volatile uint32_t                ErrorCode;           
 
  DMA_HandleTypeDef            *hdmarx;           
  
  DMA_HandleTypeDef            *hdmatx;           
  
  HAL_SD_CardInfoTypeDef       SdCard;            
  
  uint32_t                     CSD[4];            
  
  uint32_t                     CID[4];            
  
#line 161 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_sd.h"
}SD_HandleTypeDef;



 



 
typedef struct
{
  volatile uint8_t  CSDStruct;             
  volatile uint8_t  SysSpecVersion;        
  volatile uint8_t  Reserved1;             
  volatile uint8_t  TAAC;                  
  volatile uint8_t  NSAC;                  
  volatile uint8_t  MaxBusClkFrec;         
  volatile uint16_t CardComdClasses;       
  volatile uint8_t  RdBlockLen;            
  volatile uint8_t  PartBlockRead;         
  volatile uint8_t  WrBlockMisalign;       
  volatile uint8_t  RdBlockMisalign;       
  volatile uint8_t  DSRImpl;               
  volatile uint8_t  Reserved2;             
  volatile uint32_t DeviceSize;            
  volatile uint8_t  MaxRdCurrentVDDMin;    
  volatile uint8_t  MaxRdCurrentVDDMax;    
  volatile uint8_t  MaxWrCurrentVDDMin;    
  volatile uint8_t  MaxWrCurrentVDDMax;    
  volatile uint8_t  DeviceSizeMul;         
  volatile uint8_t  EraseGrSize;           
  volatile uint8_t  EraseGrMul;            
  volatile uint8_t  WrProtectGrSize;       
  volatile uint8_t  WrProtectGrEnable;     
  volatile uint8_t  ManDeflECC;            
  volatile uint8_t  WrSpeedFact;           
  volatile uint8_t  MaxWrBlockLen;         
  volatile uint8_t  WriteBlockPaPartial;   
  volatile uint8_t  Reserved3;             
  volatile uint8_t  ContentProtectAppli;   
  volatile uint8_t  FileFormatGrouop;      
  volatile uint8_t  CopyFlag;              
  volatile uint8_t  PermWrProtect;         
  volatile uint8_t  TempWrProtect;         
  volatile uint8_t  FileFormat;            
  volatile uint8_t  ECC;                   
  volatile uint8_t  CSD_CRC;               
  volatile uint8_t  Reserved4;             
  
}HAL_SD_CardCSDTypeDef;


 



 
typedef struct
{
  volatile uint8_t  ManufacturerID;   
  volatile uint16_t OEM_AppliID;      
  volatile uint32_t ProdName1;        
  volatile uint8_t  ProdName2;        
  volatile uint8_t  ProdRev;          
  volatile uint32_t ProdSN;           
  volatile uint8_t  Reserved1;        
  volatile uint16_t ManufactDate;     
  volatile uint8_t  CID_CRC;          
  volatile uint8_t  Reserved2;        

}HAL_SD_CardCIDTypeDef;


 



 
typedef struct
{
  volatile uint8_t  DataBusWidth;            
  volatile uint8_t  SecuredMode;             
  volatile uint16_t CardType;                
  volatile uint32_t ProtectedAreaSize;       
  volatile uint8_t  SpeedClass;              
  volatile uint8_t  PerformanceMove;         
  volatile uint8_t  AllocationUnitSize;      
  volatile uint16_t EraseSize;               
  volatile uint8_t  EraseTimeout;            
  volatile uint8_t  EraseOffset;             

}HAL_SD_CardStatusTypeDef;


 

#line 283 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_sd.h"


 

 


 





   
#line 333 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_sd.h"
                                                



                                                


 
 


  
#line 352 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_sd.h"



 



 



    


 



 




 
      


 
  
 



 



 
#line 399 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_sd.h"
 



  





 





  





 

 




























 






























 






























 



















 






























 


















 




 
  
 


 
  


 
HAL_StatusTypeDef HAL_SD_Init(SD_HandleTypeDef *hsd);
HAL_StatusTypeDef HAL_SD_InitCard(SD_HandleTypeDef *hsd);
HAL_StatusTypeDef HAL_SD_DeInit (SD_HandleTypeDef *hsd);
void HAL_SD_MspInit(SD_HandleTypeDef *hsd);
void HAL_SD_MspDeInit(SD_HandleTypeDef *hsd);


 
  


 
 
HAL_StatusTypeDef HAL_SD_ReadBlocks(SD_HandleTypeDef *hsd, uint8_t *pData, uint32_t BlockAdd, uint32_t NumberOfBlocks, uint32_t Timeout);
HAL_StatusTypeDef HAL_SD_WriteBlocks(SD_HandleTypeDef *hsd, uint8_t *pData, uint32_t BlockAdd, uint32_t NumberOfBlocks, uint32_t Timeout);
HAL_StatusTypeDef HAL_SD_Erase(SD_HandleTypeDef *hsd, uint32_t BlockStartAdd, uint32_t BlockEndAdd);
 
HAL_StatusTypeDef HAL_SD_ReadBlocks_IT(SD_HandleTypeDef *hsd, uint8_t *pData, uint32_t BlockAdd, uint32_t NumberOfBlocks);
HAL_StatusTypeDef HAL_SD_WriteBlocks_IT(SD_HandleTypeDef *hsd, uint8_t *pData, uint32_t BlockAdd, uint32_t NumberOfBlocks);
 
HAL_StatusTypeDef HAL_SD_ReadBlocks_DMA(SD_HandleTypeDef *hsd, uint8_t *pData, uint32_t BlockAdd, uint32_t NumberOfBlocks);
HAL_StatusTypeDef HAL_SD_WriteBlocks_DMA(SD_HandleTypeDef *hsd, uint8_t *pData, uint32_t BlockAdd, uint32_t NumberOfBlocks);

void HAL_SD_IRQHandler(SD_HandleTypeDef *hsd);

 
void HAL_SD_TxCpltCallback(SD_HandleTypeDef *hsd);
void HAL_SD_RxCpltCallback(SD_HandleTypeDef *hsd);
void HAL_SD_ErrorCallback(SD_HandleTypeDef *hsd);
void HAL_SD_AbortCallback(SD_HandleTypeDef *hsd);








 
  


 
HAL_StatusTypeDef HAL_SD_ConfigWideBusOperation(SD_HandleTypeDef *hsd, uint32_t WideMode);


 



 
HAL_StatusTypeDef       HAL_SD_SendSDStatus(SD_HandleTypeDef *hsd, uint32_t *pSDstatus);
HAL_SD_CardStateTypeDef HAL_SD_GetCardState(SD_HandleTypeDef *hsd);
HAL_StatusTypeDef       HAL_SD_GetCardCID(SD_HandleTypeDef *hsd, HAL_SD_CardCIDTypeDef *pCID);
HAL_StatusTypeDef       HAL_SD_GetCardCSD(SD_HandleTypeDef *hsd, HAL_SD_CardCSDTypeDef *pCSD);
HAL_StatusTypeDef       HAL_SD_GetCardStatus(SD_HandleTypeDef *hsd, HAL_SD_CardStatusTypeDef *pStatus);
HAL_StatusTypeDef       HAL_SD_GetCardInfo(SD_HandleTypeDef *hsd, HAL_SD_CardInfoTypeDef *pCardInfo);


 



 
HAL_SD_StateTypeDef HAL_SD_GetState(SD_HandleTypeDef *hsd);
uint32_t HAL_SD_GetError(SD_HandleTypeDef *hsd);


 



 
HAL_StatusTypeDef HAL_SD_Abort(SD_HandleTypeDef *hsd);
HAL_StatusTypeDef HAL_SD_Abort_IT(SD_HandleTypeDef *hsd);


 
    
 


 



  

 


 



  
          
 


 



  

 


 



  

 


 



 

 


 



 

 


 



 




  



 



 












 
#line 337 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_spi.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_spi.h"



 



 

 


 



 
typedef struct
{
  uint32_t Mode;                
 

  uint32_t Direction;           
 

  uint32_t DataSize;            
 

  uint32_t CLKPolarity;         
 

  uint32_t CLKPhase;            
 

  uint32_t NSS;                 

 

  uint32_t BaudRatePrescaler;   



 

  uint32_t FirstBit;            
 

  uint32_t TIMode;              
 

  uint32_t CRCCalculation;      
 

  uint32_t CRCPolynomial;       
 
} SPI_InitTypeDef;



 
typedef enum
{
  HAL_SPI_STATE_RESET      = 0x00U,     
  HAL_SPI_STATE_READY      = 0x01U,     
  HAL_SPI_STATE_BUSY       = 0x02U,     
  HAL_SPI_STATE_BUSY_TX    = 0x03U,     
  HAL_SPI_STATE_BUSY_RX    = 0x04U,     
  HAL_SPI_STATE_BUSY_TX_RX = 0x05U,     
  HAL_SPI_STATE_ERROR      = 0x06U,     
  HAL_SPI_STATE_ABORT      = 0x07U      
} HAL_SPI_StateTypeDef;



 
typedef struct __SPI_HandleTypeDef
{
  SPI_TypeDef                *Instance;       

  SPI_InitTypeDef            Init;            

  uint8_t                    *pTxBuffPtr;     

  uint16_t                   TxXferSize;      

  volatile uint16_t              TxXferCount;     

  uint8_t                    *pRxBuffPtr;     

  uint16_t                   RxXferSize;      

  volatile uint16_t              RxXferCount;     

  void (*RxISR)(struct __SPI_HandleTypeDef *hspi);    

  void (*TxISR)(struct __SPI_HandleTypeDef *hspi);    

  DMA_HandleTypeDef          *hdmatx;         

  DMA_HandleTypeDef          *hdmarx;         

  HAL_LockTypeDef            Lock;            

  volatile HAL_SPI_StateTypeDef  State;           

  volatile uint32_t              ErrorCode;       

#line 150 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_spi.h"
} SPI_HandleTypeDef;

#line 177 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_spi.h"


 

 


 



 
#line 200 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_spi.h"


 



 




 



 





 



 




 



 




 



 




 



 





 



 
#line 271 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_spi.h"


 



 




 



 




 



 




 



 





 



 
#line 323 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_spi.h"


 



 

 


 





 
#line 350 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_spi.h"










 











 











 















 






 






 
#line 422 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_spi.h"





 
#line 435 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_spi.h"





 
#line 447 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_spi.h"





 






 




 

 


 





 






 






 















 










 






 







 







 





 







 







 







 







 








 
#line 595 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_spi.h"





 







 







 







 





 




 

 


 



 
 
HAL_StatusTypeDef HAL_SPI_Init(SPI_HandleTypeDef *hspi);
HAL_StatusTypeDef HAL_SPI_DeInit(SPI_HandleTypeDef *hspi);
void HAL_SPI_MspInit(SPI_HandleTypeDef *hspi);
void HAL_SPI_MspDeInit(SPI_HandleTypeDef *hspi);

 






 



 
 
HAL_StatusTypeDef HAL_SPI_Transmit(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_SPI_Receive(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_SPI_TransmitReceive(SPI_HandleTypeDef *hspi, uint8_t *pTxData, uint8_t *pRxData, uint16_t Size,
                                          uint32_t Timeout);
HAL_StatusTypeDef HAL_SPI_Transmit_IT(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_SPI_Receive_IT(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_SPI_TransmitReceive_IT(SPI_HandleTypeDef *hspi, uint8_t *pTxData, uint8_t *pRxData,
                                             uint16_t Size);
HAL_StatusTypeDef HAL_SPI_Transmit_DMA(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_SPI_Receive_DMA(SPI_HandleTypeDef *hspi, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_SPI_TransmitReceive_DMA(SPI_HandleTypeDef *hspi, uint8_t *pTxData, uint8_t *pRxData,
                                              uint16_t Size);
HAL_StatusTypeDef HAL_SPI_DMAPause(SPI_HandleTypeDef *hspi);
HAL_StatusTypeDef HAL_SPI_DMAResume(SPI_HandleTypeDef *hspi);
HAL_StatusTypeDef HAL_SPI_DMAStop(SPI_HandleTypeDef *hspi);
 
HAL_StatusTypeDef HAL_SPI_Abort(SPI_HandleTypeDef *hspi);
HAL_StatusTypeDef HAL_SPI_Abort_IT(SPI_HandleTypeDef *hspi);

void HAL_SPI_IRQHandler(SPI_HandleTypeDef *hspi);
void HAL_SPI_TxCpltCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_RxCpltCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_TxRxCpltCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_TxHalfCpltCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_RxHalfCpltCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_TxRxHalfCpltCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_ErrorCallback(SPI_HandleTypeDef *hspi);
void HAL_SPI_AbortCpltCallback(SPI_HandleTypeDef *hspi);


 



 
 
HAL_SPI_StateTypeDef HAL_SPI_GetState(SPI_HandleTypeDef *hspi);
uint32_t             HAL_SPI_GetError(SPI_HandleTypeDef *hspi);


 



 



 



 







 
#line 341 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"



 



 

 


 



 
typedef struct
{
  uint32_t Prescaler;         
 

  uint32_t CounterMode;       
 

  uint32_t Period;            

 

  uint32_t ClockDivision;     
 

  uint32_t RepetitionCounter;  






 

  uint32_t AutoReloadPreload;  
 
} TIM_Base_InitTypeDef;



 
typedef struct
{
  uint32_t OCMode;        
 

  uint32_t Pulse;         
 

  uint32_t OCPolarity;    
 

  uint32_t OCNPolarity;   

 

  uint32_t OCFastMode;    

 


  uint32_t OCIdleState;   

 

  uint32_t OCNIdleState;  

 
} TIM_OC_InitTypeDef;



 
typedef struct
{
  uint32_t OCMode;        
 

  uint32_t Pulse;         
 

  uint32_t OCPolarity;    
 

  uint32_t OCNPolarity;   

 

  uint32_t OCIdleState;   

 

  uint32_t OCNIdleState;  

 

  uint32_t ICPolarity;    
 

  uint32_t ICSelection;   
 

  uint32_t ICFilter;      
 
} TIM_OnePulse_InitTypeDef;



 
typedef struct
{
  uint32_t  ICPolarity;  
 

  uint32_t ICSelection;  
 

  uint32_t ICPrescaler;  
 

  uint32_t ICFilter;     
 
} TIM_IC_InitTypeDef;



 
typedef struct
{
  uint32_t EncoderMode;   
 

  uint32_t IC1Polarity;   
 

  uint32_t IC1Selection;  
 

  uint32_t IC1Prescaler;  
 

  uint32_t IC1Filter;     
 

  uint32_t IC2Polarity;   
 

  uint32_t IC2Selection;  
 

  uint32_t IC2Prescaler;  
 

  uint32_t IC2Filter;     
 
} TIM_Encoder_InitTypeDef;



 
typedef struct
{
  uint32_t ClockSource;     
 
  uint32_t ClockPolarity;   
 
  uint32_t ClockPrescaler;  
 
  uint32_t ClockFilter;     
 
} TIM_ClockConfigTypeDef;



 
typedef struct
{
  uint32_t ClearInputState;      
 
  uint32_t ClearInputSource;     
 
  uint32_t ClearInputPolarity;   
 
  uint32_t ClearInputPrescaler;  
 
  uint32_t ClearInputFilter;     
 
} TIM_ClearInputConfigTypeDef;



 
typedef struct
{
  uint32_t  MasterOutputTrigger;   
 
  uint32_t  MasterSlaveMode;       
 
} TIM_MasterConfigTypeDef;



 
typedef struct
{
  uint32_t  SlaveMode;         
 
  uint32_t  InputTrigger;      
 
  uint32_t  TriggerPolarity;   
 
  uint32_t  TriggerPrescaler;  
 
  uint32_t  TriggerFilter;     
 

} TIM_SlaveConfigTypeDef;





 
typedef struct
{
  uint32_t OffStateRunMode;      
 
  uint32_t OffStateIDLEMode;     
 
  uint32_t LockLevel;            
 
  uint32_t DeadTime;             
 
  uint32_t BreakState;           
 
  uint32_t BreakPolarity;        
 
  uint32_t BreakFilter;          
 
  uint32_t AutomaticOutput;      
 
} TIM_BreakDeadTimeConfigTypeDef;



 
typedef enum
{
  HAL_TIM_STATE_RESET             = 0x00U,     
  HAL_TIM_STATE_READY             = 0x01U,     
  HAL_TIM_STATE_BUSY              = 0x02U,     
  HAL_TIM_STATE_TIMEOUT           = 0x03U,     
  HAL_TIM_STATE_ERROR             = 0x04U      
} HAL_TIM_StateTypeDef;



 
typedef enum
{
  HAL_TIM_ACTIVE_CHANNEL_1        = 0x01U,     
  HAL_TIM_ACTIVE_CHANNEL_2        = 0x02U,     
  HAL_TIM_ACTIVE_CHANNEL_3        = 0x04U,     
  HAL_TIM_ACTIVE_CHANNEL_4        = 0x08U,     
  HAL_TIM_ACTIVE_CHANNEL_CLEARED  = 0x00U      
} HAL_TIM_ActiveChannel;



 



typedef struct

{
  TIM_TypeDef                 *Instance;      
  TIM_Base_InitTypeDef        Init;           
  HAL_TIM_ActiveChannel       Channel;        
  DMA_HandleTypeDef           *hdma[7];      
 
  HAL_LockTypeDef             Lock;           
  volatile HAL_TIM_StateTypeDef   State;          

#line 350 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"
} TIM_HandleTypeDef;

#line 394 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"



 
 

 


 



 




 



 
#line 437 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"


 



 
#line 452 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"


 



 





 



 




 



 






 



 







 



 





 



 




 



 





 



 




 



 




 



 




 



 




 



 




 



 




 



 





 



 







 



 






 



 




 



 





 



 
#line 644 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"


 



 




 



 
#line 667 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"


 



 
#line 686 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"


 



 







 



 
#line 715 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"


 



 







 



 






 



 




 



 






 



 




 



 




 


 






 



 




 



 




 



 





 



 
#line 829 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"


 



 




 



 







 



 
#line 865 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"


 



 
#line 881 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"


 



 







 



 






 



 




 



 
#line 938 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"


 



 
#line 952 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"


 



 






 



 
 

 


 




 
#line 1002 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"





 






 






 
#line 1032 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"






 
#line 1049 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"






 















 















 














 














 



















 



















 
















 















 








 







 







 






 








 










 












 
#line 1262 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"








 



















 




















 

















 
















 
















 
















 













 













 

















 








 
 

 


 

 




 
 

 


 



#line 1476 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"


































































#line 1552 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"















































#line 1607 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"













#line 1626 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"

#line 1635 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"























#line 1676 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"

































 
 

 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim_ex.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim_ex.h"



 



 

 


 



 

typedef struct
{
  uint32_t IC1Polarity;         
 

  uint32_t IC1Prescaler;        
 

  uint32_t IC1Filter;           
 

  uint32_t Commutation_Delay;   
 
} TIM_HallSensor_InitTypeDef;


 
 

 


 



 
#line 84 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim_ex.h"












#line 108 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim_ex.h"


 



 
 

 


 



 
 

 


 
#line 193 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim_ex.h"



 
 

 


 




 
 
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Init(TIM_HandleTypeDef *htim, TIM_HallSensor_InitTypeDef *sConfig);
HAL_StatusTypeDef HAL_TIMEx_HallSensor_DeInit(TIM_HandleTypeDef *htim);

void HAL_TIMEx_HallSensor_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIMEx_HallSensor_MspDeInit(TIM_HandleTypeDef *htim);

 
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start_IT(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop_IT(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start_DMA(TIM_HandleTypeDef *htim, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop_DMA(TIM_HandleTypeDef *htim);


 




 
 
 
HAL_StatusTypeDef HAL_TIMEx_OCN_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIMEx_OCN_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);

 
HAL_StatusTypeDef HAL_TIMEx_OCN_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIMEx_OCN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);

 
HAL_StatusTypeDef HAL_TIMEx_OCN_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIMEx_OCN_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);


 




 
 
 
HAL_StatusTypeDef HAL_TIMEx_PWMN_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);

 
HAL_StatusTypeDef HAL_TIMEx_PWMN_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIMEx_PWMN_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);


 




 
 
 
HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Start(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Stop(TIM_HandleTypeDef *htim, uint32_t OutputChannel);

 
HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Start_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel);


 




 
 
HAL_StatusTypeDef HAL_TIMEx_ConfigCommutEvent(TIM_HandleTypeDef *htim, uint32_t  InputTrigger, uint32_t  CommutationSource);
HAL_StatusTypeDef HAL_TIMEx_ConfigCommutEvent_IT(TIM_HandleTypeDef *htim, uint32_t  InputTrigger, uint32_t  CommutationSource);
HAL_StatusTypeDef HAL_TIMEx_ConfigCommutEvent_DMA(TIM_HandleTypeDef *htim, uint32_t  InputTrigger, uint32_t  CommutationSource);
HAL_StatusTypeDef HAL_TIMEx_MasterConfigSynchronization(TIM_HandleTypeDef *htim, TIM_MasterConfigTypeDef *sMasterConfig);
HAL_StatusTypeDef HAL_TIMEx_ConfigBreakDeadTime(TIM_HandleTypeDef *htim, TIM_BreakDeadTimeConfigTypeDef *sBreakDeadTimeConfig);
HAL_StatusTypeDef HAL_TIMEx_RemapConfig(TIM_HandleTypeDef *htim, uint32_t Remap);


 




 
 
void HAL_TIMEx_CommutCallback(TIM_HandleTypeDef *htim);
void HAL_TIMEx_CommutHalfCpltCallback(TIM_HandleTypeDef *htim);
void HAL_TIMEx_BreakCallback(TIM_HandleTypeDef *htim);


 




 
 
HAL_TIM_StateTypeDef HAL_TIMEx_HallSensor_GetState(TIM_HandleTypeDef *htim);


 



 
 

 


 
void TIMEx_DMACommutationCplt(DMA_HandleTypeDef *hdma);
void TIMEx_DMACommutationHalfCplt(DMA_HandleTypeDef *hdma);


 
 



 



 








 
#line 1714 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_tim.h"

 


 




 
 
HAL_StatusTypeDef HAL_TIM_Base_Init(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_Base_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_Base_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_Base_MspDeInit(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_Base_Start(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_Base_Stop(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_Base_Start_IT(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_Base_Stop_IT(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_Base_Start_DMA(TIM_HandleTypeDef *htim, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIM_Base_Stop_DMA(TIM_HandleTypeDef *htim);


 




 
 
HAL_StatusTypeDef HAL_TIM_OC_Init(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_OC_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_OC_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_OC_MspDeInit(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_OC_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_OC_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_OC_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_OC_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_OC_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIM_OC_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);


 




 
 
HAL_StatusTypeDef HAL_TIM_PWM_Init(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_PWM_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_PWM_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_PWM_MspDeInit(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_PWM_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_PWM_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_PWM_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_PWM_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_PWM_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIM_PWM_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);


 




 
 
HAL_StatusTypeDef HAL_TIM_IC_Init(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_IC_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_IC_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_IC_MspDeInit(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_IC_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_IC_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_IC_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_IC_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_IC_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIM_IC_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);


 




 
 
HAL_StatusTypeDef HAL_TIM_OnePulse_Init(TIM_HandleTypeDef *htim, uint32_t OnePulseMode);
HAL_StatusTypeDef HAL_TIM_OnePulse_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_OnePulse_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_OnePulse_MspDeInit(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_OnePulse_Start(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
HAL_StatusTypeDef HAL_TIM_OnePulse_Stop(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
 
HAL_StatusTypeDef HAL_TIM_OnePulse_Start_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
HAL_StatusTypeDef HAL_TIM_OnePulse_Stop_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel);


 




 
 
HAL_StatusTypeDef HAL_TIM_Encoder_Init(TIM_HandleTypeDef *htim,  TIM_Encoder_InitTypeDef *sConfig);
HAL_StatusTypeDef HAL_TIM_Encoder_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_Encoder_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_Encoder_MspDeInit(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_Encoder_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_Encoder_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_Encoder_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_Encoder_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_Encoder_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData1, uint32_t *pData2, uint16_t Length);
HAL_StatusTypeDef HAL_TIM_Encoder_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);


 




 
 
void HAL_TIM_IRQHandler(TIM_HandleTypeDef *htim);


 




 
 
HAL_StatusTypeDef HAL_TIM_OC_ConfigChannel(TIM_HandleTypeDef *htim, TIM_OC_InitTypeDef *sConfig, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_PWM_ConfigChannel(TIM_HandleTypeDef *htim, TIM_OC_InitTypeDef *sConfig, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_IC_ConfigChannel(TIM_HandleTypeDef *htim, TIM_IC_InitTypeDef *sConfig, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_OnePulse_ConfigChannel(TIM_HandleTypeDef *htim, TIM_OnePulse_InitTypeDef *sConfig, uint32_t OutputChannel,  uint32_t InputChannel);
HAL_StatusTypeDef HAL_TIM_ConfigOCrefClear(TIM_HandleTypeDef *htim, TIM_ClearInputConfigTypeDef *sClearInputConfig, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_ConfigClockSource(TIM_HandleTypeDef *htim, TIM_ClockConfigTypeDef *sClockSourceConfig);
HAL_StatusTypeDef HAL_TIM_ConfigTI1Input(TIM_HandleTypeDef *htim, uint32_t TI1_Selection);
HAL_StatusTypeDef HAL_TIM_SlaveConfigSynchro(TIM_HandleTypeDef *htim, TIM_SlaveConfigTypeDef *sSlaveConfig);
HAL_StatusTypeDef HAL_TIM_SlaveConfigSynchro_IT(TIM_HandleTypeDef *htim, TIM_SlaveConfigTypeDef *sSlaveConfig);
HAL_StatusTypeDef HAL_TIM_DMABurst_WriteStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress, uint32_t BurstRequestSrc,                                               uint32_t  *BurstBuffer, uint32_t  BurstLength);

HAL_StatusTypeDef HAL_TIM_DMABurst_WriteStop(TIM_HandleTypeDef *htim, uint32_t BurstRequestSrc);
HAL_StatusTypeDef HAL_TIM_DMABurst_ReadStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress, uint32_t BurstRequestSrc,                                              uint32_t  *BurstBuffer, uint32_t  BurstLength);

HAL_StatusTypeDef HAL_TIM_DMABurst_ReadStop(TIM_HandleTypeDef *htim, uint32_t BurstRequestSrc);
HAL_StatusTypeDef HAL_TIM_GenerateEvent(TIM_HandleTypeDef *htim, uint32_t EventSource);
uint32_t HAL_TIM_ReadCapturedValue(TIM_HandleTypeDef *htim, uint32_t Channel);


 




 
 
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_PeriodElapsedHalfCpltCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_OC_DelayElapsedCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_IC_CaptureCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_IC_CaptureHalfCpltCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_PWM_PulseFinishedCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_PWM_PulseFinishedHalfCpltCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_TriggerCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_TriggerHalfCpltCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_ErrorCallback(TIM_HandleTypeDef *htim);

 







 




 
 
HAL_TIM_StateTypeDef HAL_TIM_Base_GetState(TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_OC_GetState(TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_PWM_GetState(TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_IC_GetState(TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_OnePulse_GetState(TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_Encoder_GetState(TIM_HandleTypeDef *htim);


 



 
 

 


 
void TIM_Base_SetConfig(TIM_TypeDef *TIMx, TIM_Base_InitTypeDef *Structure);
void TIM_TI1_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection, uint32_t TIM_ICFilter);
void TIM_OC2_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config);
void TIM_ETR_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ExtTRGPrescaler,
                       uint32_t TIM_ExtTRGPolarity, uint32_t ExtTRGFilter);

void TIM_DMADelayPulseCplt(DMA_HandleTypeDef *hdma);
void TIM_DMADelayPulseHalfCplt(DMA_HandleTypeDef *hdma);
void TIM_DMAError(DMA_HandleTypeDef *hdma);
void TIM_DMACaptureCplt(DMA_HandleTypeDef *hdma);
void TIM_DMACaptureHalfCplt(DMA_HandleTypeDef *hdma);
void TIM_CCxChannelCmd(TIM_TypeDef *TIMx, uint32_t Channel, uint32_t ChannelState);







 
 



 



 







 
#line 345 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_uart.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_uart.h"



 



 

 


 



 
typedef struct
{
  uint32_t BaudRate;                  



 

  uint32_t WordLength;                
 

  uint32_t StopBits;                  
 

  uint32_t Parity;                    




 

  uint32_t Mode;                      
 

  uint32_t HwFlowCtl;                 
 

  uint32_t OverSampling;              
 
} UART_InitTypeDef;







































 
typedef enum
{
  HAL_UART_STATE_RESET             = 0x00U,    
 
  HAL_UART_STATE_READY             = 0x20U,    
 
  HAL_UART_STATE_BUSY              = 0x24U,    
 
  HAL_UART_STATE_BUSY_TX           = 0x21U,    
 
  HAL_UART_STATE_BUSY_RX           = 0x22U,    
 
  HAL_UART_STATE_BUSY_TX_RX        = 0x23U,    

 
  HAL_UART_STATE_TIMEOUT           = 0xA0U,    
 
  HAL_UART_STATE_ERROR             = 0xE0U     
 
} HAL_UART_StateTypeDef;



 
typedef struct __UART_HandleTypeDef
{
  USART_TypeDef                 *Instance;         

  UART_InitTypeDef              Init;              

  uint8_t                       *pTxBuffPtr;       

  uint16_t                      TxXferSize;        

  volatile uint16_t                 TxXferCount;       

  uint8_t                       *pRxBuffPtr;       

  uint16_t                      RxXferSize;        

  volatile uint16_t                 RxXferCount;       

  DMA_HandleTypeDef             *hdmatx;           

  DMA_HandleTypeDef             *hdmarx;           

  HAL_LockTypeDef               Lock;              

  volatile HAL_UART_StateTypeDef    gState;           

 

  volatile HAL_UART_StateTypeDef    RxState;          
 

  volatile uint32_t                 ErrorCode;         

#line 188 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_uart.h"

} UART_HandleTypeDef;

#line 218 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_uart.h"



 

 


 



 
#line 240 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_uart.h"


 



 




 



 




 



 





 



 






 



 





 



 




 



 




 



 




 



 




 





 
#line 344 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_uart.h"


 









 













 



 

 


 






 
#line 400 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_uart.h"





 



















 























 







 
#line 465 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_uart.h"






 







 







 







 

















 



















 


















 
















 



















 



















 



















 









 





 





 





 



 

 


 



 

 
HAL_StatusTypeDef HAL_UART_Init(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_HalfDuplex_Init(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_LIN_Init(UART_HandleTypeDef *huart, uint32_t BreakDetectLength);
HAL_StatusTypeDef HAL_MultiProcessor_Init(UART_HandleTypeDef *huart, uint8_t Address, uint32_t WakeUpMethod);
HAL_StatusTypeDef HAL_UART_DeInit(UART_HandleTypeDef *huart);
void HAL_UART_MspInit(UART_HandleTypeDef *huart);
void HAL_UART_MspDeInit(UART_HandleTypeDef *huart);

 







 



 

 
HAL_StatusTypeDef HAL_UART_Transmit(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_UART_Receive(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_UART_Transmit_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_Receive_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_Transmit_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_Receive_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_UART_DMAPause(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_DMAResume(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_DMAStop(UART_HandleTypeDef *huart);
 
HAL_StatusTypeDef HAL_UART_Abort(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortTransmit(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortReceive(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_Abort_IT(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortTransmit_IT(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_UART_AbortReceive_IT(UART_HandleTypeDef *huart);

void HAL_UART_IRQHandler(UART_HandleTypeDef *huart);
void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_TxHalfCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_RxHalfCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_ErrorCallback(UART_HandleTypeDef *huart);
void HAL_UART_AbortCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_AbortTransmitCpltCallback(UART_HandleTypeDef *huart);
void HAL_UART_AbortReceiveCpltCallback(UART_HandleTypeDef *huart);



 



 
 
HAL_StatusTypeDef HAL_LIN_SendBreak(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_MultiProcessor_EnterMuteMode(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_MultiProcessor_ExitMuteMode(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_HalfDuplex_EnableTransmitter(UART_HandleTypeDef *huart);
HAL_StatusTypeDef HAL_HalfDuplex_EnableReceiver(UART_HandleTypeDef *huart);


 



 
 
HAL_UART_StateTypeDef HAL_UART_GetState(UART_HandleTypeDef *huart);
uint32_t              HAL_UART_GetError(UART_HandleTypeDef *huart);


 



 
 
 
 


 


 







 

 


 
#line 800 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_uart.h"





 








 






 

 


 



 



 



 







 
#line 349 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_usart.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_usart.h"



 



 

 


 



 
typedef struct
{
  uint32_t BaudRate;                  


 

  uint32_t WordLength;                
 

  uint32_t StopBits;                  
 

  uint32_t Parity;                    




 

  uint32_t Mode;                      
 

  uint32_t CLKPolarity;               
 

  uint32_t CLKPhase;                  
 

  uint32_t CLKLastBit;                

 
} USART_InitTypeDef;



 
typedef enum
{
  HAL_USART_STATE_RESET             = 0x00U,     
  HAL_USART_STATE_READY             = 0x01U,     
  HAL_USART_STATE_BUSY              = 0x02U,     
  HAL_USART_STATE_BUSY_TX           = 0x12U,     
  HAL_USART_STATE_BUSY_RX           = 0x22U,     
  HAL_USART_STATE_BUSY_TX_RX        = 0x32U,     
  HAL_USART_STATE_TIMEOUT           = 0x03U,     
  HAL_USART_STATE_ERROR             = 0x04U      
} HAL_USART_StateTypeDef;



 
typedef struct __USART_HandleTypeDef
{
  USART_TypeDef                 *Instance;         

  USART_InitTypeDef             Init;              

  uint8_t                       *pTxBuffPtr;       

  uint16_t                      TxXferSize;        

  volatile uint16_t                 TxXferCount;       

  uint8_t                       *pRxBuffPtr;       

  uint16_t                      RxXferSize;        

  volatile uint16_t                 RxXferCount;       

  DMA_HandleTypeDef             *hdmatx;           

  DMA_HandleTypeDef             *hdmarx;           

  HAL_LockTypeDef                Lock;             

  volatile HAL_USART_StateTypeDef    State;            

  volatile uint32_t                  ErrorCode;        

#line 139 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_usart.h"

} USART_HandleTypeDef;

#line 167 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_usart.h"



 

 


 




 
#line 190 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_usart.h"


 



 




 



 






 



 





 



 





 



 




 



 




 



 




 



 




 



 




 





 
#line 292 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_usart.h"


 









 
#line 311 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_usart.h"


 



 

 


 





 
#line 338 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_usart.h"















 




















 






 
#line 389 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_usart.h"





 






 






 






 














 
#line 437 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_usart.h"













 






 





 






 






 




 
 


 



 
 
HAL_StatusTypeDef HAL_USART_Init(USART_HandleTypeDef *husart);
HAL_StatusTypeDef HAL_USART_DeInit(USART_HandleTypeDef *husart);
void HAL_USART_MspInit(USART_HandleTypeDef *husart);
void HAL_USART_MspDeInit(USART_HandleTypeDef *husart);

 







 



 
 
HAL_StatusTypeDef HAL_USART_Transmit(USART_HandleTypeDef *husart, uint8_t *pTxData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_USART_Receive(USART_HandleTypeDef *husart, uint8_t *pRxData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_USART_TransmitReceive(USART_HandleTypeDef *husart, uint8_t *pTxData, uint8_t *pRxData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_USART_Transmit_IT(USART_HandleTypeDef *husart, uint8_t *pTxData, uint16_t Size);
HAL_StatusTypeDef HAL_USART_Receive_IT(USART_HandleTypeDef *husart, uint8_t *pRxData, uint16_t Size);
HAL_StatusTypeDef HAL_USART_TransmitReceive_IT(USART_HandleTypeDef *husart, uint8_t *pTxData, uint8_t *pRxData,  uint16_t Size);
HAL_StatusTypeDef HAL_USART_Transmit_DMA(USART_HandleTypeDef *husart, uint8_t *pTxData, uint16_t Size);
HAL_StatusTypeDef HAL_USART_Receive_DMA(USART_HandleTypeDef *husart, uint8_t *pRxData, uint16_t Size);
HAL_StatusTypeDef HAL_USART_TransmitReceive_DMA(USART_HandleTypeDef *husart, uint8_t *pTxData, uint8_t *pRxData, uint16_t Size);
HAL_StatusTypeDef HAL_USART_DMAPause(USART_HandleTypeDef *husart);
HAL_StatusTypeDef HAL_USART_DMAResume(USART_HandleTypeDef *husart);
HAL_StatusTypeDef HAL_USART_DMAStop(USART_HandleTypeDef *husart);
 
HAL_StatusTypeDef HAL_USART_Abort(USART_HandleTypeDef *husart);
HAL_StatusTypeDef HAL_USART_Abort_IT(USART_HandleTypeDef *husart);

void HAL_USART_IRQHandler(USART_HandleTypeDef *husart);
void HAL_USART_TxCpltCallback(USART_HandleTypeDef *husart);
void HAL_USART_TxHalfCpltCallback(USART_HandleTypeDef *husart);
void HAL_USART_RxCpltCallback(USART_HandleTypeDef *husart);
void HAL_USART_RxHalfCpltCallback(USART_HandleTypeDef *husart);
void HAL_USART_TxRxCpltCallback(USART_HandleTypeDef *husart);
void HAL_USART_ErrorCallback(USART_HandleTypeDef *husart);
void HAL_USART_AbortCpltCallback(USART_HandleTypeDef *husart);


 



 
 
HAL_USART_StateTypeDef HAL_USART_GetState(USART_HandleTypeDef *husart);
uint32_t               HAL_USART_GetError(USART_HandleTypeDef *husart);


 



 
 
 
 


 


 








 

 


 





































  
 
              





 

 


 



 



 



 







 
#line 353 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_irda.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_irda.h"



 



 

 


 


 
typedef struct
{
  uint32_t BaudRate;                  


 

  uint32_t WordLength;                
 

  uint32_t Parity;                    




 

  uint32_t Mode;                      
 

  uint8_t  Prescaler;                 


 

  uint32_t IrDAMode;                  
 
} IRDA_InitTypeDef;







































 
typedef enum
{
  HAL_IRDA_STATE_RESET             = 0x00U,    
 
  HAL_IRDA_STATE_READY             = 0x20U,    
 
  HAL_IRDA_STATE_BUSY              = 0x24U,    
 
  HAL_IRDA_STATE_BUSY_TX           = 0x21U,    
 
  HAL_IRDA_STATE_BUSY_RX           = 0x22U,    
 
  HAL_IRDA_STATE_BUSY_TX_RX        = 0x23U,    

 
  HAL_IRDA_STATE_TIMEOUT           = 0xA0U,    
 
  HAL_IRDA_STATE_ERROR             = 0xE0U     
 
} HAL_IRDA_StateTypeDef;



 



typedef struct

{
  USART_TypeDef               *Instance;         

  IRDA_InitTypeDef            Init;              

  uint8_t                     *pTxBuffPtr;       

  uint16_t                    TxXferSize;        

  volatile uint16_t               TxXferCount;       

  uint8_t                     *pRxBuffPtr;       

  uint16_t                    RxXferSize;        

  volatile uint16_t               RxXferCount;       

  DMA_HandleTypeDef           *hdmatx;           

  DMA_HandleTypeDef           *hdmarx;           

  HAL_LockTypeDef             Lock;              

  volatile HAL_IRDA_StateTypeDef  gState;           

 

  volatile HAL_IRDA_StateTypeDef  RxState;          
 

  volatile uint32_t               ErrorCode;         

#line 197 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_irda.h"

} IRDA_HandleTypeDef;

#line 226 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_irda.h"



 

 


 


 
#line 247 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_irda.h"


 



 




 



 





 



 





 



 




 





 
#line 302 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_irda.h"


 









 












 



 

 


 






 
#line 357 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_irda.h"






 

















 




















 







 
#line 418 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_irda.h"






 







 







 







 















 
















 

















 






 





 







 







 




 

 


 



 
 
HAL_StatusTypeDef HAL_IRDA_Init(IRDA_HandleTypeDef *hirda);
HAL_StatusTypeDef HAL_IRDA_DeInit(IRDA_HandleTypeDef *hirda);
void HAL_IRDA_MspInit(IRDA_HandleTypeDef *hirda);
void HAL_IRDA_MspDeInit(IRDA_HandleTypeDef *hirda);









 



 
 
HAL_StatusTypeDef HAL_IRDA_Transmit(IRDA_HandleTypeDef *hirda, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_IRDA_Receive(IRDA_HandleTypeDef *hirda, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_IRDA_Transmit_IT(IRDA_HandleTypeDef *hirda, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_IRDA_Receive_IT(IRDA_HandleTypeDef *hirda, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_IRDA_Transmit_DMA(IRDA_HandleTypeDef *hirda, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_IRDA_Receive_DMA(IRDA_HandleTypeDef *hirda, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_IRDA_DMAPause(IRDA_HandleTypeDef *hirda);
HAL_StatusTypeDef HAL_IRDA_DMAResume(IRDA_HandleTypeDef *hirda);
HAL_StatusTypeDef HAL_IRDA_DMAStop(IRDA_HandleTypeDef *hirda);
 
HAL_StatusTypeDef HAL_IRDA_Abort(IRDA_HandleTypeDef *hirda);
HAL_StatusTypeDef HAL_IRDA_AbortTransmit(IRDA_HandleTypeDef *hirda);
HAL_StatusTypeDef HAL_IRDA_AbortReceive(IRDA_HandleTypeDef *hirda);
HAL_StatusTypeDef HAL_IRDA_Abort_IT(IRDA_HandleTypeDef *hirda);
HAL_StatusTypeDef HAL_IRDA_AbortTransmit_IT(IRDA_HandleTypeDef *hirda);
HAL_StatusTypeDef HAL_IRDA_AbortReceive_IT(IRDA_HandleTypeDef *hirda);

void HAL_IRDA_IRQHandler(IRDA_HandleTypeDef *hirda);
void HAL_IRDA_TxCpltCallback(IRDA_HandleTypeDef *hirda);
void HAL_IRDA_RxCpltCallback(IRDA_HandleTypeDef *hirda);
void HAL_IRDA_TxHalfCpltCallback(IRDA_HandleTypeDef *hirda);
void HAL_IRDA_RxHalfCpltCallback(IRDA_HandleTypeDef *hirda);
void HAL_IRDA_ErrorCallback(IRDA_HandleTypeDef *hirda);
void HAL_IRDA_AbortCpltCallback(IRDA_HandleTypeDef *hirda);
void HAL_IRDA_AbortTransmitCpltCallback(IRDA_HandleTypeDef *hirda);
void HAL_IRDA_AbortReceiveCpltCallback(IRDA_HandleTypeDef *hirda);


 



 
 
HAL_IRDA_StateTypeDef HAL_IRDA_GetState(IRDA_HandleTypeDef *hirda);
uint32_t HAL_IRDA_GetError(IRDA_HandleTypeDef *hirda);


 



 

 
 
 


 



 








 

 


 





















 






 

 


 



 



 



 







 
#line 357 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_smartcard.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_smartcard.h"



 



 

 


 



 
typedef struct
{
  uint32_t BaudRate;                  


 

  uint32_t WordLength;                
 

  uint32_t StopBits;                  
 

  uint32_t Parity;                    




 

  uint32_t Mode;                      
 

  uint32_t CLKPolarity;               
 

  uint32_t CLKPhase;                  
 

  uint32_t CLKLastBit;                

 

  uint32_t Prescaler;                 


 

  uint32_t GuardTime;                  

  uint32_t NACKState;                 
 
}SMARTCARD_InitTypeDef;







































 
typedef enum
{
  HAL_SMARTCARD_STATE_RESET             = 0x00U,    
 
  HAL_SMARTCARD_STATE_READY             = 0x20U,    
 
  HAL_SMARTCARD_STATE_BUSY              = 0x24U,    
 
  HAL_SMARTCARD_STATE_BUSY_TX           = 0x21U,    
 
  HAL_SMARTCARD_STATE_BUSY_RX           = 0x22U,    
 
  HAL_SMARTCARD_STATE_BUSY_TX_RX        = 0x23U,    

 
  HAL_SMARTCARD_STATE_TIMEOUT           = 0xA0U,    
 
  HAL_SMARTCARD_STATE_ERROR             = 0xE0U     
 
}HAL_SMARTCARD_StateTypeDef;



 
typedef struct __SMARTCARD_HandleTypeDef
{
  USART_TypeDef                    *Instance;         

  SMARTCARD_InitTypeDef            Init;              

  uint8_t                          *pTxBuffPtr;       

  uint16_t                         TxXferSize;        

  volatile uint16_t                    TxXferCount;       

  uint8_t                          *pRxBuffPtr;       

  uint16_t                         RxXferSize;        

  volatile uint16_t                    RxXferCount;       

  DMA_HandleTypeDef                *hdmatx;           

  DMA_HandleTypeDef                *hdmarx;           

  HAL_LockTypeDef                  Lock;              

  volatile HAL_SMARTCARD_StateTypeDef  gState;           

 

  volatile HAL_SMARTCARD_StateTypeDef  RxState;          
 

  volatile uint32_t                    ErrorCode;         

#line 204 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_smartcard.h"

} SMARTCARD_HandleTypeDef;

#line 231 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_smartcard.h"



 

 


 



 
#line 253 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_smartcard.h"


 



 



 



 




 



 




 



 





 



 




 



 




 



 




 



 




 



 




 



 
#line 372 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_smartcard.h"


 





 
#line 389 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_smartcard.h"


 








 
#line 407 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_smartcard.h"


 



 

 


 





 
#line 438 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_smartcard.h"





 
















 


















 






 
#line 494 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_smartcard.h"





 






 






 






 














 















 














 





 





 






 






 









 









 




 

 


 



 
 
HAL_StatusTypeDef HAL_SMARTCARD_Init(SMARTCARD_HandleTypeDef *hsc);
HAL_StatusTypeDef HAL_SMARTCARD_ReInit(SMARTCARD_HandleTypeDef *hsc);
HAL_StatusTypeDef HAL_SMARTCARD_DeInit(SMARTCARD_HandleTypeDef *hsc);
void HAL_SMARTCARD_MspInit(SMARTCARD_HandleTypeDef *hsc);
void HAL_SMARTCARD_MspDeInit(SMARTCARD_HandleTypeDef *hsc);







 



 
 
HAL_StatusTypeDef HAL_SMARTCARD_Transmit(SMARTCARD_HandleTypeDef *hsc, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_SMARTCARD_Receive(SMARTCARD_HandleTypeDef *hsc, uint8_t *pData, uint16_t Size, uint32_t Timeout);
HAL_StatusTypeDef HAL_SMARTCARD_Transmit_IT(SMARTCARD_HandleTypeDef *hsc, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_SMARTCARD_Receive_IT(SMARTCARD_HandleTypeDef *hsc, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_SMARTCARD_Transmit_DMA(SMARTCARD_HandleTypeDef *hsc, uint8_t *pData, uint16_t Size);
HAL_StatusTypeDef HAL_SMARTCARD_Receive_DMA(SMARTCARD_HandleTypeDef *hsc, uint8_t *pData, uint16_t Size);
 
HAL_StatusTypeDef HAL_SMARTCARD_Abort(SMARTCARD_HandleTypeDef *hsc);
HAL_StatusTypeDef HAL_SMARTCARD_AbortTransmit(SMARTCARD_HandleTypeDef *hsc);
HAL_StatusTypeDef HAL_SMARTCARD_AbortReceive(SMARTCARD_HandleTypeDef *hsc);
HAL_StatusTypeDef HAL_SMARTCARD_Abort_IT(SMARTCARD_HandleTypeDef *hsc);
HAL_StatusTypeDef HAL_SMARTCARD_AbortTransmit_IT(SMARTCARD_HandleTypeDef *hsc);
HAL_StatusTypeDef HAL_SMARTCARD_AbortReceive_IT(SMARTCARD_HandleTypeDef *hsc);

void HAL_SMARTCARD_IRQHandler(SMARTCARD_HandleTypeDef *hsc);
void HAL_SMARTCARD_TxCpltCallback(SMARTCARD_HandleTypeDef *hsc);
void HAL_SMARTCARD_RxCpltCallback(SMARTCARD_HandleTypeDef *hsc);
void HAL_SMARTCARD_ErrorCallback(SMARTCARD_HandleTypeDef *hsc);
void HAL_SMARTCARD_AbortCpltCallback(SMARTCARD_HandleTypeDef *hsc);
void HAL_SMARTCARD_AbortTransmitCpltCallback(SMARTCARD_HandleTypeDef *hsc);
void HAL_SMARTCARD_AbortReceiveCpltCallback(SMARTCARD_HandleTypeDef *hsc);


 



 
 
HAL_SMARTCARD_StateTypeDef HAL_SMARTCARD_GetState(SMARTCARD_HandleTypeDef *hsc);
uint32_t HAL_SMARTCARD_GetError(SMARTCARD_HandleTypeDef *hsc);


 



 
 
 
 


 



 







 

 


 
#line 720 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_smartcard.h"





 






 

 


 



 



 



 







 
#line 361 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_wwdg.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_wwdg.h"



 



 

 



 



 
typedef struct
{
  uint32_t Prescaler;     
 

  uint32_t Window;        
 

  uint32_t Counter;       
 

  uint32_t EWIMode ;      
 

} WWDG_InitTypeDef;



 



typedef struct

{
  WWDG_TypeDef      *Instance;   

  WWDG_InitTypeDef  Init;        






} WWDG_HandleTypeDef;

#line 100 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_wwdg.h"


 

 



 



 



 




 



 



 






 



 




 



 

 



 













 


 



 





 










 









 








 









 









 








 




 

 



 



 
 
HAL_StatusTypeDef     HAL_WWDG_Init(WWDG_HandleTypeDef *hwwdg);
void                  HAL_WWDG_MspInit(WWDG_HandleTypeDef *hwwdg);
 







 



 
 
HAL_StatusTypeDef     HAL_WWDG_Refresh(WWDG_HandleTypeDef *hwwdg);
void                  HAL_WWDG_IRQHandler(WWDG_HandleTypeDef *hwwdg);
void                  HAL_WWDG_EarlyWakeupCallback(WWDG_HandleTypeDef *hwwdg);


 



 



 



 







 
#line 365 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pcd.h"

















 

 







 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_usb.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_usb.h"




 



 

 



 


typedef enum
{
  USB_DEVICE_MODE  = 0,
  USB_HOST_MODE    = 1,
  USB_DRD_MODE     = 2
} USB_OTG_ModeTypeDef;



 
typedef enum
{
  URB_IDLE = 0,
  URB_DONE,
  URB_NOTREADY,
  URB_NYET,
  URB_ERROR,
  URB_STALL
} USB_OTG_URBStateTypeDef;



 
typedef enum
{
  HC_IDLE = 0,
  HC_XFRC,
  HC_HALTED,
  HC_NAK,
  HC_NYET,
  HC_STALL,
  HC_XACTERR,
  HC_BBLERR,
  HC_DATATGLERR
} USB_OTG_HCStateTypeDef;



 
typedef struct
{
  uint32_t dev_endpoints;           

 

  uint32_t Host_channels;           

 

  uint32_t speed;                   
 

  uint32_t dma_enable;               

  uint32_t ep0_mps;                  

  uint32_t phy_itface;              
 

  uint32_t Sof_enable;               

  uint32_t low_power_enable;         

  uint32_t lpm_enable;               

  uint32_t battery_charging_enable;  

  uint32_t vbus_sensing_enable;      

  uint32_t use_dedicated_ep1;        

  uint32_t use_external_vbus;        
} USB_OTG_CfgTypeDef;

typedef struct
{
  uint8_t   num;                  
 

  uint8_t   is_in;                
 

  uint8_t   is_stall;             
 

  uint8_t   type;                 
 

  uint8_t   data_pid_start;       
 

  uint8_t   even_odd_frame;       
 

  uint16_t  tx_fifo_num;          
 

  uint32_t  maxpacket;            
 

  uint8_t   *xfer_buff;            

  uint32_t  dma_addr;              

  uint32_t  xfer_len;              

  uint32_t  xfer_count;            
} USB_OTG_EPTypeDef;

typedef struct
{
  uint8_t   dev_addr ;          
 

  uint8_t   ch_num;             
 

  uint8_t   ep_num;             
 

  uint8_t   ep_is_in;           
 

  uint8_t   speed;              
 

  uint8_t   do_ping;             

  uint8_t   process_ping;        

  uint8_t   ep_type;            
 

  uint16_t  max_packet;         
 

  uint8_t   data_pid;           
 

  uint8_t   *xfer_buff;          

  uint32_t  xfer_len;            

  uint32_t  xfer_count;          

  uint8_t   toggle_in;          
 

  uint8_t   toggle_out;         
 

  uint32_t  dma_addr;            

  uint32_t  ErrCnt;              

  USB_OTG_URBStateTypeDef  urb_state;  
 

  USB_OTG_HCStateTypeDef   state;     
 
} USB_OTG_HCTypeDef;



 



 




 




 



 





 



 







 



 





 



 




 



 
#line 278 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_ll_usb.h"


 



 





 



 






 



 






 



 






 



 





 



 







 



 







 



 





 



 





 































 

 


 









 

 


 

HAL_StatusTypeDef USB_CoreInit(USB_OTG_GlobalTypeDef *USBx, USB_OTG_CfgTypeDef cfg);
HAL_StatusTypeDef USB_DevInit(USB_OTG_GlobalTypeDef *USBx, USB_OTG_CfgTypeDef cfg);
HAL_StatusTypeDef USB_EnableGlobalInt(USB_OTG_GlobalTypeDef *USBx);
HAL_StatusTypeDef USB_DisableGlobalInt(USB_OTG_GlobalTypeDef *USBx);
HAL_StatusTypeDef USB_SetTurnaroundTime(USB_OTG_GlobalTypeDef *USBx, uint32_t hclk, uint8_t speed);
HAL_StatusTypeDef USB_SetCurrentMode(USB_OTG_GlobalTypeDef *USBx, USB_OTG_ModeTypeDef mode);
HAL_StatusTypeDef USB_SetDevSpeed(USB_OTG_GlobalTypeDef *USBx, uint8_t speed);
HAL_StatusTypeDef USB_FlushRxFifo(USB_OTG_GlobalTypeDef *USBx);
HAL_StatusTypeDef USB_FlushTxFifo(USB_OTG_GlobalTypeDef *USBx, uint32_t num);
HAL_StatusTypeDef USB_ActivateEndpoint(USB_OTG_GlobalTypeDef *USBx, USB_OTG_EPTypeDef *ep);
HAL_StatusTypeDef USB_DeactivateEndpoint(USB_OTG_GlobalTypeDef *USBx, USB_OTG_EPTypeDef *ep);
HAL_StatusTypeDef USB_ActivateDedicatedEndpoint(USB_OTG_GlobalTypeDef *USBx, USB_OTG_EPTypeDef *ep);
HAL_StatusTypeDef USB_DeactivateDedicatedEndpoint(USB_OTG_GlobalTypeDef *USBx, USB_OTG_EPTypeDef *ep);
HAL_StatusTypeDef USB_EPStartXfer(USB_OTG_GlobalTypeDef *USBx, USB_OTG_EPTypeDef *ep, uint8_t dma);
HAL_StatusTypeDef USB_EP0StartXfer(USB_OTG_GlobalTypeDef *USBx, USB_OTG_EPTypeDef *ep, uint8_t dma);
HAL_StatusTypeDef USB_WritePacket(USB_OTG_GlobalTypeDef *USBx, uint8_t *src, uint8_t ch_ep_num, uint16_t len, uint8_t dma);
void             *USB_ReadPacket(USB_OTG_GlobalTypeDef *USBx, uint8_t *dest, uint16_t len);
HAL_StatusTypeDef USB_EPSetStall(USB_OTG_GlobalTypeDef *USBx, USB_OTG_EPTypeDef *ep);
HAL_StatusTypeDef USB_EPClearStall(USB_OTG_GlobalTypeDef *USBx, USB_OTG_EPTypeDef *ep);
HAL_StatusTypeDef USB_SetDevAddress(USB_OTG_GlobalTypeDef *USBx, uint8_t address);
HAL_StatusTypeDef USB_DevConnect(USB_OTG_GlobalTypeDef *USBx);
HAL_StatusTypeDef USB_DevDisconnect(USB_OTG_GlobalTypeDef *USBx);
HAL_StatusTypeDef USB_StopDevice(USB_OTG_GlobalTypeDef *USBx);
HAL_StatusTypeDef USB_ActivateSetup(USB_OTG_GlobalTypeDef *USBx);
HAL_StatusTypeDef USB_EP0_OutStart(USB_OTG_GlobalTypeDef *USBx, uint8_t dma, uint8_t *psetup);
uint8_t           USB_GetDevSpeed(USB_OTG_GlobalTypeDef *USBx);
uint32_t          USB_GetMode(USB_OTG_GlobalTypeDef *USBx);
uint32_t          USB_ReadInterrupts(USB_OTG_GlobalTypeDef *USBx);
uint32_t          USB_ReadDevAllOutEpInterrupt(USB_OTG_GlobalTypeDef *USBx);
uint32_t          USB_ReadDevOutEPInterrupt(USB_OTG_GlobalTypeDef *USBx, uint8_t epnum);
uint32_t          USB_ReadDevAllInEpInterrupt(USB_OTG_GlobalTypeDef *USBx);
uint32_t          USB_ReadDevInEPInterrupt(USB_OTG_GlobalTypeDef *USBx, uint8_t epnum);
void              USB_ClearInterrupts(USB_OTG_GlobalTypeDef *USBx, uint32_t interrupt);

HAL_StatusTypeDef USB_HostInit(USB_OTG_GlobalTypeDef *USBx, USB_OTG_CfgTypeDef cfg);
HAL_StatusTypeDef USB_InitFSLSPClkSel(USB_OTG_GlobalTypeDef *USBx, uint8_t freq);
HAL_StatusTypeDef USB_ResetPort(USB_OTG_GlobalTypeDef *USBx);
HAL_StatusTypeDef USB_DriveVbus(USB_OTG_GlobalTypeDef *USBx, uint8_t state);
uint32_t          USB_GetHostSpeed(USB_OTG_GlobalTypeDef *USBx);
uint32_t          USB_GetCurrentFrame(USB_OTG_GlobalTypeDef *USBx);
HAL_StatusTypeDef USB_HC_Init(USB_OTG_GlobalTypeDef *USBx,
                              uint8_t ch_num,
                              uint8_t epnum,
                              uint8_t dev_address,
                              uint8_t speed,
                              uint8_t ep_type,
                              uint16_t mps);
HAL_StatusTypeDef USB_HC_StartXfer(USB_OTG_GlobalTypeDef *USBx, USB_OTG_HCTypeDef *hc, uint8_t dma);
uint32_t          USB_HC_ReadInterrupt(USB_OTG_GlobalTypeDef *USBx);
HAL_StatusTypeDef USB_HC_Halt(USB_OTG_GlobalTypeDef *USBx, uint8_t hc_num);
HAL_StatusTypeDef USB_DoPing(USB_OTG_GlobalTypeDef *USBx, uint8_t ch_num);
HAL_StatusTypeDef USB_StopHost(USB_OTG_GlobalTypeDef *USBx);
HAL_StatusTypeDef USB_ActivateRemoteWakeup(USB_OTG_GlobalTypeDef *USBx);
HAL_StatusTypeDef USB_DeActivateRemoteWakeup(USB_OTG_GlobalTypeDef *USBx);




 



 



 



 









 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pcd.h"





 



 

 


 



 
typedef enum
{
  HAL_PCD_STATE_RESET   = 0x00,
  HAL_PCD_STATE_READY   = 0x01,
  HAL_PCD_STATE_ERROR   = 0x02,
  HAL_PCD_STATE_BUSY    = 0x03,
  HAL_PCD_STATE_TIMEOUT = 0x04
} PCD_StateTypeDef;

 
typedef enum
{
  LPM_L0 = 0x00,  
  LPM_L1 = 0x01,  
  LPM_L2 = 0x02,  
  LPM_L3 = 0x03,  
} PCD_LPM_StateTypeDef;

typedef enum
{
  PCD_LPM_L0_ACTIVE = 0x00,  
  PCD_LPM_L1_ACTIVE = 0x01,  
} PCD_LPM_MsgTypeDef;

typedef enum
{
  PCD_BCD_ERROR                     = 0xFF,
  PCD_BCD_CONTACT_DETECTION         = 0xFE,
  PCD_BCD_STD_DOWNSTREAM_PORT       = 0xFD,
  PCD_BCD_CHARGING_DOWNSTREAM_PORT  = 0xFC,
  PCD_BCD_DEDICATED_CHARGING_PORT   = 0xFB,
  PCD_BCD_DISCOVERY_COMPLETED       = 0x00,

} PCD_BCD_MsgTypeDef;


typedef USB_OTG_GlobalTypeDef  PCD_TypeDef;
typedef USB_OTG_CfgTypeDef     PCD_InitTypeDef;
typedef USB_OTG_EPTypeDef      PCD_EPTypeDef;




 



typedef struct

{
  PCD_TypeDef             *Instance;    
  PCD_InitTypeDef         Init;         
  volatile uint8_t            USB_Address;  
  PCD_EPTypeDef           IN_ep[16];    
  PCD_EPTypeDef           OUT_ep[16];   
  HAL_LockTypeDef         Lock;         
  volatile PCD_StateTypeDef   State;        
  volatile  uint32_t          ErrorCode;    
  uint32_t                Setup[12];    
  PCD_LPM_StateTypeDef    LPM_State;    
  uint32_t                BESL;


  uint32_t lpm_active;                 
 

  uint32_t battery_charging_active;    
 
  void                    *pData;       

#line 138 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pcd.h"
} PCD_HandleTypeDef;



 

 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pcd_ex.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pcd_ex.h"




 



 
 
 
 
 


 


 


HAL_StatusTypeDef HAL_PCDEx_SetTxFiFo(PCD_HandleTypeDef *hpcd, uint8_t fifo, uint16_t size);
HAL_StatusTypeDef HAL_PCDEx_SetRxFiFo(PCD_HandleTypeDef *hpcd, uint16_t size);


#line 64 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pcd_ex.h"
void HAL_PCDEx_LPM_Callback(PCD_HandleTypeDef *hpcd, PCD_LPM_MsgTypeDef msg);
void HAL_PCDEx_BCD_Callback(PCD_HandleTypeDef *hpcd, PCD_BCD_MsgTypeDef msg);



 



 



 



 









 
#line 146 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pcd.h"

 


 



 





 



 





 




 






 



 

 



 





















#line 223 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pcd.h"

#line 230 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pcd.h"




 

 


 

 


 
HAL_StatusTypeDef HAL_PCD_Init(PCD_HandleTypeDef *hpcd);
HAL_StatusTypeDef HAL_PCD_DeInit(PCD_HandleTypeDef *hpcd);
void HAL_PCD_MspInit(PCD_HandleTypeDef *hpcd);
void HAL_PCD_MspDeInit(PCD_HandleTypeDef *hpcd);

#line 311 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_pcd.h"


 

 
 


 
HAL_StatusTypeDef HAL_PCD_Start(PCD_HandleTypeDef *hpcd);
HAL_StatusTypeDef HAL_PCD_Stop(PCD_HandleTypeDef *hpcd);
void HAL_PCD_IRQHandler(PCD_HandleTypeDef *hpcd);

void HAL_PCD_SOFCallback(PCD_HandleTypeDef *hpcd);
void HAL_PCD_SetupStageCallback(PCD_HandleTypeDef *hpcd);
void HAL_PCD_ResetCallback(PCD_HandleTypeDef *hpcd);
void HAL_PCD_SuspendCallback(PCD_HandleTypeDef *hpcd);
void HAL_PCD_ResumeCallback(PCD_HandleTypeDef *hpcd);
void HAL_PCD_ConnectCallback(PCD_HandleTypeDef *hpcd);
void HAL_PCD_DisconnectCallback(PCD_HandleTypeDef *hpcd);

void HAL_PCD_DataOutStageCallback(PCD_HandleTypeDef *hpcd, uint8_t epnum);
void HAL_PCD_DataInStageCallback(PCD_HandleTypeDef *hpcd, uint8_t epnum);
void HAL_PCD_ISOOUTIncompleteCallback(PCD_HandleTypeDef *hpcd, uint8_t epnum);
void HAL_PCD_ISOINIncompleteCallback(PCD_HandleTypeDef *hpcd, uint8_t epnum);


 

 


 
HAL_StatusTypeDef HAL_PCD_DevConnect(PCD_HandleTypeDef *hpcd);
HAL_StatusTypeDef HAL_PCD_DevDisconnect(PCD_HandleTypeDef *hpcd);
HAL_StatusTypeDef HAL_PCD_SetAddress(PCD_HandleTypeDef *hpcd, uint8_t address);
HAL_StatusTypeDef HAL_PCD_EP_Open(PCD_HandleTypeDef *hpcd, uint8_t ep_addr, uint16_t ep_mps, uint8_t ep_type);
HAL_StatusTypeDef HAL_PCD_EP_Close(PCD_HandleTypeDef *hpcd, uint8_t ep_addr);
HAL_StatusTypeDef HAL_PCD_EP_Receive(PCD_HandleTypeDef *hpcd, uint8_t ep_addr, uint8_t *pBuf, uint32_t len);
HAL_StatusTypeDef HAL_PCD_EP_Transmit(PCD_HandleTypeDef *hpcd, uint8_t ep_addr, uint8_t *pBuf, uint32_t len);
uint32_t          HAL_PCD_EP_GetRxCount(PCD_HandleTypeDef *hpcd, uint8_t ep_addr);
HAL_StatusTypeDef HAL_PCD_EP_SetStall(PCD_HandleTypeDef *hpcd, uint8_t ep_addr);
HAL_StatusTypeDef HAL_PCD_EP_ClrStall(PCD_HandleTypeDef *hpcd, uint8_t ep_addr);
HAL_StatusTypeDef HAL_PCD_EP_Flush(PCD_HandleTypeDef *hpcd, uint8_t ep_addr);
HAL_StatusTypeDef HAL_PCD_ActivateRemoteWakeup(PCD_HandleTypeDef *hpcd);
HAL_StatusTypeDef HAL_PCD_DeActivateRemoteWakeup(PCD_HandleTypeDef *hpcd);


 

 


 
PCD_StateTypeDef HAL_PCD_GetState(PCD_HandleTypeDef *hpcd);


 



 

 


 


 
















 


 



























 


 



 



 



 








 
#line 369 "..\\USER\\stm32f4xx_hal_conf.h"


#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_hcd.h"

















 

 







 
#line 30 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_hcd.h"




 



 

 


 



 
typedef enum
{
  HAL_HCD_STATE_RESET    = 0x00,
  HAL_HCD_STATE_READY    = 0x01,
  HAL_HCD_STATE_ERROR    = 0x02,
  HAL_HCD_STATE_BUSY     = 0x03,
  HAL_HCD_STATE_TIMEOUT  = 0x04
} HCD_StateTypeDef;

typedef USB_OTG_GlobalTypeDef   HCD_TypeDef;
typedef USB_OTG_CfgTypeDef      HCD_InitTypeDef;
typedef USB_OTG_HCTypeDef       HCD_HCTypeDef;
typedef USB_OTG_URBStateTypeDef HCD_URBStateTypeDef;
typedef USB_OTG_HCStateTypeDef  HCD_HCStateTypeDef;


 



 



typedef struct

{
  HCD_TypeDef               *Instance;   
  HCD_InitTypeDef           Init;        
  HCD_HCTypeDef             hc[16];      
  HAL_LockTypeDef           Lock;        
  volatile HCD_StateTypeDef     State;       
  volatile  uint32_t            ErrorCode;   
  void                      *pData;      
#line 94 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_hcd.h"
} HCD_HandleTypeDef;


 



 

 


 



 






 



 




 




 






 



 

 



 














 

 


 



 
HAL_StatusTypeDef      HAL_HCD_Init(HCD_HandleTypeDef *hhcd);
HAL_StatusTypeDef      HAL_HCD_DeInit(HCD_HandleTypeDef *hhcd);
HAL_StatusTypeDef      HAL_HCD_HC_Init(HCD_HandleTypeDef *hhcd,
                                       uint8_t ch_num,
                                       uint8_t epnum,
                                       uint8_t dev_address,
                                       uint8_t speed,
                                       uint8_t ep_type,
                                       uint16_t mps);

HAL_StatusTypeDef     HAL_HCD_HC_Halt(HCD_HandleTypeDef *hhcd, uint8_t ch_num);
void                  HAL_HCD_MspInit(HCD_HandleTypeDef *hhcd);
void                  HAL_HCD_MspDeInit(HCD_HandleTypeDef *hhcd);

#line 227 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_hcd.h"


 

 


 
HAL_StatusTypeDef       HAL_HCD_HC_SubmitRequest(HCD_HandleTypeDef *hhcd,
                                                 uint8_t ch_num,
                                                 uint8_t direction,
                                                 uint8_t ep_type,
                                                 uint8_t token,
                                                 uint8_t *pbuff,
                                                 uint16_t length,
                                                 uint8_t do_ping);

 
void             HAL_HCD_IRQHandler(HCD_HandleTypeDef *hhcd);
void             HAL_HCD_SOF_Callback(HCD_HandleTypeDef *hhcd);
void             HAL_HCD_Connect_Callback(HCD_HandleTypeDef *hhcd);
void             HAL_HCD_Disconnect_Callback(HCD_HandleTypeDef *hhcd);
void             HAL_HCD_PortEnabled_Callback(HCD_HandleTypeDef *hhcd);
void             HAL_HCD_PortDisabled_Callback(HCD_HandleTypeDef *hhcd);
void             HAL_HCD_HC_NotifyURBChange_Callback(HCD_HandleTypeDef *hhcd,
                                                     uint8_t chnum,
                                                     HCD_URBStateTypeDef urb_state);


 

 


 
HAL_StatusTypeDef       HAL_HCD_ResetPort(HCD_HandleTypeDef *hhcd);
HAL_StatusTypeDef       HAL_HCD_Start(HCD_HandleTypeDef *hhcd);
HAL_StatusTypeDef       HAL_HCD_Stop(HCD_HandleTypeDef *hhcd);


 

 


 
HCD_StateTypeDef        HAL_HCD_GetState(HCD_HandleTypeDef *hhcd);
HCD_URBStateTypeDef     HAL_HCD_HC_GetURBState(HCD_HandleTypeDef *hhcd, uint8_t chnum);
uint32_t                HAL_HCD_HC_GetXferCount(HCD_HandleTypeDef *hhcd, uint8_t chnum);
HCD_HCStateTypeDef      HAL_HCD_HC_GetState(HCD_HandleTypeDef *hhcd, uint8_t chnum);
uint32_t                HAL_HCD_GetCurrentFrame(HCD_HandleTypeDef *hhcd);
uint32_t                HAL_HCD_GetCurrentSpeed(HCD_HandleTypeDef *hhcd);


 



 

 


 



 

 


 



 

 


 



 



 



 








 
#line 373 "..\\USER\\stm32f4xx_hal_conf.h"

   
 
#line 391 "..\\USER\\stm32f4xx_hal_conf.h"







 

 
#line 31 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal.h"



 



  

 
 



 



 
typedef enum
{
  HAL_TICK_FREQ_10HZ         = 100U,
  HAL_TICK_FREQ_100HZ        = 10U,
  HAL_TICK_FREQ_1KHZ         = 1U,
  HAL_TICK_FREQ_DEFAULT      = HAL_TICK_FREQ_1KHZ
} HAL_TickFreqTypeDef;


 



 
   
 


 


 
#line 94 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal.h"

#line 117 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal.h"


 



 





 






 





#line 156 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal.h"

#line 186 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal.h"


 



 





 

 


 


 
 
HAL_StatusTypeDef HAL_Init(void);
HAL_StatusTypeDef HAL_DeInit(void);
void HAL_MspInit(void);
void HAL_MspDeInit(void);
HAL_StatusTypeDef HAL_InitTick (uint32_t TickPriority);


 



 
 
void HAL_IncTick(void);
void HAL_Delay(uint32_t Delay);
uint32_t HAL_GetTick(void);
uint32_t HAL_GetTickPrio(void);
HAL_StatusTypeDef HAL_SetTickFreq(HAL_TickFreqTypeDef Freq);
HAL_TickFreqTypeDef HAL_GetTickFreq(void);
void HAL_SuspendTick(void);
void HAL_ResumeTick(void);
uint32_t HAL_GetHalVersion(void);
uint32_t HAL_GetREVID(void);
uint32_t HAL_GetDEVID(void);
void HAL_DBGMCU_EnableDBGSleepMode(void);
void HAL_DBGMCU_DisableDBGSleepMode(void);
void HAL_DBGMCU_EnableDBGStopMode(void);
void HAL_DBGMCU_DisableDBGStopMode(void);
void HAL_DBGMCU_EnableDBGStandbyMode(void);
void HAL_DBGMCU_DisableDBGStandbyMode(void);
void HAL_EnableCompensationCell(void);
void HAL_DisableCompensationCell(void);
uint32_t HAL_GetUIDw0(void);
uint32_t HAL_GetUIDw1(void);
uint32_t HAL_GetUIDw2(void);







 



 
 
 


 


 
 


 


 
 
 


 



  
  






 
#line 44 "..\\USER\\main.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"




 





 












 






   









 






#line 61 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

#line 75 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"







   




 















 
#line 112 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"











 





extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_dcmp4(double  , double  );
extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_fcmp4(float  , float  );
    




 

extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassifyf(float  );
extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassify(double  );
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinitef(float __x)
{
    return (((*(unsigned *)&(__x)) >> 23) & 0xff) != 0xff;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinite(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff) != 0x7ff;
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinff(float __x)
{
    return ((*(unsigned *)&(__x)) << 1) == 0xff000000;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinf(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) << 1) == 0xffe00000) && ((*(unsigned *)&(__x)) == 0);
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreaterf(float __x, float __y)
{
    unsigned __f = __ARM_fcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreater(double __x, double __y)
{
    unsigned __f = __ARM_dcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
    


 

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnanf(float __x)
{
    return (0x7f800000 - ((*(unsigned *)&(__x)) & 0x7fffffff)) >> 31;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnan(double __x)
{
    unsigned __xf = (*(1 + (unsigned *)&(__x))) | (((*(unsigned *)&(__x)) == 0) ? 0 : 1);
    return (0x7ff00000 - (__xf & 0x7fffffff)) >> 31;
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormalf(float __x)
{
    unsigned __xe = ((*(unsigned *)&(__x)) >> 23) & 0xff;
    return (__xe != 0xff) && (__xe != 0);
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormal(double __x)
{
    unsigned __xe = ((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff;
    return (__xe != 0x7ff) && (__xe != 0);
}
     
     

static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbitf(float __x)
{
    return (*(unsigned *)&(__x)) >> 31;
}
static inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbit(double __x)
{
    return (*(1 + (unsigned *)&(__x))) >> 31;
}
     
     








#line 230 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"







   
  typedef float float_t;
  typedef double double_t;
#line 251 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"



extern const int math_errhandling;
#line 261 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

extern __declspec(__nothrow) double acos(double  );
    
    
    
extern __declspec(__nothrow) double asin(double  );
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double atan(double  );
    
    

extern __declspec(__nothrow) double atan2(double  , double  );
    
    
    
    

extern __declspec(__nothrow) double cos(double  );
    
    
    
    
extern __declspec(__nothrow) double sin(double  );
    
    
    
    

extern void __use_accurate_range_reduction(void);
    
    

extern __declspec(__nothrow) double tan(double  );
    
    
    
    

extern __declspec(__nothrow) double cosh(double  );
    
    
    
    
extern __declspec(__nothrow) double sinh(double  );
    
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double tanh(double  );
    
    

extern __declspec(__nothrow) double exp(double  );
    
    
    
    
    

extern __declspec(__nothrow) double frexp(double  , int *  ) __attribute__((__nonnull__(2)));
    
    
    
    
    
    

extern __declspec(__nothrow) double ldexp(double  , int  );
    
    
    
    
extern __declspec(__nothrow) double log(double  );
    
    
    
    
    
extern __declspec(__nothrow) double log10(double  );
    
    
    
extern __declspec(__nothrow) double modf(double  , double *  ) __attribute__((__nonnull__(2)));
    
    
    
    

extern __declspec(__nothrow) double pow(double  , double  );
    
    
    
    
    
    
extern __declspec(__nothrow) double sqrt(double  );
    
    
    




    inline double _sqrt(double __x) { return sqrt(__x); }


    inline float _sqrtf(float __x) { return __sqrtf(__x); }



    



 

extern __declspec(__nothrow) __attribute__((const)) double ceil(double  );
    
    
extern __declspec(__nothrow) __attribute__((const)) double fabs(double  );
    
    

extern __declspec(__nothrow) __attribute__((const)) double floor(double  );
    
    

extern __declspec(__nothrow) double fmod(double  , double  );
    
    
    
    
    

    









 



extern __declspec(__nothrow) double acosh(double  );
    

 
extern __declspec(__nothrow) double asinh(double  );
    

 
extern __declspec(__nothrow) double atanh(double  );
    

 
extern __declspec(__nothrow) double cbrt(double  );
    

 
inline __declspec(__nothrow) __attribute__((const)) double copysign(double __x, double __y)
    

 
{
    (*(1 + (unsigned *)&(__x))) = ((*(1 + (unsigned *)&(__x))) & 0x7fffffff) | ((*(1 + (unsigned *)&(__y))) & 0x80000000);
    return __x;
}
inline __declspec(__nothrow) __attribute__((const)) float copysignf(float __x, float __y)
    

 
{
    (*(unsigned *)&(__x)) = ((*(unsigned *)&(__x)) & 0x7fffffff) | ((*(unsigned *)&(__y)) & 0x80000000);
    return __x;
}
extern __declspec(__nothrow) double erf(double  );
    

 
extern __declspec(__nothrow) double erfc(double  );
    

 
extern __declspec(__nothrow) double expm1(double  );
    

 



    

 






#line 479 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"


extern __declspec(__nothrow) double hypot(double  , double  );
    




 
extern __declspec(__nothrow) int ilogb(double  );
    

 
extern __declspec(__nothrow) int ilogbf(float  );
    

 
extern __declspec(__nothrow) int ilogbl(long double  );
    

 







    

 





    



 





    



 





    

 





    



 





    



 





    



 





    

 





    

 





    


 

extern __declspec(__nothrow) double lgamma (double  );
    


 
extern __declspec(__nothrow) double log1p(double  );
    

 
extern __declspec(__nothrow) double logb(double  );
    

 
extern __declspec(__nothrow) float logbf(float  );
    

 
extern __declspec(__nothrow) long double logbl(long double  );
    

 
extern __declspec(__nothrow) double nextafter(double  , double  );
    


 
extern __declspec(__nothrow) float nextafterf(float  , float  );
    


 
extern __declspec(__nothrow) long double nextafterl(long double  , long double  );
    


 
extern __declspec(__nothrow) double nexttoward(double  , long double  );
    


 
extern __declspec(__nothrow) float nexttowardf(float  , long double  );
    


 
extern __declspec(__nothrow) long double nexttowardl(long double  , long double  );
    


 
extern __declspec(__nothrow) double remainder(double  , double  );
    

 
extern __declspec(__nothrow) __attribute__((const)) double rint(double  );
    

 
extern __declspec(__nothrow) double scalbln(double  , long int  );
    

 
extern __declspec(__nothrow) float scalblnf(float  , long int  );
    

 
extern __declspec(__nothrow) long double scalblnl(long double  , long int  );
    

 
extern __declspec(__nothrow) double scalbn(double  , int  );
    

 
extern __declspec(__nothrow) float scalbnf(float  , int  );
    

 
extern __declspec(__nothrow) long double scalbnl(long double  , int  );
    

 




    

 



 
extern __declspec(__nothrow) __attribute__((const)) float _fabsf(float);  
inline __declspec(__nothrow) __attribute__((const)) float fabsf(float __f) { return _fabsf(__f); }
extern __declspec(__nothrow) float sinf(float  );
extern __declspec(__nothrow) float cosf(float  );
extern __declspec(__nothrow) float tanf(float  );
extern __declspec(__nothrow) float acosf(float  );
extern __declspec(__nothrow) float asinf(float  );
extern __declspec(__nothrow) float atanf(float  );
extern __declspec(__nothrow) float atan2f(float  , float  );
extern __declspec(__nothrow) float sinhf(float  );
extern __declspec(__nothrow) float coshf(float  );
extern __declspec(__nothrow) float tanhf(float  );
extern __declspec(__nothrow) float expf(float  );
extern __declspec(__nothrow) float logf(float  );
extern __declspec(__nothrow) float log10f(float  );
extern __declspec(__nothrow) float powf(float  , float  );
extern __declspec(__nothrow) float sqrtf(float  );
extern __declspec(__nothrow) float ldexpf(float  , int  );
extern __declspec(__nothrow) float frexpf(float  , int *  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) __attribute__((const)) float ceilf(float  );
extern __declspec(__nothrow) __attribute__((const)) float floorf(float  );
extern __declspec(__nothrow) float fmodf(float  , float  );
extern __declspec(__nothrow) float modff(float  , float *  ) __attribute__((__nonnull__(2)));

 
 













 
__declspec(__nothrow) long double acosl(long double );
__declspec(__nothrow) long double asinl(long double );
__declspec(__nothrow) long double atanl(long double );
__declspec(__nothrow) long double atan2l(long double , long double );
__declspec(__nothrow) long double ceill(long double );
__declspec(__nothrow) long double cosl(long double );
__declspec(__nothrow) long double coshl(long double );
__declspec(__nothrow) long double expl(long double );
__declspec(__nothrow) long double fabsl(long double );
__declspec(__nothrow) long double floorl(long double );
__declspec(__nothrow) long double fmodl(long double , long double );
__declspec(__nothrow) long double frexpl(long double , int* ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double ldexpl(long double , int );
__declspec(__nothrow) long double logl(long double );
__declspec(__nothrow) long double log10l(long double );
__declspec(__nothrow) long double modfl(long double  , long double *  ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double powl(long double , long double );
__declspec(__nothrow) long double sinl(long double );
__declspec(__nothrow) long double sinhl(long double );
__declspec(__nothrow) long double sqrtl(long double );
__declspec(__nothrow) long double tanl(long double );
__declspec(__nothrow) long double tanhl(long double );





 
extern __declspec(__nothrow) float acoshf(float  );
__declspec(__nothrow) long double acoshl(long double );
extern __declspec(__nothrow) float asinhf(float  );
__declspec(__nothrow) long double asinhl(long double );
extern __declspec(__nothrow) float atanhf(float  );
__declspec(__nothrow) long double atanhl(long double );
__declspec(__nothrow) long double copysignl(long double , long double );
extern __declspec(__nothrow) float cbrtf(float  );
__declspec(__nothrow) long double cbrtl(long double );
extern __declspec(__nothrow) float erff(float  );
__declspec(__nothrow) long double erfl(long double );
extern __declspec(__nothrow) float erfcf(float  );
__declspec(__nothrow) long double erfcl(long double );
extern __declspec(__nothrow) float expm1f(float  );
__declspec(__nothrow) long double expm1l(long double );
extern __declspec(__nothrow) float log1pf(float  );
__declspec(__nothrow) long double log1pl(long double );
extern __declspec(__nothrow) float hypotf(float  , float  );
__declspec(__nothrow) long double hypotl(long double , long double );
extern __declspec(__nothrow) float lgammaf(float  );
__declspec(__nothrow) long double lgammal(long double );
extern __declspec(__nothrow) float remainderf(float  , float  );
__declspec(__nothrow) long double remainderl(long double , long double );
extern __declspec(__nothrow) float rintf(float  );
__declspec(__nothrow) long double rintl(long double );






 
extern __declspec(__nothrow) double exp2(double  );  
extern __declspec(__nothrow) float exp2f(float  );
__declspec(__nothrow) long double exp2l(long double );
extern __declspec(__nothrow) double fdim(double  , double  );
extern __declspec(__nothrow) float fdimf(float  , float  );
__declspec(__nothrow) long double fdiml(long double , long double );
#line 803 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"
extern __declspec(__nothrow) double fma(double  , double  , double  );
extern __declspec(__nothrow) float fmaf(float  , float  , float  );

inline __declspec(__nothrow) long double fmal(long double __x, long double __y, long double __z)     { return (long double)fma((double)__x, (double)__y, (double)__z); }


extern __declspec(__nothrow) __attribute__((const)) double fmax(double  , double  );
extern __declspec(__nothrow) __attribute__((const)) float fmaxf(float  , float  );
__declspec(__nothrow) long double fmaxl(long double , long double );
extern __declspec(__nothrow) __attribute__((const)) double fmin(double  , double  );
extern __declspec(__nothrow) __attribute__((const)) float fminf(float  , float  );
__declspec(__nothrow) long double fminl(long double , long double );
extern __declspec(__nothrow) double log2(double  );  
extern __declspec(__nothrow) float log2f(float  );
__declspec(__nothrow) long double log2l(long double );
extern __declspec(__nothrow) long lrint(double  );
extern __declspec(__nothrow) long lrintf(float  );

inline __declspec(__nothrow) long lrintl(long double __x)     { return lrint((double)__x); }


extern __declspec(__nothrow) long long llrint(double  );
extern __declspec(__nothrow) long long llrintf(float  );

inline __declspec(__nothrow) long long llrintl(long double __x)     { return llrint((double)__x); }


extern __declspec(__nothrow) long lround(double  );
extern __declspec(__nothrow) long lroundf(float  );

inline __declspec(__nothrow) long lroundl(long double __x)     { return lround((double)__x); }


extern __declspec(__nothrow) long long llround(double  );
extern __declspec(__nothrow) long long llroundf(float  );

inline __declspec(__nothrow) long long llroundl(long double __x)     { return llround((double)__x); }


extern __declspec(__nothrow) __attribute__((const)) double nan(const char * );
extern __declspec(__nothrow) __attribute__((const)) float nanf(const char * );

inline __declspec(__nothrow) __attribute__((const)) long double nanl(const char *__t)     { return (long double)nan(__t); }
#line 856 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"
extern __declspec(__nothrow) __attribute__((const)) double nearbyint(double  );
extern __declspec(__nothrow) __attribute__((const)) float nearbyintf(float  );
__declspec(__nothrow) long double nearbyintl(long double );
extern  double remquo(double  , double  , int * );
extern  float remquof(float  , float  , int * );

inline long double remquol(long double __x, long double __y, int *__q)     { return (long double)remquo((double)__x, (double)__y, __q); }


extern __declspec(__nothrow) __attribute__((const)) double round(double  );
extern __declspec(__nothrow) __attribute__((const)) float roundf(float  );
__declspec(__nothrow) long double roundl(long double );
extern __declspec(__nothrow) double tgamma(double  );  
extern __declspec(__nothrow) float tgammaf(float  );
__declspec(__nothrow) long double tgammal(long double );
extern __declspec(__nothrow) __attribute__((const)) double trunc(double  );
extern __declspec(__nothrow) __attribute__((const)) float truncf(float  );
__declspec(__nothrow) long double truncl(long double );






#line 896 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

#line 1087 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"











#line 1317 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"





 
#line 45 "..\\USER\\main.h"
#line 1 "..\\SYSTEM\\sys\\sys.h"
#line 4 "..\\SYSTEM\\sys\\sys.h"

























typedef int32_t  s32;
typedef int16_t s16;
typedef int8_t  s8;

typedef const int32_t sc32;  
typedef const int16_t sc16;  
typedef const int8_t sc8;  

typedef volatile int32_t  vs32;
typedef volatile int16_t  vs16;
typedef volatile int8_t   vs8;

typedef volatile const int32_t vsc32;  
typedef volatile const int16_t vsc16; 
typedef volatile const int8_t vsc8;   

typedef uint32_t  u32;
typedef uint16_t u16;
typedef uint8_t  u8;

typedef const uint32_t uc32;  
typedef const uint16_t uc16;  
typedef const uint8_t uc8; 

typedef volatile uint32_t  vu32;
typedef volatile uint16_t vu16;
typedef volatile uint8_t  vu8;

typedef volatile const uint32_t vuc32;  
typedef volatile const uint16_t vuc16; 
typedef volatile const uint8_t vuc8;  
	 







#line 79 "..\\SYSTEM\\sys\\sys.h"

#line 91 "..\\SYSTEM\\sys\\sys.h"




































void Stm32_Clock_Init(u32 plln,u32 pllm,u32 pllp,u32 pllq);

void WFI_SET(void);		
void INTX_DISABLE(void);
void INTX_ENABLE(void);	
void MSR_MSP(u32 addr);	


#line 46 "..\\USER\\main.h"
#line 1 "..\\SYSTEM\\delay\\delay.h"
#line 4 "..\\SYSTEM\\delay\\delay.h"
















void delay_init(u8 SYSCLK);
void delay_ms(u32 nms);
void delay_us(u32 nus);


#line 47 "..\\USER\\main.h"
#line 1 "..\\SYSTEM\\usart\\usart.h"
#line 4 "..\\SYSTEM\\usart\\usart.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
 
 
 





 






 







 




  
 








#line 47 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


  



    typedef unsigned int size_t;    









 
 

 



    typedef struct __va_list __va_list;






   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

#line 136 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 166 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int __ARM_vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int __ARM_vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int __ARM_vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));
   








 

extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 1021 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"



 

#line 5 "..\\SYSTEM\\usart\\usart.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
 
 
 





 










#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"








 

 
 
#line 57 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
    typedef struct __va_list { void *__ap; } va_list;

   






 


   










 


   















 




   

 


   




 



   





 







#line 138 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"



#line 147 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"

 

#line 6 "..\\SYSTEM\\usart\\usart.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 7 "..\\SYSTEM\\usart\\usart.h"
#line 1 "..\\HARDWARE\\TIMER\\timer.h"
#line 4 "..\\HARDWARE\\TIMER\\timer.h"


























void TIM2_Int_Init(u16 arr,u16 psc);
void TIM3_Int_Init(u16 arr,u16 psc);
void TIM3_PWM_Init(u16 arr,u16 psc);
void TIM5_RGB_Init(u16 arr,u16 psc);
void TIM7_Int_Init(u16 arr,u16 psc);
void Set_TIMx_Comparex(TIM_TypeDef *TIMx,u8 CCRx,u32 compare);

extern uint32_t FreeRTOSRunTimeTicks;
























#line 8 "..\\SYSTEM\\usart\\usart.h"





 



extern u8 USART_DmaTxBuf[256]; 	

extern u16 USART_RX_STA;         		
extern UART_HandleTypeDef UART1_Handler; 





void uart1_init(u32 bound);
extern void Usart1_DmaPrintf(const char *format,...);






extern u8  USART3_RX_BUF[512]; 		
extern u8  USART3_TX_BUF[256]; 		
extern u16 USART3_RX_STA;   						
extern volatile uint8_t UART3IDLE_RxSize;     		
extern volatile uint8_t UART3IDLE_RxOverFlag; 		



void usart3_init(u32 bound);		

#line 48 "..\\USER\\main.h"


#line 51 "..\\USER\\main.h"
#line 1 "..\\HARDWARE\\LED\\led.h"
#line 4 "..\\HARDWARE\\LED\\led.h"



void LED_Init(void);

#line 52 "..\\USER\\main.h"


#line 1 "..\\HARDWARE\\KEY\\key.h"



#line 5 "..\\HARDWARE\\KEY\\key.h"





















 







 

void KEY_Init(void);
extern u8 key_driver(u8 KEY);

u8 KEY_Scan(u8 mode);
#line 55 "..\\USER\\main.h"

#line 1 "..\\HARDWARE\\IIC\\myiic.h"
#line 4 "..\\HARDWARE\\IIC\\myiic.h"





















void IIC_Init(void);                
void IIC_Start(void);				
void IIC_Stop(void);	  			
void IIC_Send_Byte(u8 txd);			
u8 IIC_Read_Byte(unsigned char ack);
u8 IIC_Wait_Ack(void); 				
void IIC_Ack(void);					
void IIC_NAck(void);				

void IIC_Write_One_Byte(u8 daddr,u8 addr,u8 data);
u8 IIC_Read_One_Byte(u8 daddr,u8 addr);	 


#line 57 "..\\USER\\main.h"
#line 1 "..\\HARDWARE\\24CXX\\24cxx.h"
#line 4 "..\\HARDWARE\\24CXX\\24cxx.h"
#line 5 "..\\HARDWARE\\24CXX\\24cxx.h"













#line 27 "..\\HARDWARE\\24CXX\\24cxx.h"


					  
u8 AT24CXX_ReadOneByte(u16 ReadAddr);							
void AT24CXX_WriteOneByte(u16 WriteAddr,u8 DataToWrite);		
void AT24CXX_WriteLenByte(u16 WriteAddr,u32 DataToWrite,u8 Len);
u32 AT24CXX_ReadLenByte(u16 ReadAddr,u8 Len);					
void AT24CXX_Write(u16 WriteAddr,u8 *pBuffer,u16 NumToWrite);	
void AT24CXX_Read(u16 ReadAddr,u8 *pBuffer,u16 NumToRead);   	

u8 AT24CXX_Check(void);  
void AT24CXX_Init(void); 
#line 58 "..\\USER\\main.h"
#line 1 "..\\HARDWARE\\TOUCH\\touch.h"
#line 4 "..\\HARDWARE\\TOUCH\\touch.h"




























typedef struct
{
	u8 (*init)(void);			
	u8 (*scan)(u8);				
	void (*adjust)(void);		
	u16 x[5]; 		
	u16 y[5];		
								
	u8  sta;					
								
	                            
								
								

	float xfac;					
	float yfac;
	short xoff;
	short yoff;	   






	u8 touchtype;
}_m_tp_dev;

extern _m_tp_dev tp_dev;	 	







   

void TP_Write_Byte(u8 num);						
u16 TP_Read_AD(u8 CMD);							
u16 TP_Read_XOY(u8 xy);							
u8 TP_Read_XY(u16 *x,u16 *y);					
u8 TP_Read_XY2(u16 *x,u16 *y);					
void TP_Drow_Touch_Point(u16 x,u16 y,u16 color);
void TP_Draw_Big_Point(u16 x,u16 y,u16 color);	
void TP_Save_Adjdata(void);						
u8 TP_Get_Adjdata(void);						
void TP_Adjust(void);							
void TP_Adj_Info_Show(u16 x0,u16 y0,u16 x1,u16 y1,u16 x2,u16 y2,u16 x3,u16 y3,u16 fac);

u8 TP_Scan(u8 tp);								
u8 TP_Init(void);								
 


















#line 59 "..\\USER\\main.h"
#line 1 "..\\HARDWARE\\RTC\\rtc.h"
#line 4 "..\\HARDWARE\\RTC\\rtc.h"













extern RTC_HandleTypeDef RTC_Handler;  
    
u8 RTC_Init(void);              		
HAL_StatusTypeDef RTC_Set_Time(u8 hour,u8 min,u8 sec,u8 ampm);      
HAL_StatusTypeDef RTC_Set_Date(u8 year,u8 month,u8 date,u8 week);	
void RTC_Set_AlarmA(u8 week,u8 hour,u8 min,u8 sec); 
void RTC_Set_WakeUp(u32 wksel,u16 cnt);             
#line 60 "..\\USER\\main.h"

#line 1 "..\\MALLOC\\malloc.h"
#line 4 "..\\MALLOC\\malloc.h"
#line 5 "..\\MALLOC\\malloc.h"









 

















	 




		 







struct _m_mallco_dev
{
	void (*init)(u8);					
	u8 (*perused)(u8);		  	    	
	u8 	*membase[3];				
	u16 *memmap[3]; 				
	u8  memrdy[3]; 				
};
extern struct _m_mallco_dev mallco_dev;	 

void mymemset(void *s,u8 c,u32 count);	
void mymemcpy(void *des,void *src,u32 n);
void my_mem_init(u8 memx);				
u32 my_mem_malloc(u8 memx,u32 size);	
u8 my_mem_free(u8 memx,u32 offset);		
u8 my_mem_perused(u8 memx);				


void myfree(u8 memx,void *ptr);  			
void *mymalloc(u8 memx,u32 size);			
void *myrealloc(u8 memx,void *ptr,u32 size);














#line 62 "..\\USER\\main.h"
#line 1 "..\\HARDWARE\\SDIO\\sdio_sdcard.h"
#line 4 "..\\HARDWARE\\SDIO\\sdio_sdcard.h"









extern SD_HandleTypeDef        SDCARD_Handler;     	
extern HAL_SD_CardInfoTypeDef  SDCardInfo;         	

u8 SD_Init(void);
u8 SD_GetCardInfo(HAL_SD_CardInfoTypeDef *cardinfo);
u8 SD_GetCardState(void);
u8 SD_ReadDisk(u8* buf,u32 sector,u32 cnt);
u8 SD_WriteDisk(u8 *buf,u32 sector,u32 cnt);
u8 SD_ReadBlocks_DMA(uint32_t *buf,uint64_t sector,uint32_t blocksize,uint32_t cnt);
u8 SD_WriteBlocks_DMA(uint32_t *buf,uint64_t sector,uint32_t blocksize,uint32_t cnt);
#line 63 "..\\USER\\main.h"
#line 1 "..\\HARDWARE\\W25QXX\\w25qxx.h"
#line 4 "..\\HARDWARE\\W25QXX\\w25qxx.h"









#line 19 "..\\HARDWARE\\W25QXX\\w25qxx.h"

extern u16 W25QXX_TYPE;					





#line 48 "..\\HARDWARE\\W25QXX\\w25qxx.h"

void W25QXX_Init(void);
u16  W25QXX_ReadID(void);  	    		


u8 W25QXX_ReadSR(void);
void W25QXX_Write_SR(u8 sr);
void W25QXX_4ByteAddr_Enable(void);     
void W25QXX_Write_Enable(void);  		
void W25QXX_Write_Disable(void);		
void W25QXX_Write_NoCheck(u8* pBuffer,u32 WriteAddr,u16 NumByteToWrite);
void W25QXX_Read(u8* pBuffer,u32 ReadAddr,u16 NumByteToRead);   
void W25QXX_Write(u8* pBuffer,u32 WriteAddr,u16 NumByteToWrite);
void W25QXX_Erase_Chip(void);    	  	
void W25QXX_Erase_Sector(u32 Dst_Addr);	
void W25QXX_Wait_Busy(void);           	
void W25QXX_PowerDown(void);        	
void W25QXX_WAKEUP(void);				

#line 64 "..\\USER\\main.h"
#line 1 "..\\FATFS\\source\\ff.h"


















 









#line 1 "..\\FATFS\\source\\ffconf.h"


 





 





 









 







 




 



 



 



 




 




 



 




 



























 



















 











 







 












 








 




 


 













 








 









 




 




 





 





 





 





 













 











 











 


 


















 



 
#line 30 "..\\FATFS\\source\\ff.h"






 

#line 45 "..\\FATFS\\source\\ff.h"
typedef unsigned int	UINT;	 
typedef unsigned char	BYTE;	 
typedef uint16_t		WORD;	 
typedef uint32_t		DWORD;	 
typedef uint64_t		QWORD;	 
typedef WORD			WCHAR;	 
#line 59 "..\\FATFS\\source\\ff.h"


 

#line 70 "..\\FATFS\\source\\ff.h"









 




#line 99 "..\\FATFS\\source\\ff.h"
typedef char TCHAR;








 

#line 124 "..\\FATFS\\source\\ff.h"
typedef DWORD FSIZE_t;
typedef DWORD LBA_t;




 

typedef struct {
	BYTE	fs_type;		 
	BYTE	pdrv;			 
	BYTE	n_fats;			 
	BYTE	wflag;			 
	BYTE	fsi_flag;		 
	WORD	id;				 
	WORD	n_rootdir;		 
	WORD	csize;			 




	WCHAR*	lfnbuf;			 
#line 154 "..\\FATFS\\source\\ff.h"
	DWORD	last_clst;		 
	DWORD	free_clst;		 
#line 165 "..\\FATFS\\source\\ff.h"
	DWORD	n_fatent;		 
	DWORD	fsize;			 
	LBA_t	volbase;		 
	LBA_t	fatbase;		 
	LBA_t	dirbase;		 
	LBA_t	database;		 



	LBA_t	winsect;		 
	BYTE	win[512];	 
} FATFS;



 

typedef struct {
	FATFS*	fs;				 
	WORD	id;				 
	BYTE	attr;			 
	BYTE	stat;			 
	DWORD	sclust;			 
	FSIZE_t	objsize;		 
#line 199 "..\\FATFS\\source\\ff.h"
} FFOBJID;



 

typedef struct {
	FFOBJID	obj;			 
	BYTE	flag;			 
	BYTE	err;			 
	FSIZE_t	fptr;			 
	DWORD	clust;			 
	LBA_t	sect;			 

	LBA_t	dir_sect;		 
	BYTE*	dir_ptr;		 


	DWORD*	cltbl;			 


	BYTE	buf[512];	 

} FIL;



 

typedef struct {
	FFOBJID	obj;			 
	DWORD	dptr;			 
	DWORD	clust;			 
	LBA_t	sect;			 
	BYTE*	dir;			 
	BYTE	fn[12];			 

	DWORD	blk_ofs;		 




} DIR;



 

typedef struct {
	FSIZE_t	fsize;			 
	WORD	fdate;			 
	WORD	ftime;			 
	BYTE	fattrib;		 

	TCHAR	altname[12 + 1]; 
	TCHAR	fname[255 + 1];	 



} FILINFO;



 

typedef struct {
	BYTE fmt;			 
	BYTE n_fat;			 
	UINT align;			 
	UINT n_root;		 
	DWORD au_size;		 
} MKFS_PARM;



 

typedef enum {
	FR_OK = 0,				 
	FR_DISK_ERR,			 
	FR_INT_ERR,				 
	FR_NOT_READY,			 
	FR_NO_FILE,				 
	FR_NO_PATH,				 
	FR_INVALID_NAME,		 
	FR_DENIED,				 
	FR_EXIST,				 
	FR_INVALID_OBJECT,		 
	FR_WRITE_PROTECTED,		 
	FR_INVALID_DRIVE,		 
	FR_NOT_ENABLED,			 
	FR_NO_FILESYSTEM,		 
	FR_MKFS_ABORTED,		 
	FR_TIMEOUT,				 
	FR_LOCKED,				 
	FR_NOT_ENOUGH_CORE,		 
	FR_TOO_MANY_OPEN_FILES,	 
	FR_INVALID_PARAMETER	 
} FRESULT;



 
 

FRESULT f_open (FIL* fp, const TCHAR* path, BYTE mode);				 
FRESULT f_close (FIL* fp);											 
FRESULT f_read (FIL* fp, void* buff, UINT btr, UINT* br);			 
FRESULT f_write (FIL* fp, const void* buff, UINT btw, UINT* bw);	 
FRESULT f_lseek (FIL* fp, FSIZE_t ofs);								 
FRESULT f_truncate (FIL* fp);										 
FRESULT f_sync (FIL* fp);											 
FRESULT f_opendir (DIR* dp, const TCHAR* path);						 
FRESULT f_closedir (DIR* dp);										 
FRESULT f_readdir (DIR* dp, FILINFO* fno);							 
FRESULT f_findfirst (DIR* dp, FILINFO* fno, const TCHAR* path, const TCHAR* pattern);	 
FRESULT f_findnext (DIR* dp, FILINFO* fno);							 
FRESULT f_mkdir (const TCHAR* path);								 
FRESULT f_unlink (const TCHAR* path);								 
FRESULT f_rename (const TCHAR* path_old, const TCHAR* path_new);	 
FRESULT f_stat (const TCHAR* path, FILINFO* fno);					 
FRESULT f_chmod (const TCHAR* path, BYTE attr, BYTE mask);			 
FRESULT f_utime (const TCHAR* path, const FILINFO* fno);			 
FRESULT f_chdir (const TCHAR* path);								 
FRESULT f_chdrive (const TCHAR* path);								 
FRESULT f_getcwd (TCHAR* buff, UINT len);							 
FRESULT f_getfree (const TCHAR* path, DWORD* nclst, FATFS** fatfs);	 
FRESULT f_getlabel (const TCHAR* path, TCHAR* label, DWORD* vsn);	 
FRESULT f_setlabel (const TCHAR* label);							 
FRESULT f_forward (FIL* fp, UINT(*func)(const BYTE*,UINT), UINT btf, UINT* bf);	 
FRESULT f_expand (FIL* fp, FSIZE_t fsz, BYTE opt);					 
FRESULT f_mount (FATFS* fs, const TCHAR* path, BYTE opt);			 
FRESULT f_mkfs (const TCHAR* path, const MKFS_PARM* opt, void* work, UINT len);	 
FRESULT f_fdisk (BYTE pdrv, const LBA_t ptbl[], void* work);		 
FRESULT f_setcp (WORD cp);											 
int f_putc (TCHAR c, FIL* fp);										 
int f_puts (const TCHAR* str, FIL* cp);								 
int f_printf (FIL* fp, const TCHAR* str, ...);						 
TCHAR* f_gets (TCHAR* buff, int len, FIL* fp);						 
FRESULT dir_sdi (DIR *p,DWORD ofs);					


#line 349 "..\\FATFS\\source\\ff.h"








 
 

 

DWORD get_fattime (void);


 

WCHAR ff_oem2uni (WCHAR oem, WORD cp);	 
WCHAR ff_uni2oem (DWORD uni, WORD cp);	 
DWORD ff_wtoupper (DWORD uni);			 


void* ff_memalloc (UINT msize);			 
void ff_memfree (void* mblock);			 


 
#line 383 "..\\FATFS\\source\\ff.h"




 
 


 
#line 399 "..\\FATFS\\source\\ff.h"

 


 






 





 











#line 65 "..\\USER\\main.h"
#line 1 "..\\FATFS\\exfuns\\exfuns.h"
#line 4 "..\\FATFS\\exfuns\\exfuns.h"
#line 5 "..\\FATFS\\exfuns\\exfuns.h"

















extern FATFS *fs[2];  
extern FIL *file;	 
extern FIL *ftemp;	 
extern UINT br,bw;
extern FILINFO fileinfo;
extern DIR dir;
extern u8 *fatbuf;
























 


 
u8 exfuns_init(void);							
u8 f_typetell(u8 *fname);						
u8 exf_getfree(u8 *drv,u32 *total,u32 *free);	
u32 exf_fdsize(u8 *fdname);						
u8* exf_get_src_dname(u8* dpfn);																		   
u8 exf_copy(u8(*fcpymsg)(u8*pname,u8 pct,u8 mode),u8 *psrc,u8 *pdst,u32 totsize,u32 cpdsize,u8 fwmode);	   
u8 exf_fdcopy(u8(*fcpymsg)(u8*pname,u8 pct,u8 mode),u8 *psrc,u8 *pdst,u32 *totsize,u32 *cpdsize,u8 fwmode);



#line 66 "..\\USER\\main.h"
#line 1 "..\\CHINESE\\fontupd.h"
#line 4 "..\\CHINESE\\fontupd.h"















extern u32 FONTINFOADDR;	


typedef struct __attribute__ ((packed))
{
	u8 fontok;				
	u32 ugbkaddr; 			
	u32 ugbksize;			
	u32 f12addr;			
	u32 gbk12size;			
	u32 f16addr;			
	u32 gbk16size;			
	u32 f24addr;			
	u32 gkb24size;			
}_font_info; 


extern _font_info ftinfo;	

u32 fupd_prog(u16 x,u16 y,u8 size,u32 fsize,u32 pos);	
u8 updata_fontx(u16 x,u16 y,u8 size,u8 *fxpath,u8 fx);	
u8 update_font(u16 x,u16 y,u8 size,u8* src);			
u8 font_init(void);										






















#line 67 "..\\USER\\main.h"
#line 1 "..\\CHINESE\\text.h"
#line 4 "..\\CHINESE\\text.h"
#line 5 "..\\CHINESE\\text.h"












 					     
void Get_HzMat(unsigned char *code,unsigned char *mat,u8 size);			
void Show_Font(u16 x,u16 y,u8 *font,u8 size,u8 mode);					
void Show_Str(u16 x,u16 y,u16 width,u16 height,u8*str,u8 size,u8 mode);	
void Show_Str_Mid(u16 x,u16 y,u8*str,u8 size,u8 len);
#line 68 "..\\USER\\main.h"
#line 1 "..\\HARDWARE\\LCD\\lcd.h"
#line 4 "..\\HARDWARE\\LCD\\lcd.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
 
 
 




 
 



 






   














  


 








#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


  



    typedef unsigned int size_t;    
#line 70 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"






    



    typedef unsigned short wchar_t;  
#line 91 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { long long quot, rem; } lldiv_t;
    


#line 112 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   



 

   




 
#line 131 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   


 
extern __declspec(__nothrow) int __aeabi_MB_CUR_MAX(void);

   




 

   




 




extern __declspec(__nothrow) double atof(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int atoi(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) long int atol(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) long long atoll(const char *  ) __attribute__((__nonnull__(1)));
   



 


extern __declspec(__nothrow) double strtod(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

















 

extern __declspec(__nothrow) float strtof(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) long double strtold(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

 

extern __declspec(__nothrow) long int strtol(const char * __restrict  ,
                        char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



























 
extern __declspec(__nothrow) unsigned long int strtoul(const char * __restrict  ,
                                       char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   


























 

 
extern __declspec(__nothrow) long long strtoll(const char * __restrict  ,
                                  char ** __restrict  , int  )
                          __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) unsigned long long strtoull(const char * __restrict  ,
                                            char ** __restrict  , int  )
                                   __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) int rand(void);
   







 
extern __declspec(__nothrow) void srand(unsigned int  );
   






 

struct _rand_state { int __x[57]; };
extern __declspec(__nothrow) int _rand_r(struct _rand_state *);
extern __declspec(__nothrow) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __declspec(__nothrow) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __declspec(__nothrow) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);
   


 

extern __declspec(__nothrow) void *calloc(size_t  , size_t  );
   



 
extern __declspec(__nothrow) void free(void *  );
   





 
extern __declspec(__nothrow) void *malloc(size_t  );
   



 
extern __declspec(__nothrow) void *realloc(void *  , size_t  );
   













 

extern __declspec(__nothrow) int posix_memalign(void **  , size_t  , size_t  );
   









 

typedef int (*__heapprt)(void *, char const *, ...);
extern __declspec(__nothrow) void __heapstats(int (*  )(void *  ,
                                           char const *  , ...),
                        void *  ) __attribute__((__nonnull__(1)));
   










 
extern __declspec(__nothrow) int __heapvalid(int (*  )(void *  ,
                                           char const *  , ...),
                       void *  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
   







 

extern __declspec(__nothrow) int atexit(void (*  )(void)) __attribute__((__nonnull__(1)));
   




 
#line 436 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 
#line 524 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 

#line 553 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

extern __declspec(__nothrow) __attribute__((const)) int abs(int  );
   



 

extern __declspec(__nothrow) __attribute__((const)) div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __attribute__((const)) long int labs(long int  );
   



 




extern __declspec(__nothrow) __attribute__((const)) ldiv_t ldiv(long int  , long int  );
   











 







extern __declspec(__nothrow) __attribute__((const)) long long llabs(long long  );
   



 




extern __declspec(__nothrow) __attribute__((const)) lldiv_t lldiv(long long  , long long  );
   











 
#line 634 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"




 
typedef struct __sdiv32by16 { int quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned int quot, rem; } __udiv32by16;
    
typedef struct __sdiv64by32 { int rem, quot; } __sdiv64by32;

__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv32by16 __rt_sdiv32by16(
     int  ,
     short int  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __udiv32by16 __rt_udiv32by16(
     unsigned int  ,
     unsigned short  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv64by32 __rt_sdiv64by32(
     int  , unsigned int  ,
     int  );
   

 




 
extern __declspec(__nothrow) unsigned int __fp_status(unsigned int  , unsigned int  );
   







 























 
extern __declspec(__nothrow) int mblen(const char *  , size_t  );
   












 
extern __declspec(__nothrow) int mbtowc(wchar_t * __restrict  ,
                   const char * __restrict  , size_t  );
   















 
extern __declspec(__nothrow) int wctomb(char *  , wchar_t  );
   













 





 
extern __declspec(__nothrow) size_t mbstowcs(wchar_t * __restrict  ,
                      const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 
extern __declspec(__nothrow) size_t wcstombs(char * __restrict  ,
                      const wchar_t * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 

extern __declspec(__nothrow) void __use_realtime_heap(void);
extern __declspec(__nothrow) void __use_realtime_division(void);
extern __declspec(__nothrow) void __use_two_region_memory(void);
extern __declspec(__nothrow) void __use_no_heap(void);
extern __declspec(__nothrow) void __use_no_heap_region(void);

extern __declspec(__nothrow) char const *__C_library_version_string(void);
extern __declspec(__nothrow) int __C_library_version_number(void);











#line 892 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"





 
#line 5 "..\\HARDWARE\\LCD\\lcd.h"














extern SRAM_HandleTypeDef TFTSRAM_Handler;    


typedef struct  
{		 	 
	u16 width;			
	u16 height;			
	u16 id;				
	u8  dir;			
	u16	wramcmd;		
	u16 setxcmd;		
	u16 setycmd;		
}_lcd_dev; 	  


extern _lcd_dev lcddev;	

extern u32  POINT_COLOR;
extern u32  BACK_COLOR; 






typedef struct
{
	vu16 LCD_REG;
	vu16 LCD_RAM;
} LCD_TypeDef;




















#line 83 "..\\HARDWARE\\LCD\\lcd.h"






 






	    															  
void LCD_Init(void);													   	
void LCD_DisplayOn(void);													
void LCD_DisplayOff(void);													
void LCD_Clear(u32 Color);	 												
void LCD_SetCursor(u16 Xpos, u16 Ypos);										
void LCD_DrawPoint(u16 x,u16 y);											
void LCD_Fast_DrawPoint(u16 x,u16 y,u32 color);								
u32  LCD_ReadPoint(u16 x,u16 y); 											
void LCD_Draw_Circle(u16 x0,u16 y0,u8 r);						 			
void LCD_DrawLine(u16 x1, u16 y1, u16 x2, u16 y2);							
void LCD_DrawRectangle(u16 x1, u16 y1, u16 x2, u16 y2);		   				
void LCD_Fill(u16 sx,u16 sy,u16 ex,u16 ey,u32 color);		   				
void LCD_Color_Fill(u16 sx,u16 sy,u16 ex,u16 ey,u16 *color);				
void LCD_ShowChar(u16 x,u16 y,u8 num,u8 size,u8 mode);						
void LCD_ShowNum(u16 x,u16 y,u32 num,u8 len,u8 size);  						
void LCD_ShowxNum(u16 x,u16 y,u32 num,u8 len,u8 size,u8 mode);				
void LCD_ShowString(u16 x,u16 y,u16 width,u16 height,u8 size,u8 *p);		

void LCD_WriteReg(u16 LCD_Reg, u16 LCD_RegValue);
u16 LCD_ReadReg(u16 LCD_Reg);
void LCD_WriteRAM_Prepare(void);
void LCD_WriteRAM(u16 RGB_Code);
void LCD_SSD_BackLightSet(u8 pwm);							
void LCD_Scan_Dir(u8 dir);									
void LCD_Display_Dir(u8 dir);								
void LCD_Set_Window(u16 sx,u16 sy,u16 width,u16 height);	


















	 
	 



#line 69 "..\\USER\\main.h"

#line 71 "..\\USER\\main.h"

#line 1 "..\\FreeRTOS\\include\\FreeRTOS.h"
























 






 
#line 34 "..\\FreeRTOS\\include\\FreeRTOS.h"













 
#line 49 "..\\FreeRTOS\\include\\FreeRTOS.h"

 



 

 
#line 1 "..\\FreeRTOS\\include\\FreeRTOSConfig.h"

























 















 

 
#line 47 "..\\FreeRTOS\\include\\FreeRTOSConfig.h"
	extern uint32_t SystemCoreClock;


extern uint32_t FreeRTOSRunTimeTicks; 

#line 71 "..\\FreeRTOS\\include\\FreeRTOSConfig.h"

 




 



 



 






 
#line 100 "..\\FreeRTOS\\include\\FreeRTOSConfig.h"

 

	 






 





 
 



 


 

	

 

	

 






#line 58 "..\\FreeRTOS\\include\\FreeRTOS.h"

 
#line 1 "..\\FreeRTOS\\include\\projdefs.h"
























 







 
typedef void (* TaskFunction_t)( void * );



 












 




 











 
#line 109 "..\\FreeRTOS\\include\\projdefs.h"


 



 




#line 61 "..\\FreeRTOS\\include\\FreeRTOS.h"

 
#line 1 "..\\FreeRTOS\\include\\portable.h"
























 



 













 
#line 1 "..\\FreeRTOS\\include\\deprecated_definitions.h"
























 












 











































































































































































#line 218 "..\\FreeRTOS\\include\\deprecated_definitions.h"

#line 227 "..\\FreeRTOS\\include\\deprecated_definitions.h"







#line 241 "..\\FreeRTOS\\include\\deprecated_definitions.h"






































#line 45 "..\\FreeRTOS\\include\\portable.h"




 
#line 1 "..\\FreeRTOS\\portable\\RVDS\\ARM_CM4F\\portmacro.h"

























 

















 

 
#line 54 "..\\FreeRTOS\\portable\\RVDS\\ARM_CM4F\\portmacro.h"

typedef uint32_t StackType_t;
typedef long BaseType_t;
typedef unsigned long UBaseType_t;





	typedef uint32_t TickType_t;


	
 


 

 



 

 
#line 89 "..\\FreeRTOS\\portable\\RVDS\\ARM_CM4F\\portmacro.h"





 

 
extern void vPortEnterCritical( void );
extern void vPortExitCritical( void );
#line 105 "..\\FreeRTOS\\portable\\RVDS\\ARM_CM4F\\portmacro.h"

 



 


 

 

	extern void vPortSuppressTicksAndSleep( TickType_t xExpectedIdleTime );


 

 






	 
	__attribute__( ( always_inline ) ) static inline uint8_t ucPortCountLeadingZeros( uint32_t ulBitmap )
	{
	uint8_t ucReturn;

		__asm volatile ( "clz %0, %1" : "=r" ( ucReturn ) : "r" ( ulBitmap ) : "memory" );
		return ucReturn;
	}

	 




	 



	 





 


	void vPortValidateInterruptPriority( void );



 








inline __attribute__(( always_inline)) static BaseType_t xPortIsInsideInterrupt( void )
{
uint32_t ulCurrentInterrupt;
BaseType_t xReturn;

	 
	__asm volatile( "mrs %0, ipsr" : "=r"( ulCurrentInterrupt ) :: "memory" );

	if( ulCurrentInterrupt == 0 )
	{
		xReturn = ( ( BaseType_t ) 0 );
	}
	else
	{
		xReturn = ( ( BaseType_t ) 1 );
	}

	return xReturn;
}

 

inline __attribute__(( always_inline)) static void vPortRaiseBASEPRI( void )
{
uint32_t ulNewBASEPRI;

	__asm volatile
	(
		"	mov %0, %1												\n"			"	msr basepri, %0											\n" 		"	isb														\n" 		"	dsb														\n" 		:"=r" (ulNewBASEPRI) : "i" ( ( 6 << (8 - 4U) ) ) : "memory"




	);
}

 

inline __attribute__(( always_inline)) static uint32_t ulPortRaiseBASEPRI( void )
{
uint32_t ulOriginalBASEPRI, ulNewBASEPRI;

	__asm volatile
	(
		"	mrs %0, basepri											\n" 		"	mov %1, %2												\n"			"	msr basepri, %1											\n" 		"	isb														\n" 		"	dsb														\n" 		:"=r" (ulOriginalBASEPRI), "=r" (ulNewBASEPRI) : "i" ( ( 6 << (8 - 4U) ) ) : "memory"





	);

	
 
	return ulOriginalBASEPRI;
}
 

inline __attribute__(( always_inline)) static void vPortSetBASEPRI( uint32_t ulNewMaskValue )
{
	__asm volatile
	(
		"	msr basepri, %0	" :: "r" ( ulNewMaskValue ) : "memory"
	);
}
 









#line 52 "..\\FreeRTOS\\include\\portable.h"










































 



 

#line 1 "..\\FreeRTOS\\include\\mpu_wrappers.h"
























 





 
#line 178 "..\\FreeRTOS\\include\\mpu_wrappers.h"









#line 101 "..\\FreeRTOS\\include\\portable.h"






 
#line 128 "..\\FreeRTOS\\include\\portable.h"
        StackType_t * pxPortInitialiseStack( StackType_t * pxTopOfStack,
                                             TaskFunction_t pxCode,
                                             void * pvParameters ) ;




 
typedef struct HeapRegion
{
    uint8_t * pucStartAddress;
    size_t xSizeInBytes;
} HeapRegion_t;

 
typedef struct xHeapStats
{
    size_t xAvailableHeapSpaceInBytes;           
    size_t xSizeOfLargestFreeBlockInBytes;       
    size_t xSizeOfSmallestFreeBlockInBytes;      
    size_t xNumberOfFreeBlocks;                  
    size_t xMinimumEverFreeBytesRemaining;       
    size_t xNumberOfSuccessfulAllocations;       
    size_t xNumberOfSuccessfulFrees;             
} HeapStats_t;











 
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;




 
void vPortGetHeapStats( HeapStats_t * pxHeapStats );



 
void * pvPortMalloc( size_t xSize ) ;
void vPortFree( void * pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;




 
BaseType_t xPortStartScheduler( void ) ;





 
void vPortEndScheduler( void ) ;







 
#line 209 "..\\FreeRTOS\\include\\portable.h"

 



 

#line 64 "..\\FreeRTOS\\include\\FreeRTOS.h"

 




 








 































































































































































#line 245 "..\\FreeRTOS\\include\\FreeRTOS.h"





 
#line 257 "..\\FreeRTOS\\include\\FreeRTOS.h"









 


















































 



 






 






 






 




     




     






 









 








 








 








 








 















 
































































































































































































































































































































































































































































     











 







 



 


















#line 923 "..\\FreeRTOS\\include\\FreeRTOS.h"


 







 















 






 






 



#line 988 "..\\FreeRTOS\\include\\FreeRTOS.h"


 






 










 





 





 





 





 













































 













 
struct xSTATIC_LIST_ITEM
{



    TickType_t xDummy2;
    void * pvDummy3[ 4 ];



};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;

 
struct xSTATIC_MINI_LIST_ITEM
{



    TickType_t xDummy2;
    void * pvDummy3[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;

 
typedef struct xSTATIC_LIST
{



    UBaseType_t uxDummy2;
    void * pvDummy3;
    StaticMiniListItem_t xDummy4;



} StaticList_t;













 
typedef struct xSTATIC_TCB
{
    void * pxDummy1;



    StaticListItem_t xDummy3[ 2 ];
    UBaseType_t uxDummy5;
    void * pxDummy6;
    uint8_t ucDummy7[ ( 15 ) ];
#line 1161 "..\\FreeRTOS\\include\\FreeRTOS.h"
        UBaseType_t uxDummy10[ 2 ];


        UBaseType_t uxDummy12[ 2 ];
#line 1173 "..\\FreeRTOS\\include\\FreeRTOS.h"
        uint32_t ulDummy16;





        uint32_t ulDummy18[ 1 ];
        uint8_t ucDummy19[ 1 ];





#line 1192 "..\\FreeRTOS\\include\\FreeRTOS.h"
} StaticTask_t;














 
typedef struct xSTATIC_QUEUE
{
    void * pvDummy1[ 3 ];

    union
    {
        void * pvDummy2;
        UBaseType_t uxDummy2;
    } u;

    StaticList_t xDummy3[ 2 ];
    UBaseType_t uxDummy4[ 3 ];
    uint8_t ucDummy5[ 2 ];










        UBaseType_t uxDummy8;
        uint8_t ucDummy9;

} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;














 
typedef struct xSTATIC_EVENT_GROUP
{
    TickType_t xDummy1;
    StaticList_t xDummy2;


        UBaseType_t uxDummy3;





} StaticEventGroup_t;














 
typedef struct xSTATIC_TIMER
{
    void * pvDummy1;
    StaticListItem_t xDummy2;
    TickType_t xDummy3;
    void * pvDummy5;
    TaskFunction_t pvDummy6;

        UBaseType_t uxDummy7;

    uint8_t ucDummy8;
} StaticTimer_t;














 
typedef struct xSTATIC_STREAM_BUFFER
{
    size_t uxDummy1[ 4 ];
    void * pvDummy2[ 3 ];
    uint8_t ucDummy3;

        UBaseType_t uxDummy4;

} StaticStreamBuffer_t;

 
typedef StaticStreamBuffer_t StaticMessageBuffer_t;

 



 

#line 73 "..\\USER\\main.h"
#line 1 "..\\FreeRTOS\\include\\task.h"
























 









#line 1 "..\\FreeRTOS\\include\\list.h"
























 



























 




































 




 



 





 

     
#line 136 "..\\FreeRTOS\\include\\list.h"




 
struct xLIST;
struct xLIST_ITEM
{
                    
     TickType_t xItemValue;               
    struct xLIST_ITEM *  pxNext;          
    struct xLIST_ITEM *  pxPrevious;      
    void * pvOwner;                                          
    struct xLIST *  pvContainer;          
                   
};
typedef struct xLIST_ITEM ListItem_t;                        

struct xMINI_LIST_ITEM
{
          
     TickType_t xItemValue;
    struct xLIST_ITEM *  pxNext;
    struct xLIST_ITEM *  pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;



 
typedef struct xLIST
{
               
    volatile UBaseType_t uxNumberOfItems;
    ListItem_t *  pxIndex;      
    MiniListItem_t xListEnd;                       
              
} List_t;







 








 








 









 








 







 







 







 








 




 





















 
#line 291 "..\\FreeRTOS\\include\\list.h"

















 










 







 






 











 
void vListInitialise( List_t * const pxList ) ;









 
void vListInitialiseItem( ListItem_t * const pxItem ) ;











 
void vListInsert( List_t * const pxList,
                  ListItem_t * const pxNewListItem ) ;



















 
void vListInsertEnd( List_t * const pxList,
                     ListItem_t * const pxNewListItem ) ;













 
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;

 



 

#line 36 "..\\FreeRTOS\\include\\task.h"

 



 



 







 










 











 
struct tskTaskControlBlock;      
typedef struct tskTaskControlBlock * TaskHandle_t;




 
typedef BaseType_t (* TaskHookFunction_t)( void * );

 
typedef enum
{
    eRunning = 0,      
    eReady,            
    eBlocked,          
    eSuspended,        
    eDeleted,          
    eInvalid           
} eTaskState;

 
typedef enum
{
    eNoAction = 0,                 
    eSetBits,                      
    eIncrement,                    
    eSetValueWithOverwrite,        
    eSetValueWithoutOverwrite      
} eNotifyAction;



 
typedef struct xTIME_OUT
{
    BaseType_t xOverflowCount;
    TickType_t xTimeOnEntering;
} TimeOut_t;



 
typedef struct xMEMORY_REGION
{
    void * pvBaseAddress;
    uint32_t ulLengthInBytes;
    uint32_t ulParameters;
} MemoryRegion_t;



 
typedef struct xTASK_PARAMETERS
{
    TaskFunction_t pvTaskCode;
    const char * const pcName;      
    uint16_t usStackDepth;
    void * pvParameters;
    UBaseType_t uxPriority;
    StackType_t * puxStackBuffer;
    MemoryRegion_t xRegions[ 1 ];



} TaskParameters_t;


 
typedef struct xTASK_STATUS
{
    TaskHandle_t xHandle;                             
    const char * pcTaskName;                            
    UBaseType_t xTaskNumber;                          
    eTaskState eCurrentState;                         
    UBaseType_t uxCurrentPriority;                    
    UBaseType_t uxBasePriority;                       
    uint32_t ulRunTimeCounter;                        
    StackType_t * pxStackBase;                        
    uint16_t usStackHighWaterMark;      
} TaskStatus_t;

 
typedef enum
{
    eAbortSleep = 0,            
    eStandardSleep,             
    eNoTasksWaitingTimeout      
} eSleepModeStatus;





 









 













 














 










 









 




 







 






























































































 

    BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
                            const char * const pcName,      
                            const uint16_t usStackDepth,
                            void * const pvParameters,
                            UBaseType_t uxPriority,
                            TaskHandle_t * const pxCreatedTask ) ;













































































































 
#line 465 "..\\FreeRTOS\\include\\task.h"









































































 

























































































 



















































 
void vTaskAllocateMPURegions( TaskHandle_t xTask,
                              const MemoryRegion_t * const pxRegions ) ;









































 
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;



 
















































 
void vTaskDelay( const TickType_t xTicksToDelay ) ;



























































 
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime,
                      const TickType_t xTimeIncrement ) ;






























 
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;















































 
UBaseType_t uxTaskPriorityGet( const TaskHandle_t xTask ) ;








 
UBaseType_t uxTaskPriorityGetFromISR( const TaskHandle_t xTask ) ;


















 
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
























































 
void vTaskGetInfo( TaskHandle_t xTask,
                   TaskStatus_t * pxTaskStatus,
                   BaseType_t xGetFreeStackSpace,
                   eTaskState eState ) ;










































 
void vTaskPrioritySet( TaskHandle_t xTask,
                       UBaseType_t uxNewPriority ) ;



















































 
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;

















































 
void vTaskResume( TaskHandle_t xTaskToResume ) ;





























 
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;



 





























 
void vTaskStartScheduler( void ) ;
























































 
void vTaskEndScheduler( void ) ;



















































 
void vTaskSuspendAll( void ) ;






















































 
BaseType_t xTaskResumeAll( void ) ;



 









 
TickType_t xTaskGetTickCount( void ) ;














 
TickType_t xTaskGetTickCountFromISR( void ) ;












 
UBaseType_t uxTaskGetNumberOfTasks( void ) ;











 
char * pcTaskGetName( TaskHandle_t xTaskToQuery ) ;      














 
TaskHandle_t xTaskGetHandle( const char * pcNameToQuery ) ;      

























 
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;

























 
uint16_t uxTaskGetStackHighWaterMark2( TaskHandle_t xTask ) ;






 
#line 1571 "..\\FreeRTOS\\include\\task.h"

#line 1586 "..\\FreeRTOS\\include\\task.h"

#line 1604 "..\\FreeRTOS\\include\\task.h"
 
#line 1615 "..\\FreeRTOS\\include\\task.h"

#line 1632 "..\\FreeRTOS\\include\\task.h"













 
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask,
                                         void * pvParameter ) ;







 
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;

































































































 
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray,
                                  const UBaseType_t uxArraySize,
                                  uint32_t * const pulTotalRunTime ) ;













































 
void vTaskList( char * pcWriteBuffer ) ;      




















































 
void vTaskGetRunTimeStats( char * pcWriteBuffer ) ;      




























 
uint32_t ulTaskGetIdleRunTimeCounter( void ) ;











































































































 
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify,
                               UBaseType_t uxIndexToNotify,
                               uint32_t ulValue,
                               eNotifyAction eAction,
                               uint32_t * pulPreviousNotificationValue ) ;


























 



















































































































 
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify,
                                      UBaseType_t uxIndexToNotify,
                                      uint32_t ulValue,
                                      eNotifyAction eAction,
                                      uint32_t * pulPreviousNotificationValue,
                                      BaseType_t * pxHigherPriorityTaskWoken ) ;


























 












































































































 
BaseType_t xTaskGenericNotifyWait( UBaseType_t uxIndexToWaitOn,
                                   uint32_t ulBitsToClearOnEntry,
                                   uint32_t ulBitsToClearOnExit,
                                   uint32_t * pulNotificationValue,
                                   TickType_t xTicksToWait ) ;










































































 

















































































 
void vTaskGenericNotifyGiveFromISR( TaskHandle_t xTaskToNotify,
                                    UBaseType_t uxIndexToNotify,
                                    BaseType_t * pxHigherPriorityTaskWoken ) ;






































































































 
uint32_t ulTaskGenericNotifyTake( UBaseType_t uxIndexToWaitOn,
                                  BaseType_t xClearCountOnExit,
                                  TickType_t xTicksToWait ) ;





























































 
BaseType_t xTaskGenericNotifyStateClear( TaskHandle_t xTask,
                                         UBaseType_t uxIndexToClear ) ;






























































 
uint32_t ulTaskGenericNotifyValueClear( TaskHandle_t xTask,
                                        UBaseType_t uxIndexToClear,
                                        uint32_t ulBitsToClear ) ;


















 
void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;



















































































 
BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut,
                                 TickType_t * const pxTicksToWait ) ;


























 
BaseType_t xTaskCatchUpTicks( TickType_t xTicksToCatchUp ) ;




 















 
BaseType_t xTaskIncrementTick( void ) ;































 
void vTaskPlaceOnEventList( List_t * const pxEventList,
                            const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList,
                                     const TickType_t xItemValue,
                                     const TickType_t xTicksToWait ) ;











 
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList,
                                      TickType_t xTicksToWait,
                                      const BaseType_t xWaitIndefinitely ) ;
























 
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem,
                                        const TickType_t xItemValue ) ;








 
 void vTaskSwitchContext( void ) ;




 
TickType_t uxTaskResetEventItemValue( void ) ;



 
TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;




 
void vTaskMissedYield( void ) ;




 
BaseType_t xTaskGetSchedulerState( void ) ;




 
BaseType_t xTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;




 
BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;








 
void vTaskPriorityDisinheritAfterTimeout( TaskHandle_t const pxMutexHolder,
                                          UBaseType_t uxHighestPriorityWaitingTask ) ;



 
UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;




 
void vTaskSetTaskNumber( TaskHandle_t xTask,
                         const UBaseType_t uxHandle ) ;








 
void vTaskStepTick( const TickType_t xTicksToJump ) ;














 
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;




 
TaskHandle_t pvTaskIncrementMutexHeldCount( void ) ;




 
void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut ) ;


 



 
#line 74 "..\\USER\\main.h"
#line 1 "..\\FreeRTOS\\include\\queue.h"
























 









 



 

#line 42 "..\\FreeRTOS\\include\\queue.h"





 
struct QueueDefinition;  
typedef struct QueueDefinition   * QueueHandle_t;





 
typedef struct QueueDefinition   * QueueSetHandle_t;





 
typedef struct QueueDefinition   * QueueSetMemberHandle_t;

 




 
#line 77 "..\\FreeRTOS\\include\\queue.h"




































































 





















































































 

















































































 


















































































 




















































































 



















































































 
























































































 
BaseType_t xQueueGenericSend( QueueHandle_t xQueue,
                              const void * const pvItemToQueue,
                              TickType_t xTicksToWait,
                              const BaseType_t xCopyPosition ) ;





























































































 
BaseType_t xQueuePeek( QueueHandle_t xQueue,
                       void * const pvBuffer,
                       TickType_t xTicksToWait ) ;
































 
BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue,
                              void * const pvBuffer ) ;


























































































 
BaseType_t xQueueReceive( QueueHandle_t xQueue,
                          void * const pvBuffer,
                          TickType_t xTicksToWait ) ;















 
UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue ) ;

















 
UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue ) ;














 
void vQueueDelete( QueueHandle_t xQueue ) ;




































































 







































































 























































































 










































































 















































































 
BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue,
                                     const void * const pvItemToQueue,
                                     BaseType_t * const pxHigherPriorityTaskWoken,
                                     const BaseType_t xCopyPosition ) ;
BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue,
                              BaseType_t * const pxHigherPriorityTaskWoken ) ;























































































 
BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue,
                                 void * const pvBuffer,
                                 BaseType_t * const pxHigherPriorityTaskWoken ) ;




 
BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue ) ;
BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue ) ;
UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue ) ;









 
BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue,
                                const void * pvItemToQueue,
                                BaseType_t xCoRoutinePreviouslyWoken );
BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue,
                                   void * pvBuffer,
                                   BaseType_t * pxTaskWoken );
BaseType_t xQueueCRSend( QueueHandle_t xQueue,
                         const void * pvItemToQueue,
                         TickType_t xTicksToWait );
BaseType_t xQueueCRReceive( QueueHandle_t xQueue,
                            void * pvBuffer,
                            TickType_t xTicksToWait );





 
QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType ) ;
QueueHandle_t xQueueCreateMutexStatic( const uint8_t ucQueueType,
                                       StaticQueue_t * pxStaticQueue ) ;
QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount,
                                             const UBaseType_t uxInitialCount ) ;
QueueHandle_t xQueueCreateCountingSemaphoreStatic( const UBaseType_t uxMaxCount,
                                                   const UBaseType_t uxInitialCount,
                                                   StaticQueue_t * pxStaticQueue ) ;
BaseType_t xQueueSemaphoreTake( QueueHandle_t xQueue,
                                TickType_t xTicksToWait ) ;
TaskHandle_t xQueueGetMutexHolder( QueueHandle_t xSemaphore ) ;
TaskHandle_t xQueueGetMutexHolderFromISR( QueueHandle_t xSemaphore ) ;




 
BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex,
                                     TickType_t xTicksToWait ) ;
BaseType_t xQueueGiveMutexRecursive( QueueHandle_t xMutex ) ;




 























 

    void vQueueAddToRegistry( QueueHandle_t xQueue,
                              const char * pcQueueName ) ;  











 

    void vQueueUnregisterQueue( QueueHandle_t xQueue ) ;












 

    const char * pcQueueGetName( QueueHandle_t xQueue ) ;  






 

    QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength,
                                       const UBaseType_t uxItemSize,
                                       const uint8_t ucQueueType ) ;






 
#line 1560 "..\\FreeRTOS\\include\\queue.h"
















































 
QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength ) ;






















 
BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore,
                           QueueSetHandle_t xQueueSet ) ;

















 
BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore,
                                QueueSetHandle_t xQueueSet ) ;


































 
QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet,
                                            const TickType_t xTicksToWait ) ;



 
QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet ) ;

 
void vQueueWaitForMessageRestricted( QueueHandle_t xQueue,
                                     TickType_t xTicksToWait,
                                     const BaseType_t xWaitIndefinitely ) ;
BaseType_t xQueueGenericReset( QueueHandle_t xQueue,
                               BaseType_t xNewQueue ) ;
void vQueueSetQueueNumber( QueueHandle_t xQueue,
                           UBaseType_t uxQueueNumber ) ;
UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue ) ;
uint8_t ucQueueGetQueueType( QueueHandle_t xQueue ) ;


 



 

#line 75 "..\\USER\\main.h"

#line 1 "..\\GUI\\lvgl/lvgl.h"



 
 










 







 

#line 1 "..\\GUI\\lvgl_src/lv_misc/lv_log.h"



 










 
#line 1 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"




 



 

#line 12 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1 "..\\GUI\\lv_conf.h"



 



 





 

#line 17 "..\\GUI\\lv_conf.h"



 

 








 



 




 


 


 



 




 








 




 
typedef int16_t lv_coord_t;



 


 

 
#line 99 "..\\GUI\\lv_conf.h"


 



 
#line 112 "..\\GUI\\lv_conf.h"



 


 

 


 


 



 



 



 


 




 

 



 
typedef void * lv_anim_user_data_t;



 





 



 


 


 


 


 


 


 


typedef void * lv_group_user_data_t;


 



 


 






 


 


 






 


 


 





 

 


 







 


 
typedef void * lv_img_decoder_user_data_t;



 

 


 


 


 


 






 



 



 







 



 




 


 






typedef void * lv_disp_drv_user_data_t;              
typedef void * lv_indev_drv_user_data_t;             



 

 
#line 330 "..\\GUI\\lv_conf.h"



 









 



 


 


 




 



 


 






 





 


 
#line 403 "..\\GUI\\lv_conf.h"

 






 







 




 




 


 





 



 
typedef void * lv_font_user_data_t;



 

 


 



 








 






 


#line 484 "..\\GUI\\lv_conf.h"



 





 


  



 



 



 


 





 
#line 526 "..\\GUI\\lv_conf.h"



 


 
#line 541 "..\\GUI\\lv_conf.h"



 

#line 557 "..\\GUI\\lv_conf.h"

 






 




 


 

 


 


 


 


 





 


 


 





 


 


 


 



 


 


 


 



 


 


 


 


 


 



 






 


 


 



 







 



 


 


 


 



 
#line 699 "..\\GUI\\lv_conf.h"

 


 


 



 


 


 


 






 







 


 



 


 



 




 







 



#line 25 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 

#line 31 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 

 
#line 51 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"






 
#line 65 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"


 
#line 75 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 
#line 86 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 95 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 104 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"


 
#line 114 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 
#line 125 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"







 
#line 154 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 



 


 

 
#line 232 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"


 
#line 242 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"


 
#line 275 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 


 

 
#line 291 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 300 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 309 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"


 
#line 319 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"


 
#line 329 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"


 
#line 339 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 348 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 

 
#line 362 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 



 
#line 376 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 
#line 388 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 397 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 406 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 415 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 424 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 433 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 442 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 453 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 469 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 478 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 








 




 




 
#line 509 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 518 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 527 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 543 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 

 
#line 556 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 565 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"






 
#line 579 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 



 

 
#line 594 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 603 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 612 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 621 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 








 
#line 639 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"


 
#line 649 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"


 
#line 659 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"






 
#line 673 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"


 
#line 683 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 


 
#line 713 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"




 

 
#line 753 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 









 
#line 775 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 784 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 793 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 802 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 
#line 813 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"


 
#line 823 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 832 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"





 





 


 
#line 994 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1024 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"


 
#line 1034 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"






 
#line 1048 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 
#line 1059 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 
#line 1070 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1080 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 
#line 1092 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 



 

 


 
#line 1110 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"


 
#line 1120 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"







 
#line 1135 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"





 
#line 1148 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

#line 1212 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 





 
#line 1229 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

  
#line 1238 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"


 
#line 1248 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"


 
#line 1258 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"


 
#line 1268 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1277 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"




 
#line 1302 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 
#line 1313 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1353 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 

#line 1386 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1395 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"





 
#line 1408 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 


 

 
#line 1424 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1433 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1442 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1451 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1469 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1478 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1487 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1505 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1514 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1523 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1533 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"
 
#line 1542 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1551 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1560 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1570 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"
 
#line 1579 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1588 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1598 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"
 
#line 1606 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1615 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1624 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1634 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1659 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1668 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1678 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"
 
#line 1687 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1697 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"





 
#line 1711 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1720 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1729 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1739 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"
 
#line 1748 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1780 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1790 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"
 
#line 1798 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1808 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1817 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1826 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1835 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1860 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1878 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1888 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"
 
#line 1897 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1907 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"
 
#line 1916 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

 
#line 1925 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 

#line 1939 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"



 
#line 1973 "..\\GUI\\lvgl_src/lv_misc/../lv_conf_internal.h"

#line 17 "..\\GUI\\lvgl_src/lv_misc/lv_log.h"
#line 18 "..\\GUI\\lvgl_src/lv_misc/lv_log.h"



 

 

#line 32 "..\\GUI\\lvgl_src/lv_misc/lv_log.h"

struct _silence_gcc_warning;
struct _silence_gcc_warning;
struct _silence_gcc_warning;
struct _silence_gcc_warning;
struct _silence_gcc_warning;
struct _silence_gcc_warning;

typedef int8_t lv_log_level_t;

#line 110 "..\\GUI\\lvgl_src/lv_misc/lv_log.h"

 
#line 119 "..\\GUI\\lvgl_src/lv_misc/lv_log.h"





#line 27 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_misc/lv_task.h"




 










 
#line 18 "..\\GUI\\lvgl_src/lv_misc/lv_task.h"

#line 20 "..\\GUI\\lvgl_src/lv_misc/lv_task.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 21 "..\\GUI\\lvgl_src/lv_misc/lv_task.h"
#line 1 "..\\GUI\\lvgl_src/lv_misc/lv_mem.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_misc/lv_mem.h"

#line 19 "..\\GUI\\lvgl_src/lv_misc/lv_mem.h"
#line 20 "..\\GUI\\lvgl_src/lv_misc/lv_mem.h"
#line 21 "..\\GUI\\lvgl_src/lv_misc/lv_mem.h"
#line 1 "..\\GUI\\lvgl_src/lv_misc/lv_types.h"



 










 



 

#line 23 "..\\GUI\\lvgl_src/lv_misc/lv_types.h"




#line 38 "..\\GUI\\lvgl_src/lv_misc/lv_types.h"




 



 
enum {
    LV_RES_INV = 0, 
 
    LV_RES_OK,       
};
typedef uint8_t lv_res_t;





typedef uintptr_t lv_uintptr_t;

#line 70 "..\\GUI\\lvgl_src/lv_misc/lv_types.h"




 



 









#line 22 "..\\GUI\\lvgl_src/lv_misc/lv_mem.h"







 







 



 
typedef struct {
    uint32_t total_size;  
    uint32_t free_cnt;
    uint32_t free_size;  
    uint32_t free_biggest_size;
    uint32_t used_cnt;
    uint32_t max_used;  
    uint8_t used_pct;  
    uint8_t frag_pct;  
} lv_mem_monitor_t;

typedef struct {
    void * p;
    uint16_t size;
    uint8_t used    : 1;
} lv_mem_buf_t;

typedef lv_mem_buf_t lv_mem_buf_arr_t[16];
extern lv_mem_buf_arr_t _lv_mem_buf;



 



 
void _lv_mem_init(void);




 
void _lv_mem_deinit(void);





 
void * lv_mem_alloc(size_t size);




 
void lv_mem_free(const void * data);







 
void * lv_mem_realloc(void * data_p, size_t new_size);



 
void lv_mem_defrag(void);




 
lv_res_t lv_mem_test(void);





 
void lv_mem_monitor(lv_mem_monitor_t * mon_p);





 
uint32_t _lv_mem_get_size(const void * data);




 
void * _lv_mem_buf_get(uint32_t size);




 
void _lv_mem_buf_release(void * p);



 
void _lv_mem_buf_free_all(void);




#line 200 "..\\GUI\\lvgl_src/lv_misc/lv_mem.h"





 
 void * _lv_memcpy(void * dst, const void * src, size_t len);






 
 static inline void * _lv_memcpy_small(void * dst, const void * src, size_t len)
{
    uint8_t * d8 = (uint8_t *)dst;
    const uint8_t * s8 = (const uint8_t *)src;

    while(len) {
        *d8 = *s8;
        d8++;
        s8++;
        len--;
    }

    return dst;
}






 
 void _lv_memset(void * dst, uint8_t v, size_t len);





 
 void _lv_memset_00(void * dst, size_t len);





 
 void _lv_memset_ff(void * dst, size_t len);








 





#line 22 "..\\GUI\\lvgl_src/lv_misc/lv_task.h"
#line 1 "..\\GUI\\lvgl_src/lv_misc/lv_ll.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_misc/lv_ll.h"
#line 18 "..\\GUI\\lvgl_src/lv_misc/lv_ll.h"
#line 19 "..\\GUI\\lvgl_src/lv_misc/lv_ll.h"
#line 20 "..\\GUI\\lvgl_src/lv_misc/lv_ll.h"



 



 

 
typedef uint8_t lv_ll_node_t;

 
typedef struct {
    uint32_t n_size;
    lv_ll_node_t * head;
    lv_ll_node_t * tail;
} lv_ll_t;



 





 
void _lv_ll_init(lv_ll_t * ll_p, uint32_t node_size);





 
void * _lv_ll_ins_head(lv_ll_t * ll_p);






 
void * _lv_ll_ins_prev(lv_ll_t * ll_p, void * n_act);





 
void * _lv_ll_ins_tail(lv_ll_t * ll_p);






 
void _lv_ll_remove(lv_ll_t * ll_p, void * node_p);




 
void _lv_ll_clear(lv_ll_t * ll_p);








 
void _lv_ll_chg_list(lv_ll_t * ll_ori_p, lv_ll_t * ll_new_p, void * node, _Bool head);





 
void * _lv_ll_get_head(const lv_ll_t * ll_p);





 
void * _lv_ll_get_tail(const lv_ll_t * ll_p);






 
void * _lv_ll_get_next(const lv_ll_t * ll_p, const void * n_act);






 
void * _lv_ll_get_prev(const lv_ll_t * ll_p, const void * n_act);





 
uint32_t _lv_ll_get_len(const lv_ll_t * ll_p);







 






 
void _lv_ll_move_before(lv_ll_t * ll_p, void * n_act, void * n_after);





 
_Bool _lv_ll_is_empty(lv_ll_t * ll_p);



 









#line 23 "..\\GUI\\lvgl_src/lv_misc/lv_task.h"



 







 

struct _lv_task_t;



 
typedef void (*lv_task_cb_t)(struct _lv_task_t *);



 
enum {
    LV_TASK_PRIO_OFF = 0,
    LV_TASK_PRIO_LOWEST,
    LV_TASK_PRIO_LOW,
    LV_TASK_PRIO_MID,
    LV_TASK_PRIO_HIGH,
    LV_TASK_PRIO_HIGHEST,
    _LV_TASK_PRIO_NUM,
};
typedef uint8_t lv_task_prio_t;



 
typedef struct _lv_task_t {
    uint32_t period;  
    uint32_t last_run;  
    lv_task_cb_t task_cb;  

    void * user_data;  

    int32_t repeat_count;  
    uint8_t prio : 3;  
} lv_task_t;



 



 
void _lv_task_core_init(void);






 
 uint32_t lv_task_handler(void);







 
lv_task_t * lv_task_create_basic(void);










 
lv_task_t * lv_task_create(lv_task_cb_t task_xcb, uint32_t period, lv_task_prio_t prio, void * user_data);




 
void lv_task_del(lv_task_t * task);





 
void lv_task_set_cb(lv_task_t * task, lv_task_cb_t task_cb);





 
void lv_task_set_prio(lv_task_t * task, lv_task_prio_t prio);





 
void lv_task_set_period(lv_task_t * task, uint32_t period);




 
void lv_task_ready(lv_task_t * task);





 
void lv_task_set_repeat_count(lv_task_t * task, int32_t repeat_count);





 
void lv_task_reset(lv_task_t * task);




 
void lv_task_enable(_Bool en);




 
uint8_t lv_task_get_idle(void);





 
lv_task_t * lv_task_get_next(lv_task_t * task);



 





#line 28 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_misc/lv_math.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_misc/lv_math.h"
#line 18 "..\\GUI\\lvgl_src/lv_misc/lv_math.h"



 

























 

typedef struct {
    uint16_t i;
    uint16_t f;
} lv_sqrt_res_t;




 






 
 int16_t _lv_trigo_sin(int16_t angle);











 
int32_t _lv_bezier3(uint32_t t, int32_t u0, int32_t u1, int32_t u2, int32_t u3);






 
uint16_t _lv_atan2(int x, int y);













 
 void _lv_sqrt(uint32_t x, lv_sqrt_res_t * q, uint32_t mask);








 
int64_t _lv_pow(int64_t base, int8_t exp);









 
int16_t _lv_map(int32_t x, int32_t min_in, int32_t max_in, int32_t min, int32_t max);



 





#line 29 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_misc/lv_async.h"



 










 

#line 18 "..\\GUI\\lvgl_src/lv_misc/lv_async.h"
#line 19 "..\\GUI\\lvgl_src/lv_misc/lv_async.h"



 



 



 
typedef void (*lv_async_cb_t)(void *);

typedef struct _lv_async_info_t {
    lv_async_cb_t cb;
    void * user_data;
} lv_async_info_t;

struct _lv_obj_t;



 








 
lv_res_t lv_async_call(lv_async_cb_t async_xcb, void * user_data);



 





#line 30 "..\\GUI\\lvgl/lvgl.h"

#line 1 "..\\GUI\\lvgl_src/lv_hal/lv_hal.h"



 










 
#line 1 "..\\GUI\\lvgl_src/lv_hal/lv_hal_disp.h"





 










 
#line 19 "..\\GUI\\lvgl_src/lv_hal/lv_hal_disp.h"
#line 20 "..\\GUI\\lvgl_src/lv_hal/lv_hal_disp.h"
#line 1 "..\\GUI\\lvgl_src/lv_hal/lv_hal.h"



 

#line 21 "..\\GUI\\lvgl_src/lv_hal/lv_hal_disp.h"
#line 1 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"
#line 18 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"

 












#line 33 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"



 
#line 55 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"



 
enum {
    LV_OPA_TRANSP = 0,
    LV_OPA_0      = 0,
    LV_OPA_10     = 25,
    LV_OPA_20     = 51,
    LV_OPA_30     = 76,
    LV_OPA_40     = 102,
    LV_OPA_50     = 127,
    LV_OPA_60     = 153,
    LV_OPA_70     = 178,
    LV_OPA_80     = 204,
    LV_OPA_90     = 229,
    LV_OPA_100    = 255,
    LV_OPA_COVER  = 255,
};




#line 89 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"









 
#line 106 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"




 














































 
#line 189 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"

#line 198 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"

#line 210 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"



 

typedef union {
    union {
        uint8_t blue : 1;
        uint8_t green : 1;
        uint8_t red : 1;
    } ch;
    uint8_t full;
} lv_color1_t;

typedef union {
    struct {
        uint8_t blue : 2;
        uint8_t green : 3;
        uint8_t red : 3;
    } ch;
    uint8_t full;
} lv_color8_t;

typedef union {
    struct {

        uint16_t blue : 5;
        uint16_t green : 6;
        uint16_t red : 5;
#line 245 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"
    } ch;
    uint16_t full;
} lv_color16_t;

typedef union {
    struct {
        uint8_t blue;
        uint8_t green;
        uint8_t red;
        uint8_t alpha;
    } ch;
    uint32_t full;
} lv_color32_t;

#line 266 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"
typedef uint16_t lv_color_int_t;
typedef lv_color16_t lv_color_t;
#line 274 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"


typedef struct {
    uint16_t h;
    uint8_t s;
    uint8_t v;
} lv_color_hsv_t;


 
typedef uint8_t lv_opa_t;




 













 
static inline uint8_t lv_color_to1(lv_color_t color)
{
#line 316 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"
    if(((color). ch . red & 0x10) || ((color). ch . green & 0x20) || ((color). ch . blue & 0x10)) {
        return 1;
    }
    else {
        return 0;
    }
#line 330 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"
}

static inline uint8_t lv_color_to8(lv_color_t color)
{
#line 342 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"
    lv_color8_t ret;
    (ret). ch . red = (uint8_t)((color). ch . red >> 2) & 0x7U;;    
    (ret). ch . green = (uint8_t)((color). ch . green >> 3) & 0x7U;;  
    (ret). ch . blue = (uint8_t)((color). ch . blue >> 3) & 0x3U;;   
    return ret.full;
#line 354 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"
}

static inline uint16_t lv_color_to16(lv_color_t color)
{
#line 374 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"
    return color.full;
#line 387 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"
}

static inline uint32_t lv_color_to32(lv_color_t color)
{
#line 404 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"
    


























 

    lv_color32_t ret;
    (ret). ch . red = (uint32_t)((((color). ch . red * 263 + 7) >> 5) & 0xFF);;
    (ret). ch . green = (uint32_t)((((color). ch . green * 259 + 3) >> 6) & 0xFF);;
    (ret). ch . blue = (uint32_t)((((color). ch . blue * 263 + 7) >> 5) & 0xFF);;
    (ret). ch . alpha = (uint32_t)((0xFF) & 0xFF);;
    return ret.full;



}










 
 static inline lv_color_t lv_color_mix(lv_color_t c1, lv_color_t c2, uint8_t mix)
{
    lv_color_t ret;

     
    (ret). ch . red = (uint8_t)(((uint32_t)((uint32_t) ((uint16_t) (c1). ch . red * mix + (c2). ch . red * (255 - mix) + 128) * 0x8081) >> 0x17)) & 0x1FU;;

    (ret). ch . green = (uint8_t)(((uint32_t)((uint32_t) ((uint16_t) (c1). ch . green * mix + (c2). ch . green * (255 - mix) + 128) * 0x8081) >> 0x17)) & 0x3FU;;

    (ret). ch . blue = (uint8_t)(((uint32_t)((uint32_t) ((uint16_t) (c1). ch . blue * mix + (c2). ch . blue * (255 - mix) + 128) * 0x8081) >> 0x17)) & 0x1FU;;

    do {} while(0);





    return ret;
}

 static inline void lv_color_premult(lv_color_t c, uint8_t mix, uint16_t * out)
{

    out[0] = (uint16_t) (c). ch . red * mix;
    out[1] = (uint16_t) (c). ch . green * mix;
    out[2] = (uint16_t) (c). ch . blue * mix;
#line 487 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"

}










 
 static inline lv_color_t lv_color_mix_premult(uint16_t * premult_c1, lv_color_t c2, uint8_t mix)
{
    lv_color_t ret;

     
    (ret). ch . red = (uint8_t)(((uint32_t)((uint32_t) ((uint16_t) premult_c1[0] + (c2). ch . red * mix + 128) * 0x8081) >> 0x17)) & 0x1FU;;
    (ret). ch . green = (uint8_t)(((uint32_t)((uint32_t) ((uint16_t) premult_c1[1] + (c2). ch . green * mix + 128) * 0x8081) >> 0x17)) & 0x3FU;;
    (ret). ch . blue = (uint8_t)(((uint32_t)((uint32_t) ((uint16_t) premult_c1[2] + (c2). ch . blue * mix + 128) * 0x8081) >> 0x17)) & 0x1FU;;
    do {} while(0);
#line 518 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"

    return ret;
}










 
 static inline void lv_color_mix_with_alpha(lv_color_t bg_color, lv_opa_t bg_opa,
                                                                 lv_color_t fg_color, lv_opa_t fg_opa,
                                                                 lv_color_t * res_color, lv_opa_t * res_opa)
{
     
    if(fg_opa >= 253 || bg_opa <= 2) {
        res_color->full = fg_color.full;
        *res_opa = fg_opa;
    }
     
    else if(fg_opa <= 2) {
        res_color->full = bg_color.full;
        *res_opa = bg_opa;
    }
     
    else if(bg_opa >= 253) {
        *res_color = lv_color_mix(fg_color, bg_color, fg_opa);
        *res_opa = LV_OPA_COVER;
    }
     
    else {
         
        static lv_opa_t fg_opa_save     = 0;
        static lv_opa_t bg_opa_save     = 0;
        static lv_color_t fg_color_save = {.full = 0};
        static lv_color_t bg_color_save = {.full = 0};
        static lv_color_t res_color_saved = {.full = 0};
        static lv_opa_t res_opa_saved = 0;

        if(fg_opa != fg_opa_save || bg_opa != bg_opa_save || fg_color.full != fg_color_save.full ||
           bg_color.full != bg_color_save.full) {
            fg_opa_save        = fg_opa;
            bg_opa_save        = bg_opa;
            fg_color_save.full = fg_color.full;
            bg_color_save.full = bg_color.full;
            
 
            res_opa_saved = 255 - ((uint16_t)((uint16_t)(255 - fg_opa) * (255 - bg_opa)) >> 8);
            if(res_opa_saved == 0) {
                while(1)
                    ;
            }
            lv_opa_t ratio = (uint16_t)((uint16_t)fg_opa * 255) / res_opa_saved;
            res_color_saved  = lv_color_mix(fg_color, bg_color, ratio);

        }

        res_color->full = res_color_saved.full;
        *res_opa = res_opa_saved;
    }
}







 
static inline uint8_t lv_color_brightness(lv_color_t color)
{
    lv_color32_t c32;
    c32.full        = lv_color_to32(color);
    uint16_t bright = (uint16_t)(3u * (c32). ch . red + (c32). ch . blue + 4u * (c32). ch . green);
    return (uint8_t)(bright >> 3);
}

#line 615 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"





#line 626 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"

 
#line 641 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_color.h"

static inline lv_color_t lv_color_make(uint8_t r, uint8_t g, uint8_t b)
{
    return ((lv_color_t){{(uint16_t)((b >> 3) & 0x1FU), (uint16_t)((g >> 2) & 0x3FU), (uint16_t)((r >> 3) & 0x1FU)}});
}

static inline lv_color_t lv_color_hex(uint32_t c)
{
    return lv_color_make((uint8_t)((c >> 16) & 0xFF), (uint8_t)((c >> 8) & 0xFF), (uint8_t)(c & 0xFF));
}

static inline lv_color_t lv_color_hex3(uint32_t c)
{
    return lv_color_make((uint8_t)(((c >> 4) & 0xF0) | ((c >> 8) & 0xF)), (uint8_t)((c & 0xF0) | ((c & 0xF0) >> 4)),
                         (uint8_t)((c & 0xF) | ((c & 0xF) << 4)));
}




 void lv_color_fill(lv_color_t * buf, lv_color_t color, uint32_t px_num);


lv_color_t lv_color_lighten(lv_color_t c, lv_opa_t lvl);

lv_color_t lv_color_darken(lv_color_t c, lv_opa_t lvl);







 
lv_color_t lv_color_hsv_to_rgb(uint16_t h, uint8_t s, uint8_t v);







 
lv_color_hsv_t lv_color_rgb_to_hsv(uint8_t r8, uint8_t g8, uint8_t b8);





 
lv_color_hsv_t lv_color_to_hsv(lv_color_t color);




 





#line 22 "..\\GUI\\lvgl_src/lv_hal/lv_hal_disp.h"
#line 1 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_area.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_area.h"
#line 18 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_area.h"
#line 19 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_area.h"
#line 20 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_area.h"
#line 21 "..\\GUI\\lvgl_src/lv_hal/../lv_misc/lv_area.h"



 
 



struct _silence_gcc_warning;
struct _silence_gcc_warning;



 



 
typedef struct {
    lv_coord_t x;
    lv_coord_t y;
} lv_point_t;

 
typedef struct {
    lv_coord_t x1;
    lv_coord_t y1;
    lv_coord_t x2;
    lv_coord_t y2;
} lv_area_t;



 
enum {
    LV_ALIGN_CENTER = 0,
    LV_ALIGN_IN_TOP_LEFT,
    LV_ALIGN_IN_TOP_MID,
    LV_ALIGN_IN_TOP_RIGHT,
    LV_ALIGN_IN_BOTTOM_LEFT,
    LV_ALIGN_IN_BOTTOM_MID,
    LV_ALIGN_IN_BOTTOM_RIGHT,
    LV_ALIGN_IN_LEFT_MID,
    LV_ALIGN_IN_RIGHT_MID,
    LV_ALIGN_OUT_TOP_LEFT,
    LV_ALIGN_OUT_TOP_MID,
    LV_ALIGN_OUT_TOP_RIGHT,
    LV_ALIGN_OUT_BOTTOM_LEFT,
    LV_ALIGN_OUT_BOTTOM_MID,
    LV_ALIGN_OUT_BOTTOM_RIGHT,
    LV_ALIGN_OUT_LEFT_TOP,
    LV_ALIGN_OUT_LEFT_MID,
    LV_ALIGN_OUT_LEFT_BOTTOM,
    LV_ALIGN_OUT_RIGHT_TOP,
    LV_ALIGN_OUT_RIGHT_MID,
    LV_ALIGN_OUT_RIGHT_BOTTOM,
};
typedef uint8_t lv_align_t;




 








 
void lv_area_set(lv_area_t * area_p, lv_coord_t x1, lv_coord_t y1, lv_coord_t x2, lv_coord_t y2);





 
inline static void lv_area_copy(lv_area_t * dest, const lv_area_t * src)
{
    _lv_memcpy_small(dest, src, sizeof(lv_area_t));
}





 
static inline lv_coord_t lv_area_get_width(const lv_area_t * area_p)
{
    return (lv_coord_t)(area_p->x2 - area_p->x1 + 1);
}





 
static inline lv_coord_t lv_area_get_height(const lv_area_t * area_p)
{
    return (lv_coord_t)(area_p->y2 - area_p->y1 + 1);
}





 
void lv_area_set_width(lv_area_t * area_p, lv_coord_t w);





 
void lv_area_set_height(lv_area_t * area_p, lv_coord_t h);






 
void _lv_area_set_pos(lv_area_t * area_p, lv_coord_t x, lv_coord_t y);





 
uint32_t lv_area_get_size(const lv_area_t * area_p);







 
_Bool _lv_area_intersect(lv_area_t * res_p, const lv_area_t * a1_p, const lv_area_t * a2_p);






 
void _lv_area_join(lv_area_t * a_res_p, const lv_area_t * a1_p, const lv_area_t * a2_p);







 
_Bool _lv_area_is_point_on(const lv_area_t * a_p, const lv_point_t * p_p, lv_coord_t radius);






 
_Bool _lv_area_is_on(const lv_area_t * a1_p, const lv_area_t * a2_p);







 
_Bool _lv_area_is_in(const lv_area_t * ain_p, const lv_area_t * aholder_p, lv_coord_t radius);








 
void _lv_area_align(const lv_area_t * base, const lv_area_t * to_align, lv_align_t align, lv_point_t * res);



 





#line 23 "..\\GUI\\lvgl_src/lv_hal/lv_hal_disp.h"
#line 24 "..\\GUI\\lvgl_src/lv_hal/lv_hal_disp.h"
#line 25 "..\\GUI\\lvgl_src/lv_hal/lv_hal_disp.h"



 










 

struct _disp_t;
struct _disp_drv_t;



 
typedef struct {
    void * buf1;  
    void * buf2;  

     
    void * buf_act;
    uint32_t size;  
    lv_area_t area;
     
    volatile int flushing;
     
    volatile int flushing_last;
    volatile uint32_t last_area         : 1;  
    volatile uint32_t last_part         : 1;  
} lv_disp_buf_t;



 
typedef struct _disp_drv_t {

    lv_coord_t hor_res;  
    lv_coord_t ver_res;  

    
 
    lv_disp_buf_t * buffer;


    uint32_t antialiasing : 1;  

    uint32_t rotated : 1;  







    

 
    uint32_t dpi : 10;

    
 
    void (*flush_cb)(struct _disp_drv_t * disp_drv, const lv_area_t * area, lv_color_t * color_p);

    
 
    void (*rounder_cb)(struct _disp_drv_t * disp_drv, lv_area_t * area);

    

 
    void (*set_px_cb)(struct _disp_drv_t * disp_drv, uint8_t * buf, lv_coord_t buf_w, lv_coord_t x, lv_coord_t y,
                      lv_color_t color, lv_opa_t opa);

    
 
    void (*monitor_cb)(struct _disp_drv_t * disp_drv, uint32_t time, uint32_t px);

    

 
    void (*wait_cb)(struct _disp_drv_t * disp_drv);

     
    void (*clean_dcache_cb)(struct _disp_drv_t * disp_drv);

     
    void (*gpu_wait_cb)(struct _disp_drv_t * disp_drv);

#line 130 "..\\GUI\\lvgl_src/lv_hal/lv_hal_disp.h"

    
 
    lv_color_t color_chroma_key;





} lv_disp_drv_t;

struct _lv_obj_t;




 
typedef struct _disp_t {
     
    lv_disp_drv_t driver;

     
    lv_task_t * refr_task;

     
    lv_ll_t scr_ll;
    struct _lv_obj_t * act_scr;    
    struct _lv_obj_t * prev_scr;   
    struct _lv_obj_t * top_layer;  
    struct _lv_obj_t * sys_layer;  

uint8_t del_prev  :
    1;         

    lv_color_t bg_color;           
    const void * bg_img;        
    lv_opa_t bg_opa;               

     
    lv_area_t inv_areas[32];
    uint8_t inv_area_joined[32];
    uint32_t inv_p : 10;

     
    uint32_t last_activity_time;  
} lv_disp_t;


typedef enum {
    LV_DISP_SIZE_SMALL,
    LV_DISP_SIZE_MEDIUM,
    LV_DISP_SIZE_LARGE,
    LV_DISP_SIZE_EXTRA_LARGE,
} lv_disp_size_t;



 






 
void lv_disp_drv_init(lv_disp_drv_t * driver);















 
void lv_disp_buf_init(lv_disp_buf_t * disp_buf, void * buf1, void * buf2, uint32_t size_in_px_cnt);






 
lv_disp_t * lv_disp_drv_register(lv_disp_drv_t * driver);





 
void lv_disp_drv_update(lv_disp_t * disp, lv_disp_drv_t * new_drv);




 
void lv_disp_remove(lv_disp_t * disp);




 
void lv_disp_set_default(lv_disp_t * disp);




 
lv_disp_t * lv_disp_get_default(void);





 
lv_coord_t lv_disp_get_hor_res(lv_disp_t * disp);





 
lv_coord_t lv_disp_get_ver_res(lv_disp_t * disp);





 
_Bool lv_disp_get_antialiasing(lv_disp_t * disp);





 
lv_coord_t lv_disp_get_dpi(lv_disp_t * disp);





 
lv_disp_size_t lv_disp_get_size_category(lv_disp_t * disp);






 
 void lv_disp_flush_ready(lv_disp_drv_t * disp_drv);






 
 _Bool lv_disp_flush_is_last(lv_disp_drv_t * disp_drv);







 
lv_disp_t * lv_disp_get_next(lv_disp_t * disp);





 
lv_disp_buf_t * lv_disp_get_buf(lv_disp_t * disp);




 
uint16_t lv_disp_get_inv_buf_size(lv_disp_t * disp);




 
void _lv_disp_pop_from_inv_buf(lv_disp_t * disp, uint16_t num);





 
_Bool lv_disp_is_double_buf(lv_disp_t * disp);






 
_Bool lv_disp_is_true_double_buf(lv_disp_t * disp);



 





#line 17 "..\\GUI\\lvgl_src/lv_hal/lv_hal.h"
#line 1 "..\\GUI\\lvgl_src/lv_hal/lv_hal_indev.h"





 










 
#line 19 "..\\GUI\\lvgl_src/lv_hal/lv_hal_indev.h"

#line 21 "..\\GUI\\lvgl_src/lv_hal/lv_hal_indev.h"
#line 22 "..\\GUI\\lvgl_src/lv_hal/lv_hal_indev.h"
#line 23 "..\\GUI\\lvgl_src/lv_hal/lv_hal_indev.h"
#line 24 "..\\GUI\\lvgl_src/lv_hal/lv_hal_indev.h"



 



 

struct _lv_obj_t;
struct _disp_t;
struct _lv_indev_t;
struct _lv_indev_drv_t;

 
enum {
    LV_INDEV_TYPE_NONE,     
    LV_INDEV_TYPE_POINTER,  
    LV_INDEV_TYPE_KEYPAD,   
    LV_INDEV_TYPE_BUTTON,  
 
    LV_INDEV_TYPE_ENCODER,  
};
typedef uint8_t lv_indev_type_t;

 
enum { LV_INDEV_STATE_REL = 0, LV_INDEV_STATE_PR };
typedef uint8_t lv_indev_state_t;


enum {
    LV_DRAG_DIR_HOR = 0x1,  
    LV_DRAG_DIR_VER = 0x2,  
    LV_DRAG_DIR_BOTH = 0x3,  
    LV_DRAG_DIR_ONE = 0x4,  
};

typedef uint8_t lv_drag_dir_t;

enum {
    LV_GESTURE_DIR_TOP,      
    LV_GESTURE_DIR_BOTTOM,   
    LV_GESTURE_DIR_LEFT,     
    LV_GESTURE_DIR_RIGHT,    
};
typedef uint8_t lv_gesture_dir_t;

 
typedef struct {
    lv_point_t point;  
    uint32_t key;      
    uint32_t btn_id;   
    int16_t enc_diff;  

    lv_indev_state_t state;  
} lv_indev_data_t;


 
typedef struct _lv_indev_drv_t {

     
    lv_indev_type_t type;

    

 
    _Bool (*read_cb)(struct _lv_indev_drv_t * indev_drv, lv_indev_data_t * data);

    
 
    void (*feedback_cb)(struct _lv_indev_drv_t *, uint8_t);





     
    struct _disp_t * disp;

     
    lv_task_t * read_task;

     
    uint8_t drag_limit;

     
    uint8_t drag_throw;

     
    uint8_t gesture_min_velocity;

     
    uint8_t gesture_limit;

     
    uint16_t long_press_time;

     
    uint16_t long_press_rep_time;
} lv_indev_drv_t;



 
typedef struct _lv_indev_proc_t {
    lv_indev_state_t state;  
    union {
        struct {
             
            lv_point_t act_point;  
            lv_point_t last_point;  
            lv_point_t vect;  
            lv_point_t drag_sum;  
            lv_point_t drag_throw_vect;
            struct _lv_obj_t * act_obj;       
            struct _lv_obj_t * last_obj;     
 
            struct _lv_obj_t * last_pressed;  

            lv_gesture_dir_t gesture_dir;
            lv_point_t gesture_sum;  
             
            uint8_t drag_limit_out : 1;
            uint8_t drag_in_prog : 1;
            lv_drag_dir_t drag_dir  : 3;
            uint8_t gesture_sent : 1;
        } pointer;
        struct {
             
            lv_indev_state_t last_state;
            uint32_t last_key;
        } keypad;
    } types;

    uint32_t pr_timestamp;          
    uint32_t longpr_rep_timestamp;  

     
    uint8_t long_pr_sent : 1;
    uint8_t reset_query : 1;
    uint8_t disabled : 1;
    uint8_t wait_until_release : 1;
} lv_indev_proc_t;

struct _lv_obj_t;
struct _lv_group_t;


 
typedef struct _lv_indev_t {
    lv_indev_drv_t driver;
    lv_indev_proc_t proc;
    struct _lv_obj_t * cursor;      
    struct _lv_group_t * group;     
    const lv_point_t * btn_points; 
 
} lv_indev_t;



 






 
void lv_indev_drv_init(lv_indev_drv_t * driver);





 
lv_indev_t * lv_indev_drv_register(lv_indev_drv_t * driver);





 
void lv_indev_drv_update(lv_indev_t * indev, lv_indev_drv_t * new_drv);






 
lv_indev_t * lv_indev_get_next(lv_indev_t * indev);






 
_Bool _lv_indev_read(lv_indev_t * indev, lv_indev_data_t * data);



 





#line 18 "..\\GUI\\lvgl_src/lv_hal/lv_hal.h"
#line 1 "..\\GUI\\lvgl_src/lv_hal/lv_hal_tick.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_hal/lv_hal_tick.h"

#line 19 "..\\GUI\\lvgl_src/lv_hal/lv_hal_tick.h"
#line 20 "..\\GUI\\lvgl_src/lv_hal/lv_hal_tick.h"



 






 



 






 
 void lv_tick_inc(uint32_t tick_period);






 
uint32_t lv_tick_get(void);





 
uint32_t lv_tick_elaps(uint32_t prev_tick);



 





#line 19 "..\\GUI\\lvgl_src/lv_hal/lv_hal.h"



 



 



 



 





#line 32 "..\\GUI\\lvgl/lvgl.h"

#line 1 "..\\GUI\\lvgl_src/lv_core/lv_obj.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_core/lv_obj.h"

#line 19 "..\\GUI\\lvgl_src/lv_core/lv_obj.h"
#line 20 "..\\GUI\\lvgl_src/lv_core/lv_obj.h"
#line 1 "..\\GUI\\lvgl_src/lv_core/lv_style.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_core/lv_style.h"
#line 1 "..\\GUI\\lvgl_src/lv_core/../lv_font/lv_font.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_core/../lv_font/lv_font.h"
#line 18 "..\\GUI\\lvgl_src/lv_core/../lv_font/lv_font.h"
#line 19 "..\\GUI\\lvgl_src/lv_core/../lv_font/lv_font.h"
#line 20 "..\\GUI\\lvgl_src/lv_core/../lv_font/lv_font.h"

#line 1 "..\\GUI\\lvgl_src/lv_core/../lv_font/lv_symbol_def.h"


 





#line 10 "..\\GUI\\lvgl_src/lv_core/../lv_font/lv_symbol_def.h"



 








 

#line 81 "..\\GUI\\lvgl_src/lv_core/../lv_font/lv_symbol_def.h"

 




 





 
enum {
    _LV_STR_SYMBOL_AUDIO,
    _LV_STR_SYMBOL_VIDEO,
    _LV_STR_SYMBOL_LIST,
    _LV_STR_SYMBOL_OK,
    _LV_STR_SYMBOL_CLOSE,
    _LV_STR_SYMBOL_POWER,
    _LV_STR_SYMBOL_SETTINGS,
    _LV_STR_SYMBOL_HOME,
    _LV_STR_SYMBOL_DOWNLOAD,
    _LV_STR_SYMBOL_DRIVE,
    _LV_STR_SYMBOL_REFRESH,
    _LV_STR_SYMBOL_MUTE,
    _LV_STR_SYMBOL_VOLUME_MID,
    _LV_STR_SYMBOL_VOLUME_MAX,
    _LV_STR_SYMBOL_IMAGE,
    _LV_STR_SYMBOL_EDIT,
    _LV_STR_SYMBOL_PREV,
    _LV_STR_SYMBOL_PLAY,
    _LV_STR_SYMBOL_PAUSE,
    _LV_STR_SYMBOL_STOP,
    _LV_STR_SYMBOL_NEXT,
    _LV_STR_SYMBOL_EJECT,
    _LV_STR_SYMBOL_LEFT,
    _LV_STR_SYMBOL_RIGHT,
    _LV_STR_SYMBOL_PLUS,
    _LV_STR_SYMBOL_MINUS,
    _LV_STR_SYMBOL_EYE_OPEN,
    _LV_STR_SYMBOL_EYE_CLOSE,
    _LV_STR_SYMBOL_WARNING,
    _LV_STR_SYMBOL_SHUFFLE,
    _LV_STR_SYMBOL_UP,
    _LV_STR_SYMBOL_DOWN,
    _LV_STR_SYMBOL_LOOP,
    _LV_STR_SYMBOL_DIRECTORY,
    _LV_STR_SYMBOL_UPLOAD,
    _LV_STR_SYMBOL_CALL,
    _LV_STR_SYMBOL_CUT,
    _LV_STR_SYMBOL_COPY,
    _LV_STR_SYMBOL_SAVE,
    _LV_STR_SYMBOL_CHARGE,
    _LV_STR_SYMBOL_PASTE,
    _LV_STR_SYMBOL_BELL,
    _LV_STR_SYMBOL_KEYBOARD,
    _LV_STR_SYMBOL_GPS,
    _LV_STR_SYMBOL_FILE,
    _LV_STR_SYMBOL_WIFI,
    _LV_STR_SYMBOL_BATTERY_FULL,
    _LV_STR_SYMBOL_BATTERY_3,
    _LV_STR_SYMBOL_BATTERY_2,
    _LV_STR_SYMBOL_BATTERY_1,
    _LV_STR_SYMBOL_BATTERY_EMPTY,
    _LV_STR_SYMBOL_USB,
    _LV_STR_SYMBOL_BLUETOOTH,
    _LV_STR_SYMBOL_TRASH,
    _LV_STR_SYMBOL_BACKSPACE,
    _LV_STR_SYMBOL_SD_CARD,
    _LV_STR_SYMBOL_NEW_LINE,
    _LV_STR_SYMBOL_DUMMY,
};












#line 22 "..\\GUI\\lvgl_src/lv_core/../lv_font/lv_font.h"
#line 23 "..\\GUI\\lvgl_src/lv_core/../lv_font/lv_font.h"



 
 







 



 

 
typedef struct {
    uint16_t adv_w;  
    uint16_t box_w;   
    uint16_t box_h;   
    int16_t ofs_x;    
    int16_t ofs_y;   
    uint8_t bpp;    
} lv_font_glyph_dsc_t;


 
enum {
    LV_FONT_SUBPX_NONE,
    LV_FONT_SUBPX_HOR,
    LV_FONT_SUBPX_VER,
    LV_FONT_SUBPX_BOTH,
};

typedef uint8_t lv_font_subpx_t;

 
typedef struct _lv_font_struct {
     
    _Bool (*get_glyph_dsc)(const struct _lv_font_struct *, lv_font_glyph_dsc_t *, uint32_t letter, uint32_t letter_next);

     
    const uint8_t * (*get_glyph_bitmap)(const struct _lv_font_struct *, uint32_t);

     
    lv_coord_t line_height;          
    lv_coord_t base_line;            
    uint8_t subpx  : 2;              

    int8_t underline_position;       
    int8_t  underline_thickness;      

    void * dsc;                      





} lv_font_t;



 






 
const uint8_t * lv_font_get_glyph_bitmap(const lv_font_t * font_p, uint32_t letter);








 
_Bool lv_font_get_glyph_dsc(const lv_font_t * font_p, lv_font_glyph_dsc_t * dsc_out, uint32_t letter,
                           uint32_t letter_next);







 
uint16_t lv_font_get_glyph_width(const lv_font_t * font, uint32_t letter, uint32_t letter_next);





 
static inline lv_coord_t lv_font_get_line_height(const lv_font_t * font_p)
{
    return font_p->line_height;
}



 












extern lv_font_t lv_font_montserrat_12;






























































































 








#line 18 "..\\GUI\\lvgl_src/lv_core/lv_style.h"
#line 19 "..\\GUI\\lvgl_src/lv_core/lv_style.h"
#line 20 "..\\GUI\\lvgl_src/lv_core/lv_style.h"
#line 1 "..\\GUI\\lvgl_src/lv_core/../lv_misc/lv_anim.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_core/../lv_misc/lv_anim.h"

#line 19 "..\\GUI\\lvgl_src/lv_core/../lv_misc/lv_anim.h"
#line 20 "..\\GUI\\lvgl_src/lv_core/../lv_misc/lv_anim.h"
#line 21 "..\\GUI\\lvgl_src/lv_core/../lv_misc/lv_anim.h"
#line 22 "..\\GUI\\lvgl_src/lv_core/../lv_misc/lv_anim.h"



 



 

 
enum {
    LV_ANIM_OFF,
    LV_ANIM_ON,
};

typedef uint8_t lv_anim_enable_t;

 
typedef lv_coord_t lv_anim_value_t;






struct _lv_anim_t;
struct _lv_anim_path_t;
 
typedef lv_anim_value_t (*lv_anim_path_cb_t)(const struct _lv_anim_path_t *, const struct _lv_anim_t *);

typedef struct _lv_anim_path_t {
    lv_anim_path_cb_t cb;
    void * user_data;
} lv_anim_path_t;








 
typedef void (*lv_anim_exec_xcb_t)(void *, lv_anim_value_t);


 
typedef void (*lv_anim_custom_exec_cb_t)(struct _lv_anim_t *, lv_anim_value_t);

 
typedef void (*lv_anim_ready_cb_t)(struct _lv_anim_t *);

 
typedef void (*lv_anim_start_cb_t)(struct _lv_anim_t *);

 
typedef struct _lv_anim_t {
    void * var;                   
    lv_anim_exec_xcb_t exec_cb;    
    lv_anim_start_cb_t start_cb;  
    lv_anim_ready_cb_t ready_cb;  
    lv_anim_path_t path;          
    int32_t start;                
    int32_t current;              
    int32_t end;                  
    int32_t time;                
    int32_t act_time;             
    uint32_t playback_delay;      
    uint32_t playback_time;       
    uint32_t repeat_delay;        
    uint16_t repeat_cnt;          
    uint8_t early_apply  : 1;     




     
    uint32_t time_orig;
    uint8_t playback_now : 1;  
    uint32_t has_run : 1;      
} lv_anim_t;




 



 
void _lv_anim_core_init(void);








 
void lv_anim_init(lv_anim_t * a);





 
static inline void lv_anim_set_var(lv_anim_t * a, void * var)
{
    a->var     = var;
}







 
static inline void lv_anim_set_exec_cb(lv_anim_t * a, lv_anim_exec_xcb_t exec_cb)
{
    a->exec_cb = exec_cb;
}





 
static inline void lv_anim_set_time(lv_anim_t * a, uint32_t duration)
{
    a->time     = duration;
}





 
static inline void lv_anim_set_delay(lv_anim_t * a, uint32_t delay)
{
    a->act_time = -(int32_t)(delay);
}






 
static inline void lv_anim_set_values(lv_anim_t * a, lv_anim_value_t start, lv_anim_value_t end)
{
    a->start = start;
    a->current = start;
    a->end   = end;
}









 
static inline void lv_anim_set_custom_exec_cb(lv_anim_t * a, lv_anim_custom_exec_cb_t exec_cb)
{
    a->var     = a;
    a->exec_cb = (lv_anim_exec_xcb_t)exec_cb;
}






 
static inline void lv_anim_set_path(lv_anim_t * a, const lv_anim_path_t * path)
{
    _lv_memcpy_small(&a->path, path, sizeof(lv_anim_path_t));
}






 
static inline void lv_anim_set_start_cb(lv_anim_t * a, lv_anim_ready_cb_t start_cb)
{
    a->start_cb = start_cb;
}





 
static inline void lv_anim_set_ready_cb(lv_anim_t * a, lv_anim_ready_cb_t ready_cb)
{
    a->ready_cb = ready_cb;
}





 
static inline void lv_anim_set_playback_time(lv_anim_t * a, uint16_t time)
{
    a->playback_time = time;
}





 
static inline void lv_anim_set_playback_delay(lv_anim_t * a, uint16_t delay)
{
    a->playback_delay = delay;
}





 
static inline void lv_anim_set_repeat_count(lv_anim_t * a, uint16_t cnt)
{
    a->repeat_cnt       = cnt;
}





 
static inline void lv_anim_set_repeat_delay(lv_anim_t * a, uint16_t delay)
{
    a->repeat_delay = delay;
}




 
void lv_anim_start(lv_anim_t * a);




 
static inline void lv_anim_path_init(lv_anim_path_t * path)
{
    _lv_memset_00(path, sizeof(lv_anim_path_t));
}





 
static inline void lv_anim_path_set_cb(lv_anim_path_t * path, lv_anim_path_cb_t cb)
{
    path->cb = cb;
}





 
static inline void lv_anim_path_set_user_data(lv_anim_path_t * path, void * user_data)
{
    path->user_data = user_data;
}





 
static inline int32_t lv_anim_get_delay(lv_anim_t * a)
{
    return -a->act_time;
}







 
_Bool lv_anim_del(void * var, lv_anim_exec_xcb_t exec_cb);








 
lv_anim_t * lv_anim_get(void * var, lv_anim_exec_xcb_t exec_cb);











 
static inline _Bool lv_anim_custom_del(lv_anim_t * a, lv_anim_custom_exec_cb_t exec_cb)
{
    return lv_anim_del(a->var, (lv_anim_exec_xcb_t)exec_cb);
}




 
uint16_t lv_anim_count_running(void);







 
uint16_t lv_anim_speed_to_time(uint16_t speed, lv_anim_value_t start, lv_anim_value_t end);






 
void lv_anim_refr_now(void);





 
lv_anim_value_t lv_anim_path_linear(const lv_anim_path_t * path, const lv_anim_t * a);





 
lv_anim_value_t lv_anim_path_ease_in(const lv_anim_path_t * path, const lv_anim_t * a);





 
lv_anim_value_t lv_anim_path_ease_out(const lv_anim_path_t * path, const lv_anim_t * a);





 
lv_anim_value_t lv_anim_path_ease_in_out(const lv_anim_path_t * path, const lv_anim_t * a);





 
lv_anim_value_t lv_anim_path_overshoot(const lv_anim_path_t * path, const lv_anim_t * a);





 
lv_anim_value_t lv_anim_path_bounce(const lv_anim_path_t * path, const lv_anim_t * a);






 
lv_anim_value_t lv_anim_path_step(const lv_anim_path_t * path, const lv_anim_t * a);



 
extern const lv_anim_path_t lv_anim_path_def;



 







#line 21 "..\\GUI\\lvgl_src/lv_core/lv_style.h"
#line 22 "..\\GUI\\lvgl_src/lv_core/lv_style.h"
#line 1 "..\\GUI\\lvgl_src/lv_core/../lv_misc/lv_debug.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_core/../lv_misc/lv_debug.h"

#line 20 "..\\GUI\\lvgl_src/lv_core/../lv_misc/lv_debug.h"



 



 



 
_Bool lv_debug_check_null(const void * p);

_Bool lv_debug_check_mem_integrity(void);

_Bool lv_debug_check_str(const void * str);

void lv_debug_log_error(const char * msg, uint64_t value);



 

#line 54 "..\\GUI\\lvgl_src/lv_core/../lv_misc/lv_debug.h"



 

















 

 

#line 86 "..\\GUI\\lvgl_src/lv_core/../lv_misc/lv_debug.h"

#line 94 "..\\GUI\\lvgl_src/lv_core/../lv_misc/lv_debug.h"

#line 102 "..\\GUI\\lvgl_src/lv_core/../lv_misc/lv_debug.h"

#line 114 "..\\GUI\\lvgl_src/lv_core/../lv_misc/lv_debug.h"


#line 127 "..\\GUI\\lvgl_src/lv_core/../lv_misc/lv_debug.h"
 





#line 23 "..\\GUI\\lvgl_src/lv_core/lv_style.h"
#line 1 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_draw_blend.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_draw_blend.h"
#line 18 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_draw_blend.h"
#line 1 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_draw_mask.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_draw_mask.h"
#line 18 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_draw_mask.h"
#line 19 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_draw_mask.h"



 





 

enum {
    LV_DRAW_MASK_RES_TRANSP,
    LV_DRAW_MASK_RES_FULL_COVER,
    LV_DRAW_MASK_RES_CHANGED,
    LV_DRAW_MASK_RES_UNKNOWN
};

typedef uint8_t lv_draw_mask_res_t;


enum {
    LV_DRAW_MASK_TYPE_LINE,
    LV_DRAW_MASK_TYPE_ANGLE,
    LV_DRAW_MASK_TYPE_RADIUS,
    LV_DRAW_MASK_TYPE_FADE,
    LV_DRAW_MASK_TYPE_MAP,
};

typedef uint8_t lv_draw_mask_type_t;

enum {
    LV_DRAW_MASK_LINE_SIDE_LEFT = 0,
    LV_DRAW_MASK_LINE_SIDE_RIGHT,
    LV_DRAW_MASK_LINE_SIDE_TOP,
    LV_DRAW_MASK_LINE_SIDE_BOTTOM,
};




 
typedef lv_draw_mask_res_t (*lv_draw_mask_xcb_t)(lv_opa_t * mask_buf, lv_coord_t abs_x, lv_coord_t abs_y,
                                                 lv_coord_t len,
                                                 void * p);

typedef uint8_t lv_draw_mask_line_side_t;

typedef struct {
    lv_draw_mask_xcb_t cb;
    lv_draw_mask_type_t type;
} lv_draw_mask_common_dsc_t;

typedef struct {
     
    lv_draw_mask_common_dsc_t dsc;

    struct {
         
        lv_point_t p1;

         
        lv_point_t p2;

         
        lv_draw_mask_line_side_t side : 2;
    } cfg;

     
    lv_point_t origo;

     
    int32_t xy_steep;

     
    int32_t yx_steep;

     
    int32_t steep;

     
    int32_t spx;

     
    uint8_t flat : 1;


    
 
    uint8_t inv: 1;
} lv_draw_mask_line_param_t;

typedef struct {
     
    lv_draw_mask_common_dsc_t dsc;

    struct {
        lv_point_t vertex_p;
        lv_coord_t start_angle;
        lv_coord_t end_angle;
    } cfg;

    lv_draw_mask_line_param_t start_line;
    lv_draw_mask_line_param_t end_line;
    uint16_t delta_deg;
} lv_draw_mask_angle_param_t;

typedef struct {
     
    lv_draw_mask_common_dsc_t dsc;

    struct {
        lv_area_t rect;
        lv_coord_t radius;
         
        uint8_t outer: 1;
    } cfg;
    int32_t y_prev;
    lv_sqrt_res_t y_prev_x;

} lv_draw_mask_radius_param_t;

typedef struct {
     
    lv_draw_mask_common_dsc_t dsc;

    struct {
        lv_area_t coords;
        lv_coord_t y_top;
        lv_coord_t y_bottom;
        lv_opa_t opa_top;
        lv_opa_t opa_bottom;
    } cfg;

} lv_draw_mask_fade_param_t;

typedef struct _lv_draw_mask_map_param_t {
     
    lv_draw_mask_common_dsc_t dsc;

    struct {
        lv_area_t coords;
        const lv_opa_t * map;
    } cfg;
} lv_draw_mask_map_param_t;

typedef struct {
    void * param;
    void * custom_id;
} _lv_draw_mask_saved_t;

typedef _lv_draw_mask_saved_t _lv_draw_mask_saved_arr_t[16];



 






 
int16_t lv_draw_mask_add(void * param, void * custom_id);














 
 lv_draw_mask_res_t lv_draw_mask_apply(lv_opa_t * mask_buf, lv_coord_t abs_x, lv_coord_t abs_y,
                                                            lv_coord_t len);









 
void * lv_draw_mask_remove_id(int16_t id);






 
void * lv_draw_mask_remove_custom(void * custom_id);






 
 uint8_t lv_draw_mask_get_cnt(void);














 
void lv_draw_mask_line_points_init(lv_draw_mask_line_param_t * param, lv_coord_t p1x, lv_coord_t p1y, lv_coord_t p2x,
                                   lv_coord_t p2y, lv_draw_mask_line_side_t side);










 
void lv_draw_mask_line_angle_init(lv_draw_mask_line_param_t * param, lv_coord_t p1x, lv_coord_t py, int16_t angle,
                                  lv_draw_mask_line_side_t side);








 
void lv_draw_mask_angle_init(lv_draw_mask_angle_param_t * param, lv_coord_t vertex_x, lv_coord_t vertex_y,
                             lv_coord_t start_angle, lv_coord_t end_angle);







 
void lv_draw_mask_radius_init(lv_draw_mask_radius_param_t * param, const lv_area_t * rect, lv_coord_t radius, _Bool inv);









 
void lv_draw_mask_fade_init(lv_draw_mask_fade_param_t * param, const lv_area_t * coords, lv_opa_t opa_top,
                            lv_coord_t y_top,
                            lv_opa_t opa_bottom, lv_coord_t y_bottom);






 
void lv_draw_mask_map_init(lv_draw_mask_map_param_t * param, const lv_area_t * coords, const lv_opa_t * map);



 





#line 19 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_draw_blend.h"



 



 
enum {
    LV_BLEND_MODE_NORMAL,

    LV_BLEND_MODE_ADDITIVE,
    LV_BLEND_MODE_SUBTRACTIVE,

};

typedef uint8_t lv_blend_mode_t;



 


 void _lv_blend_fill(const lv_area_t * clip_area, const lv_area_t * fill_area, lv_color_t color,
                                          lv_opa_t * mask, lv_draw_mask_res_t mask_res, lv_opa_t opa, lv_blend_mode_t mode);


 void _lv_blend_map(const lv_area_t * clip_area, const lv_area_t * map_area,
                                         const lv_color_t * map_buf,
                                         lv_opa_t * mask, lv_draw_mask_res_t mask_res, lv_opa_t opa, lv_blend_mode_t mode);




 





#line 24 "..\\GUI\\lvgl_src/lv_core/lv_style.h"



 


struct _silence_gcc_warning;



















 

 
enum {
    LV_BORDER_SIDE_NONE     = 0x00,
    LV_BORDER_SIDE_BOTTOM   = 0x01,
    LV_BORDER_SIDE_TOP      = 0x02,
    LV_BORDER_SIDE_LEFT     = 0x04,
    LV_BORDER_SIDE_RIGHT    = 0x08,
    LV_BORDER_SIDE_FULL     = 0x0F,
    LV_BORDER_SIDE_INTERNAL = 0x10,  
    _LV_BORDER_SIDE_LAST
};
typedef uint8_t lv_border_side_t;

enum {
    LV_GRAD_DIR_NONE,
    LV_GRAD_DIR_VER,
    LV_GRAD_DIR_HOR,
    _LV_GRAD_DIR_LAST
};

typedef uint8_t lv_grad_dir_t;

 
enum {
    LV_TEXT_DECOR_NONE          = 0x00,
    LV_TEXT_DECOR_UNDERLINE     = 0x01,
    LV_TEXT_DECOR_STRIKETHROUGH = 0x02,
    _LV_TEXT_DECOR_LAST
};

typedef uint8_t lv_text_decor_t;

typedef uint8_t lv_style_attr_t;









enum {
     
    LV_STYLE_RADIUS = (((0x0 << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_CLIP_CORNER = (((0x0 << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_SIZE = (((0x0 << 4) + 0x0 + 3) | ((0) << 8)),
    LV_STYLE_TRANSFORM_WIDTH = (((0x0 << 4) + 0x0 + 4) | ((0) << 8)),
    LV_STYLE_TRANSFORM_HEIGHT = (((0x0 << 4) + 0x0 + 5) | ((0) << 8)),
    LV_STYLE_TRANSFORM_ANGLE = (((0x0 << 4) + 0x0 + 6) | ((0) << 8)),
    LV_STYLE_TRANSFORM_ZOOM = (((0x0 << 4) + 0x0 + 7) | ((0) << 8)),
    LV_STYLE_OPA_SCALE = (((0x0 << 4) + 0xC + 0) | (((1 << 7)) << 8)),

    LV_STYLE_PAD_TOP = (((0x1 << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_PAD_BOTTOM = (((0x1 << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_PAD_LEFT = (((0x1 << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_PAD_RIGHT = (((0x1 << 4) + 0x0 + 3) | ((0) << 8)),
    LV_STYLE_PAD_INNER = (((0x1 << 4) + 0x0 + 4) | ((0) << 8)),
    LV_STYLE_MARGIN_TOP = (((0x1 << 4) + 0x0 + 5) | ((0) << 8)),
    LV_STYLE_MARGIN_BOTTOM = (((0x1 << 4) + 0x0 + 6) | ((0) << 8)),
    LV_STYLE_MARGIN_LEFT = (((0x1 << 4) + 0x0 + 7) | ((0) << 8)),
    LV_STYLE_MARGIN_RIGHT = (((0x1 << 4) + 0x0 + 8) | ((0) << 8)),

    LV_STYLE_BG_BLEND_MODE = (((0x2 << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_BG_MAIN_STOP = (((0x2 << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_BG_GRAD_STOP = (((0x2 << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_BG_GRAD_DIR = (((0x2 << 4) + 0x0 + 3) | ((0) << 8)),
    LV_STYLE_BG_COLOR = (((0x2 << 4) + 0x9 + 0) | ((0) << 8)),
    LV_STYLE_BG_GRAD_COLOR = (((0x2 << 4) + 0x9 + 1) | ((0) << 8)),
    LV_STYLE_BG_OPA = (((0x2 << 4) + 0xC + 0) | ((0) << 8)),

    LV_STYLE_BORDER_WIDTH = (((0x3 << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_BORDER_SIDE = (((0x3 << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_BORDER_BLEND_MODE = (((0x3 << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_BORDER_POST = (((0x3 << 4) + 0x0 + 3) | ((0) << 8)),
    LV_STYLE_BORDER_COLOR = (((0x3 << 4) + 0x9 + 0) | ((0) << 8)),
    LV_STYLE_BORDER_OPA = (((0x3 << 4) + 0xC + 0) | ((0) << 8)),

    LV_STYLE_OUTLINE_WIDTH = (((0x4 << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_OUTLINE_PAD = (((0x4 << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_OUTLINE_BLEND_MODE = (((0x4 << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_OUTLINE_COLOR = (((0x4 << 4) + 0x9 + 0) | ((0) << 8)),
    LV_STYLE_OUTLINE_OPA = (((0x4 << 4) + 0xC + 0) | ((0) << 8)),

    LV_STYLE_SHADOW_WIDTH = (((0x5 << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_SHADOW_OFS_X = (((0x5 << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_SHADOW_OFS_Y = (((0x5 << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_SHADOW_SPREAD = (((0x5 << 4) + 0x0 + 3) | ((0) << 8)),
    LV_STYLE_SHADOW_BLEND_MODE = (((0x5 << 4) + 0x0 + 4) | ((0) << 8)),
    LV_STYLE_SHADOW_COLOR = (((0x5 << 4) + 0x9 + 0) | ((0) << 8)),
    LV_STYLE_SHADOW_OPA = (((0x5 << 4) + 0xC + 0) | ((0) << 8)),

    LV_STYLE_PATTERN_BLEND_MODE = (((0x6 << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_PATTERN_REPEAT = (((0x6 << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_PATTERN_RECOLOR = (((0x6 << 4) + 0x9 + 0) | ((0) << 8)),
    LV_STYLE_PATTERN_OPA = (((0x6 << 4) + 0xC + 0) | ((0) << 8)),
    LV_STYLE_PATTERN_RECOLOR_OPA = (((0x6 << 4) + 0xC + 1) | ((0) << 8)),
    LV_STYLE_PATTERN_IMAGE = (((0x6 << 4) + 0xE + 0) | ((0) << 8)),

    LV_STYLE_VALUE_LETTER_SPACE = (((0x7 << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_VALUE_LINE_SPACE = (((0x7 << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_VALUE_BLEND_MODE = (((0x7 << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_VALUE_OFS_X = (((0x7 << 4) + 0x0 + 3) | ((0) << 8)),
    LV_STYLE_VALUE_OFS_Y = (((0x7 << 4) + 0x0 + 4) | ((0) << 8)),
    LV_STYLE_VALUE_ALIGN = (((0x7 << 4) + 0x0 + 5) | ((0) << 8)),
    LV_STYLE_VALUE_COLOR = (((0x7 << 4) + 0x9 + 0) | ((0) << 8)),
    LV_STYLE_VALUE_OPA = (((0x7 << 4) + 0xC + 0) | ((0) << 8)),
    LV_STYLE_VALUE_FONT = (((0x7 << 4) + 0xE + 0) | ((0) << 8)),
    LV_STYLE_VALUE_STR = (((0x7 << 4) + 0xE + 1) | ((0) << 8)),

    LV_STYLE_TEXT_LETTER_SPACE = (((0x8 << 4) + 0x0 + 0) | (((1 << 7)) << 8)),
    LV_STYLE_TEXT_LINE_SPACE = (((0x8 << 4) + 0x0 + 1) | (((1 << 7)) << 8)),
    LV_STYLE_TEXT_DECOR = (((0x8 << 4) + 0x0 + 2) | (((1 << 7)) << 8)),
    LV_STYLE_TEXT_BLEND_MODE = (((0x8 << 4) + 0x0 + 3) | (((1 << 7)) << 8)),
    LV_STYLE_TEXT_COLOR = (((0x8 << 4) + 0x9 + 0) | (((1 << 7)) << 8)),
    LV_STYLE_TEXT_SEL_COLOR = (((0x8 << 4) + 0x9 + 1) | (((1 << 7)) << 8)),
    LV_STYLE_TEXT_SEL_BG_COLOR = (((0x8 << 4) + 0x9 + 2) | (((1 << 7)) << 8)),
    LV_STYLE_TEXT_OPA = (((0x8 << 4) + 0xC + 0) | (((1 << 7)) << 8)),
    LV_STYLE_TEXT_FONT = (((0x8 << 4) + 0xE + 0) | (((1 << 7)) << 8)),

    LV_STYLE_LINE_WIDTH = (((0x9 << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_LINE_BLEND_MODE = (((0x9 << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_LINE_DASH_WIDTH = (((0x9 << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_LINE_DASH_GAP = (((0x9 << 4) + 0x0 + 3) | ((0) << 8)),
    LV_STYLE_LINE_ROUNDED = (((0x9 << 4) + 0x0 + 4) | ((0) << 8)),
    LV_STYLE_LINE_COLOR = (((0x9 << 4) + 0x9 + 0) | ((0) << 8)),
    LV_STYLE_LINE_OPA = (((0x9 << 4) + 0xC + 0) | ((0) << 8)),

    LV_STYLE_IMAGE_BLEND_MODE = (((0xA << 4) + 0x0 + 0) | (((1 << 7)) << 8)),
    LV_STYLE_IMAGE_RECOLOR = (((0xA << 4) + 0x9 + 0) | (((1 << 7)) << 8)),
    LV_STYLE_IMAGE_OPA = (((0xA << 4) + 0xC + 0) | (((1 << 7)) << 8)),
    LV_STYLE_IMAGE_RECOLOR_OPA = (((0xA << 4) + 0xC + 1) | (((1 << 7)) << 8)),

    LV_STYLE_TRANSITION_TIME = (((0xB << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_TRANSITION_DELAY = (((0xB << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_TRANSITION_PROP_1 = (((0xB << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_TRANSITION_PROP_2 = (((0xB << 4) + 0x0 + 3) | ((0) << 8)),
    LV_STYLE_TRANSITION_PROP_3 = (((0xB << 4) + 0x0 + 4) | ((0) << 8)),
    LV_STYLE_TRANSITION_PROP_4 = (((0xB << 4) + 0x0 + 5) | ((0) << 8)),
    LV_STYLE_TRANSITION_PROP_5 = (((0xB << 4) + 0x0 + 6) | ((0) << 8)),
    LV_STYLE_TRANSITION_PROP_6 = (((0xB << 4) + 0x0 + 7) | ((0) << 8)),
    LV_STYLE_TRANSITION_PATH = (((0xB << 4) + 0xE + 0) | ((0) << 8)),

    LV_STYLE_SCALE_WIDTH = (((0xC << 4) + 0x0 + 0) | ((0) << 8)),
    LV_STYLE_SCALE_BORDER_WIDTH = (((0xC << 4) + 0x0 + 1) | ((0) << 8)),
    LV_STYLE_SCALE_END_BORDER_WIDTH = (((0xC << 4) + 0x0 + 2) | ((0) << 8)),
    LV_STYLE_SCALE_END_LINE_WIDTH = (((0xC << 4) + 0x0 + 3) | ((0) << 8)),
    LV_STYLE_SCALE_GRAD_COLOR = (((0xC << 4) + 0x9 + 0) | ((0) << 8)),
    LV_STYLE_SCALE_END_COLOR = (((0xC << 4) + 0x9 + 1) | ((0) << 8)),
};

typedef uint16_t lv_style_property_t;





typedef uint16_t lv_style_state_t;

typedef struct {
    uint8_t * map;



} lv_style_t;

typedef int16_t lv_style_int_t;

typedef struct {
    lv_style_t ** style_list;



    uint32_t style_cnt     : 6;
    uint32_t has_local     : 1;
    uint32_t has_trans     : 1;
    uint32_t skip_trans    : 1;       
    uint32_t ignore_trans  : 1;       
    uint32_t valid_cache   : 1;       
    uint32_t ignore_cache  : 1;       

    uint32_t radius_zero : 1;
    uint32_t opa_scale_cover      : 1;
    uint32_t clip_corner_off       : 1;
    uint32_t transform_all_zero  : 1;
    uint32_t pad_all_zero : 1;
    uint32_t margin_all_zero : 1;
    uint32_t blend_mode_all_normal : 1;
    uint32_t bg_opa_transp : 1;
    uint32_t bg_opa_cover : 1;

    uint32_t border_width_zero : 1;
    uint32_t border_side_full : 1;
    uint32_t border_post_off : 1;

    uint32_t outline_width_zero : 1;
    uint32_t pattern_img_null : 1;
    uint32_t shadow_width_zero : 1;
    uint32_t value_txt_str : 1;
    uint32_t img_recolor_opa_transp : 1;

    uint32_t text_space_zero : 1;
    uint32_t text_decor_none : 1;
    uint32_t text_font_normal : 1;
} lv_style_list_t;



 




 
void lv_style_init(lv_style_t * style);





 
void lv_style_copy(lv_style_t * style_dest, const lv_style_t * style_src);




 
void lv_style_list_init(lv_style_list_t * list);





 
void lv_style_list_copy(lv_style_list_t * list_dest, const lv_style_list_t * list_src);







 
void _lv_style_list_add_style(lv_style_list_t * list, lv_style_t * style);





 
void _lv_style_list_remove_style(lv_style_list_t * list, lv_style_t * style);





 
void _lv_style_list_reset(lv_style_list_t * style_list);

static inline lv_style_t * lv_style_list_get_style(lv_style_list_t * list, uint8_t id)
{
    if(list->has_trans && list->skip_trans) id++;
    if(list->style_cnt == 0 || id >= list->style_cnt) return 0;
    return list->style_list[id];
}




 
void lv_style_reset(lv_style_t * style);





 
uint16_t _lv_style_get_mem_size(const lv_style_t * style);





 
void lv_style_copy(lv_style_t * dest, const lv_style_t * src);







 
_Bool lv_style_remove_prop(lv_style_t * style, lv_style_property_t prop);










 
void _lv_style_set_int(lv_style_t * style, lv_style_property_t prop, lv_style_int_t value);










 
void _lv_style_set_color(lv_style_t * style, lv_style_property_t prop, lv_color_t color);










 
void _lv_style_set_opa(lv_style_t * style, lv_style_property_t prop, lv_opa_t opa);










 
void _lv_style_set_ptr(lv_style_t * style, lv_style_property_t prop, const void * p);













 
int16_t _lv_style_get_int(const lv_style_t * style, lv_style_property_t prop, void * res);













 
int16_t _lv_style_get_color(const lv_style_t * style, lv_style_property_t prop, void * res);













 
int16_t _lv_style_get_opa(const lv_style_t * style, lv_style_property_t prop, void * res);













 
int16_t _lv_style_get_ptr(const lv_style_t * style, lv_style_property_t prop, void * res);





 
lv_style_t * lv_style_list_get_local_style(lv_style_list_t * list);





 
lv_style_t * _lv_style_list_get_transition_style(lv_style_list_t * list);





 
lv_style_t * _lv_style_list_add_trans_style(lv_style_list_t * list);








 
void _lv_style_list_set_local_int(lv_style_list_t * list, lv_style_property_t prop, lv_style_int_t value);








 
void _lv_style_list_set_local_color(lv_style_list_t * list, lv_style_property_t prop, lv_color_t value);








 
void _lv_style_list_set_local_opa(lv_style_list_t * list, lv_style_property_t prop, lv_opa_t value);








 
void _lv_style_list_set_local_ptr(lv_style_list_t * list, lv_style_property_t prop, const void * value);











 
lv_res_t _lv_style_list_get_int(lv_style_list_t * list, lv_style_property_t prop, lv_style_int_t * res);











 
lv_res_t _lv_style_list_get_color(lv_style_list_t * list, lv_style_property_t prop, lv_color_t * res);












 
lv_res_t _lv_style_list_get_opa(lv_style_list_t * list, lv_style_property_t prop, lv_opa_t * res);











 
lv_res_t _lv_style_list_get_ptr(lv_style_list_t * list, lv_style_property_t prop, const void ** res);





 
_Bool lv_debug_check_style(const lv_style_t * style);





 
_Bool lv_debug_check_style_list(const lv_style_list_t * list);



 



 









 














#line 625 "..\\GUI\\lvgl_src/lv_core/lv_style.h"










#line 21 "..\\GUI\\lvgl_src/lv_core/lv_obj.h"
#line 22 "..\\GUI\\lvgl_src/lv_core/lv_obj.h"
#line 23 "..\\GUI\\lvgl_src/lv_core/lv_obj.h"
#line 24 "..\\GUI\\lvgl_src/lv_core/lv_obj.h"
#line 25 "..\\GUI\\lvgl_src/lv_core/lv_obj.h"
#line 26 "..\\GUI\\lvgl_src/lv_core/lv_obj.h"
#line 1 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_draw_rect.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_draw_rect.h"



 



 

typedef struct {
    lv_style_int_t radius;

     
    lv_color_t bg_color;
    lv_color_t bg_grad_color;
    lv_grad_dir_t bg_grad_dir;
    lv_style_int_t bg_main_color_stop;
    lv_style_int_t bg_grad_color_stop;
    lv_opa_t bg_opa;
    lv_blend_mode_t bg_blend_mode;

     
    lv_color_t border_color;
    lv_style_int_t border_width;
    lv_style_int_t border_side;
    lv_opa_t border_opa;
    lv_blend_mode_t border_blend_mode;
    uint8_t border_post : 1;         

     
    lv_color_t outline_color;
    lv_style_int_t outline_width;
    lv_style_int_t outline_pad;
    lv_opa_t outline_opa;
    lv_blend_mode_t outline_blend_mode;

     
    lv_color_t shadow_color;
    lv_style_int_t shadow_width;
    lv_style_int_t shadow_ofs_x;
    lv_style_int_t shadow_ofs_y;
    lv_style_int_t shadow_spread;
    lv_opa_t shadow_opa;
    lv_blend_mode_t shadow_blend_mode;

     
    const void * pattern_image;
    const lv_font_t * pattern_font;
    lv_color_t pattern_recolor;
    lv_opa_t pattern_opa;
    lv_opa_t pattern_recolor_opa;
    uint8_t pattern_repeat : 1;
    lv_blend_mode_t pattern_blend_mode;

     
    const char * value_str;
    const lv_font_t * value_font;
    lv_opa_t value_opa;
    lv_color_t value_color;
    lv_style_int_t value_ofs_x;
    lv_style_int_t value_ofs_y;
    lv_style_int_t value_letter_space;
    lv_style_int_t value_line_space;
    lv_align_t value_align;
    lv_blend_mode_t value_blend_mode;
} lv_draw_rect_dsc_t;



 

 void lv_draw_rect_dsc_init(lv_draw_rect_dsc_t * dsc);








 
void lv_draw_rect(const lv_area_t * coords, const lv_area_t * mask, const lv_draw_rect_dsc_t * dsc);






 
void lv_draw_px(const lv_point_t * point, const lv_area_t * clip_area, const lv_style_t * style);



 





#line 27 "..\\GUI\\lvgl_src/lv_core/lv_obj.h"
#line 1 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_draw_label.h"



 










 
#line 1 "..\\GUI\\lvgl_src/lv_core/../lv_draw/../lv_misc/lv_bidi.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_core/../lv_draw/../lv_misc/lv_bidi.h"

#line 19 "..\\GUI\\lvgl_src/lv_core/../lv_draw/../lv_misc/lv_bidi.h"
#line 20 "..\\GUI\\lvgl_src/lv_core/../lv_draw/../lv_misc/lv_bidi.h"



 

 





 
enum {
     
    LV_BIDI_DIR_LTR      = 0x00,
    LV_BIDI_DIR_RTL      = 0x01,
    LV_BIDI_DIR_AUTO     = 0x02,
    LV_BIDI_DIR_INHERIT  = 0x03,

    LV_BIDI_DIR_NEUTRAL  = 0x20,
    LV_BIDI_DIR_WEAK     = 0x21,
};

typedef uint8_t lv_bidi_dir_t;



 
#line 114 "..\\GUI\\lvgl_src/lv_core/../lv_draw/../lv_misc/lv_bidi.h"





#line 17 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_draw_label.h"
#line 1 "..\\GUI\\lvgl_src/lv_core/../lv_draw/../lv_misc/lv_txt.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_core/../lv_draw/../lv_misc/lv_txt.h"

#line 19 "..\\GUI\\lvgl_src/lv_core/../lv_draw/../lv_misc/lv_txt.h"
#line 20 "..\\GUI\\lvgl_src/lv_core/../lv_draw/../lv_misc/lv_txt.h"
#line 21 "..\\GUI\\lvgl_src/lv_core/../lv_draw/../lv_misc/lv_txt.h"
#line 22 "..\\GUI\\lvgl_src/lv_core/../lv_draw/../lv_misc/lv_txt.h"



 









 


 
enum {
    LV_TXT_FLAG_NONE    = 0x00,
    LV_TXT_FLAG_RECOLOR = 0x01,  
    LV_TXT_FLAG_EXPAND  = 0x02,  
    LV_TXT_FLAG_CENTER  = 0x04,  
    LV_TXT_FLAG_RIGHT   = 0x08,  
    LV_TXT_FLAG_FIT     = 0x10,  
};
typedef uint8_t lv_txt_flag_t;


 
enum {
    LV_TXT_CMD_STATE_WAIT,  
    LV_TXT_CMD_STATE_PAR,   
    LV_TXT_CMD_STATE_IN,    
};
typedef uint8_t lv_txt_cmd_state_t;



 











 
void _lv_txt_get_size(lv_point_t * size_res, const char * text, const lv_font_t * font, lv_coord_t letter_space,
                      lv_coord_t line_space, lv_coord_t max_width, lv_txt_flag_t flag);











 
uint32_t _lv_txt_get_next_line(const char * txt, const lv_font_t * font, lv_coord_t letter_space, lv_coord_t max_width,
                               lv_txt_flag_t flag);










 
lv_coord_t _lv_txt_get_width(const char * txt, uint32_t length, const lv_font_t * font, lv_coord_t letter_space,
                             lv_txt_flag_t flag);








 
_Bool _lv_txt_is_cmd(lv_txt_cmd_state_t * state, uint32_t c);






 
void _lv_txt_ins(char * txt_buf, uint32_t pos, const char * ins_txt);







 
void _lv_txt_cut(char * txt, uint32_t pos, uint32_t len);



 





 
extern uint8_t (*_lv_txt_encoded_size)(const char *);





 
extern uint32_t (*_lv_txt_unicode_to_encoded)(uint32_t);





 
extern uint32_t (*_lv_txt_encoded_conv_wc)(uint32_t c);








 
extern uint32_t (*_lv_txt_encoded_next)(const char *, uint32_t *);







 
extern uint32_t (*_lv_txt_encoded_prev)(const char *, uint32_t *);







 
extern uint32_t (*_lv_txt_encoded_get_byte_id)(const char *, uint32_t);







 
extern uint32_t (*_lv_txt_encoded_get_char_id)(const char *, uint32_t);






 
extern uint32_t (*_lv_txt_get_encoded_length)(const char *);



 





#line 18 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_draw_label.h"
#line 19 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_draw_label.h"



 




 

typedef struct {
    lv_color_t color;
    lv_color_t sel_color;
    lv_color_t sel_bg_color;
    const lv_font_t * font;
    lv_opa_t opa;
    lv_style_int_t line_space;
    lv_style_int_t letter_space;
    uint32_t sel_start;
    uint32_t sel_end;
    lv_coord_t ofs_x;
    lv_coord_t ofs_y;
    lv_bidi_dir_t bidi_dir;
    lv_txt_flag_t flag;
    lv_text_decor_t decor;
    lv_blend_mode_t blend_mode;
} lv_draw_label_dsc_t;





 
typedef struct {
     
    int32_t line_start;

     
    int32_t y;

    
 
    int32_t coord_y;
} lv_draw_label_hint_t;



 



 void lv_draw_label_dsc_init(lv_draw_label_dsc_t * dsc);









 
 void lv_draw_label(const lv_area_t * coords, const lv_area_t * mask,
                                         const lv_draw_label_dsc_t * dsc,
                                         const char * txt, lv_draw_label_hint_t * hint);




 
extern const uint8_t _lv_bpp2_opa_table[];
extern const uint8_t _lv_bpp3_opa_table[];
extern const uint8_t _lv_bpp1_opa_table[];
extern const uint8_t _lv_bpp4_opa_table[];
extern const uint8_t _lv_bpp8_opa_table[];



 





#line 28 "..\\GUI\\lvgl_src/lv_core/lv_obj.h"
#line 1 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_draw_line.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_draw_line.h"



 



 
typedef struct {
    lv_color_t color;
    lv_style_int_t width;
    lv_style_int_t dash_width;
    lv_style_int_t dash_gap;
    lv_opa_t opa;
    lv_blend_mode_t blend_mode  : 2;
    uint8_t round_start : 1;
    uint8_t round_end   : 1;
    uint8_t raw_end     : 1;     
} lv_draw_line_dsc_t;



 








 
 void lv_draw_line(const lv_point_t * point1, const lv_point_t * point2, const lv_area_t * clip,
                                        const lv_draw_line_dsc_t * dsc);

 void lv_draw_line_dsc_init(lv_draw_line_dsc_t * dsc);






 





#line 29 "..\\GUI\\lvgl_src/lv_core/lv_obj.h"
#line 1 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_draw_img.h"



 










 
#line 1 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_img_decoder.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_img_decoder.h"

#line 19 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_img_decoder.h"
#line 1 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_img_buf.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_img_buf.h"
#line 18 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_img_buf.h"
#line 19 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_img_buf.h"




 
 
#line 32 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_img_buf.h"





 





 












 

 
enum {
    LV_IMG_CF_UNKNOWN = 0,

    LV_IMG_CF_RAW,               
    LV_IMG_CF_RAW_ALPHA,        
 
    LV_IMG_CF_RAW_CHROMA_KEYED, 
 

    LV_IMG_CF_TRUE_COLOR,               
    LV_IMG_CF_TRUE_COLOR_ALPHA,         
    LV_IMG_CF_TRUE_COLOR_CHROMA_KEYED, 
 

    LV_IMG_CF_INDEXED_1BIT,  
    LV_IMG_CF_INDEXED_2BIT,  
    LV_IMG_CF_INDEXED_4BIT,  
    LV_IMG_CF_INDEXED_8BIT,  

    LV_IMG_CF_ALPHA_1BIT,  
    LV_IMG_CF_ALPHA_2BIT,  
    LV_IMG_CF_ALPHA_4BIT,  
    LV_IMG_CF_ALPHA_8BIT,  

    LV_IMG_CF_RESERVED_15,               
    LV_IMG_CF_RESERVED_16,               
    LV_IMG_CF_RESERVED_17,               
    LV_IMG_CF_RESERVED_18,               
    LV_IMG_CF_RESERVED_19,               
    LV_IMG_CF_RESERVED_20,               
    LV_IMG_CF_RESERVED_21,               
    LV_IMG_CF_RESERVED_22,               
    LV_IMG_CF_RESERVED_23,               

    LV_IMG_CF_USER_ENCODED_0,           
    LV_IMG_CF_USER_ENCODED_1,           
    LV_IMG_CF_USER_ENCODED_2,           
    LV_IMG_CF_USER_ENCODED_3,           
    LV_IMG_CF_USER_ENCODED_4,           
    LV_IMG_CF_USER_ENCODED_5,           
    LV_IMG_CF_USER_ENCODED_6,           
    LV_IMG_CF_USER_ENCODED_7,           
};
typedef uint8_t lv_img_cf_t;




 




 
#line 126 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_img_buf.h"
typedef struct {

    uint32_t cf : 5;           
    uint32_t always_zero : 3; 
 

    uint32_t reserved : 2;  

    uint32_t w : 11;  
    uint32_t h : 11;  
} lv_img_header_t;



 
typedef struct {
    lv_img_header_t header;
    uint32_t data_size;
    const uint8_t * data;
} lv_img_dsc_t;

typedef struct {
    struct {
        const void * src;            
        lv_coord_t src_w;            
        lv_coord_t src_h;            
        lv_coord_t pivot_x;          
        lv_coord_t pivot_y;          
        int16_t angle;               
        uint16_t zoom;               
        lv_color_t color;            
        lv_img_cf_t cf;              
        _Bool antialias;
    } cfg;

    struct {
        lv_color_t color;
        lv_opa_t opa;
    } res;


    struct {
        lv_img_dsc_t img_dsc;
        int32_t pivot_x_256;
        int32_t pivot_y_256;
        int32_t sinma;
        int32_t cosma;

        uint8_t chroma_keyed : 1;
        uint8_t has_alpha : 1;
        uint8_t native_color : 1;

        uint32_t zoom_inv;

         
        lv_coord_t xs;
        lv_coord_t ys;
        lv_coord_t xs_int;
        lv_coord_t ys_int;
        uint32_t pxi;
        uint8_t px_size;
    } tmp;
} lv_img_transform_dsc_t;



 







 
lv_img_dsc_t * lv_img_buf_alloc(lv_coord_t w, lv_coord_t h, lv_img_cf_t cf);










 
lv_color_t lv_img_buf_get_px_color(lv_img_dsc_t * dsc, lv_coord_t x, lv_coord_t y, lv_color_t color);








 
lv_opa_t lv_img_buf_get_px_alpha(lv_img_dsc_t * dsc, lv_coord_t x, lv_coord_t y);








 
void lv_img_buf_set_px_color(lv_img_dsc_t * dsc, lv_coord_t x, lv_coord_t y, lv_color_t c);








 
void lv_img_buf_set_px_alpha(lv_img_dsc_t * dsc, lv_coord_t x, lv_coord_t y, lv_opa_t opa);










 
void lv_img_buf_set_palette(lv_img_dsc_t * dsc, uint8_t id, lv_color_t c);




 
void lv_img_buf_free(lv_img_dsc_t * dsc);







 
uint32_t lv_img_buf_get_img_size(lv_coord_t w, lv_coord_t h, lv_img_cf_t cf);






 
void _lv_img_buf_transform_init(lv_img_transform_dsc_t * dsc);




 
_Bool _lv_img_buf_transform_anti_alias(lv_img_transform_dsc_t * dsc);









 
static inline _Bool _lv_img_buf_transform(lv_img_transform_dsc_t * dsc, lv_coord_t x, lv_coord_t y)
{
    const uint8_t * src_u8 = (const uint8_t *)dsc->cfg.src;

     
    int32_t xt = x - dsc->cfg.pivot_x;
    int32_t yt = y - dsc->cfg.pivot_y;

    int32_t xs;
    int32_t ys;
    if(dsc->cfg.zoom == 256) {
         
        xs = ((dsc->tmp.cosma * xt - dsc->tmp.sinma * yt) >> (10 - 8)) + dsc->tmp.pivot_x_256;
        ys = ((dsc->tmp.sinma * xt + dsc->tmp.cosma * yt) >> (10 - 8)) + dsc->tmp.pivot_y_256;
    }
    else if(dsc->cfg.angle == 0) {
        xt = (int32_t)((int32_t)xt * dsc->tmp.zoom_inv) >> 5;
        yt = (int32_t)((int32_t)yt * dsc->tmp.zoom_inv) >> 5;
        xs = xt + dsc->tmp.pivot_x_256;
        ys = yt + dsc->tmp.pivot_y_256;
    }
    else {
        xt = (int32_t)((int32_t)xt * dsc->tmp.zoom_inv) >> 5;
        yt = (int32_t)((int32_t)yt * dsc->tmp.zoom_inv) >> 5;
        xs = ((dsc->tmp.cosma * xt - dsc->tmp.sinma * yt) >> (10)) + dsc->tmp.pivot_x_256;
        ys = ((dsc->tmp.sinma * xt + dsc->tmp.cosma * yt) >> (10)) + dsc->tmp.pivot_y_256;
    }

     
    int32_t xs_int = xs >> 8;
    int32_t ys_int = ys >> 8;

    if(xs_int >= dsc->cfg.src_w) return 0;
    else if(xs_int < 0) return 0;

    if(ys_int >= dsc->cfg.src_h) return 0;
    else if(ys_int < 0) return 0;

    uint8_t px_size;
    uint32_t pxi;
    if(dsc->tmp.native_color) {
        if(dsc->tmp.has_alpha == 0) {
            px_size = 16 >> 3;

            pxi     = dsc->cfg.src_w * ys_int * px_size + xs_int * px_size;
            _lv_memcpy_small(&dsc->res.color, &src_u8[pxi], px_size);
        }
        else {
            px_size = 3;
            pxi     = dsc->cfg.src_w * ys_int * px_size + xs_int * px_size;
            _lv_memcpy_small(&dsc->res.color, &src_u8[pxi], px_size - 1);
            dsc->res.opa = src_u8[pxi + px_size - 1];
        }
    }
    else {
        pxi = 0;  
        px_size = 0;     
        dsc->res.color = lv_img_buf_get_px_color(&dsc->tmp.img_dsc, xs_int, ys_int, dsc->cfg.color);
        dsc->res.opa = lv_img_buf_get_px_alpha(&dsc->tmp.img_dsc, xs_int, ys_int);
    }

    if(dsc->tmp.chroma_keyed) {
        lv_color_t ct = ((lv_color_t){{(uint16_t)((0x00 >> 3) & 0x1FU), (uint16_t)((0xFF >> 2) & 0x3FU), (uint16_t)((0x00 >> 3) & 0x1FU)}});
        if(dsc->res.color.full == ct.full) return 0;
    }

    if(dsc->cfg.antialias == 0) return 1;

    dsc->tmp.xs = xs;
    dsc->tmp.ys = ys;
    dsc->tmp.xs_int = xs_int;
    dsc->tmp.ys_int = ys_int;
    dsc->tmp.pxi = pxi;
    dsc->tmp.px_size = px_size;

    _Bool ret;
    ret = _lv_img_buf_transform_anti_alias(dsc);

    return ret;
}









 
void _lv_img_buf_get_transformed_area(lv_area_t * res, lv_coord_t w, lv_coord_t h, int16_t angle, uint16_t zoom,
                                      const lv_point_t * pivot);



 





#line 20 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_img_decoder.h"
#line 1 "..\\GUI\\lvgl_src/lv_core/../lv_draw/../lv_misc/lv_fs.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_core/../lv_draw/../lv_misc/lv_fs.h"

#line 288 "..\\GUI\\lvgl_src/lv_core/../lv_draw/../lv_misc/lv_fs.h"





#line 21 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_img_decoder.h"
#line 22 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_img_decoder.h"
#line 23 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_img_decoder.h"
#line 24 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_img_decoder.h"



 



 


 
enum {
    LV_IMG_SRC_VARIABLE,  
    LV_IMG_SRC_FILE,  
    LV_IMG_SRC_SYMBOL,  
    LV_IMG_SRC_UNKNOWN,  
};

typedef uint8_t lv_img_src_t;

 

struct _lv_img_decoder;
struct _lv_img_decoder_dsc;







 
typedef lv_res_t (*lv_img_decoder_info_f_t)(struct _lv_img_decoder * decoder, const void * src,
                                            lv_img_header_t * header);





 
typedef lv_res_t (*lv_img_decoder_open_f_t)(struct _lv_img_decoder * decoder, struct _lv_img_decoder_dsc * dsc);











 
typedef lv_res_t (*lv_img_decoder_read_line_f_t)(struct _lv_img_decoder * decoder, struct _lv_img_decoder_dsc * dsc,
                                                 lv_coord_t x, lv_coord_t y, lv_coord_t len, uint8_t * buf);





 
typedef void (*lv_img_decoder_close_f_t)(struct _lv_img_decoder * decoder, struct _lv_img_decoder_dsc * dsc);

typedef struct _lv_img_decoder {
    lv_img_decoder_info_f_t info_cb;
    lv_img_decoder_open_f_t open_cb;
    lv_img_decoder_read_line_f_t read_line_cb;
    lv_img_decoder_close_f_t close_cb;




} lv_img_decoder_t;

 
typedef struct _lv_img_decoder_dsc {
     
    lv_img_decoder_t * decoder;

     
    const void * src;

     
    lv_color_t color;

     
    lv_img_src_t src_type;

     
    lv_img_header_t header;

    
 
    const uint8_t * img_data;

    
 
    uint32_t time_to_open;

    
 
    const char * error_msg;

     
    void * user_data;
} lv_img_decoder_dsc_t;



 



 
void _lv_img_decoder_init(void);










 
lv_res_t lv_img_decoder_get_info(const char * src, lv_img_header_t * header);












 
lv_res_t lv_img_decoder_open(lv_img_decoder_dsc_t * dsc, const void * src, lv_color_t color);









 
lv_res_t lv_img_decoder_read_line(lv_img_decoder_dsc_t * dsc, lv_coord_t x, lv_coord_t y, lv_coord_t len,
                                  uint8_t * buf);




 
void lv_img_decoder_close(lv_img_decoder_dsc_t * dsc);




 
lv_img_decoder_t * lv_img_decoder_create(void);




 
void lv_img_decoder_delete(lv_img_decoder_t * decoder);





 
void lv_img_decoder_set_info_cb(lv_img_decoder_t * decoder, lv_img_decoder_info_f_t info_cb);





 
void lv_img_decoder_set_open_cb(lv_img_decoder_t * decoder, lv_img_decoder_open_f_t open_cb);





 
void lv_img_decoder_set_read_line_cb(lv_img_decoder_t * decoder, lv_img_decoder_read_line_f_t read_line_cb);





 
void lv_img_decoder_set_close_cb(lv_img_decoder_t * decoder, lv_img_decoder_close_f_t close_cb);







 
lv_res_t lv_img_decoder_built_in_info(lv_img_decoder_t * decoder, const void * src, lv_img_header_t * header);






 
lv_res_t lv_img_decoder_built_in_open(lv_img_decoder_t * decoder, lv_img_decoder_dsc_t * dsc);











 
lv_res_t lv_img_decoder_built_in_read_line(lv_img_decoder_t * decoder, lv_img_decoder_dsc_t * dsc, lv_coord_t x,
                                           lv_coord_t y, lv_coord_t len, uint8_t * buf);





 
void lv_img_decoder_built_in_close(lv_img_decoder_t * decoder, lv_img_decoder_dsc_t * dsc);



 





#line 17 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_draw_img.h"
#line 18 "..\\GUI\\lvgl_src/lv_core/../lv_draw/lv_draw_img.h"



 



 



 

typedef struct {
    lv_opa_t opa;

    uint16_t angle;
    lv_point_t pivot;
    uint16_t zoom;

    lv_opa_t recolor_opa;
    lv_color_t recolor;

    lv_blend_mode_t blend_mode;

    uint8_t antialias       : 1;
} lv_draw_img_dsc_t;



 

void lv_draw_img_dsc_init(lv_draw_img_dsc_t * dsc);






 
void lv_draw_img(const lv_area_t * coords, const lv_area_t * mask, const void * src, const lv_draw_img_dsc_t * dsc);








 
lv_img_src_t lv_img_src_get_type(const void * src);





 
uint8_t lv_img_cf_get_px_size(lv_img_cf_t cf);





 
_Bool lv_img_cf_is_chroma_keyed(lv_img_cf_t cf);





 
_Bool lv_img_cf_has_alpha(lv_img_cf_t cf);






#line 30 "..\\GUI\\lvgl_src/lv_core/lv_obj.h"



 

 



















 

struct _lv_obj_t;


 
enum {
    LV_DESIGN_DRAW_MAIN,  
    LV_DESIGN_DRAW_POST,  
    LV_DESIGN_COVER_CHK,  
};
typedef uint8_t lv_design_mode_t;


 
enum {
    LV_DESIGN_RES_OK,           
    LV_DESIGN_RES_COVER,        
    LV_DESIGN_RES_NOT_COVER,    
    LV_DESIGN_RES_MASKED,       
};
typedef uint8_t lv_design_res_t;




 
typedef lv_design_res_t (*lv_design_cb_t)(struct _lv_obj_t * obj, const lv_area_t * clip_area, lv_design_mode_t mode);

enum {
    LV_EVENT_PRESSED,              
    LV_EVENT_PRESSING,             
    LV_EVENT_PRESS_LOST,           
    LV_EVENT_SHORT_CLICKED,        
    LV_EVENT_LONG_PRESSED,         
    LV_EVENT_LONG_PRESSED_REPEAT, 
 
    LV_EVENT_CLICKED,              
    LV_EVENT_RELEASED,             
    LV_EVENT_DRAG_BEGIN,
    LV_EVENT_DRAG_END,
    LV_EVENT_DRAG_THROW_BEGIN,
    LV_EVENT_GESTURE,            
    LV_EVENT_KEY,
    LV_EVENT_FOCUSED,
    LV_EVENT_DEFOCUSED,
    LV_EVENT_LEAVE,
    LV_EVENT_VALUE_CHANGED,       
    LV_EVENT_INSERT,
    LV_EVENT_REFRESH,
    LV_EVENT_APPLY,   
    LV_EVENT_CANCEL,  
    LV_EVENT_DELETE,  
    _LV_EVENT_LAST  
};
typedef uint8_t lv_event_t;  





 
typedef void (*lv_event_cb_t)(struct _lv_obj_t * obj, lv_event_t event);



 
enum {
     
    LV_SIGNAL_CLEANUP,  
    LV_SIGNAL_CHILD_CHG,  
    LV_SIGNAL_COORD_CHG,  
    LV_SIGNAL_PARENT_SIZE_CHG,  
    LV_SIGNAL_STYLE_CHG,     
    LV_SIGNAL_BASE_DIR_CHG,  
    LV_SIGNAL_REFR_EXT_DRAW_PAD,  
    LV_SIGNAL_GET_TYPE,  
    LV_SIGNAL_GET_STYLE,  
    LV_SIGNAL_GET_STATE_DSC,  

     
    LV_SIGNAL_HIT_TEST,           
    LV_SIGNAL_PRESSED,            
    LV_SIGNAL_PRESSING,           
    LV_SIGNAL_PRESS_LOST,         
    LV_SIGNAL_RELEASED,           
    LV_SIGNAL_LONG_PRESS,         
    LV_SIGNAL_LONG_PRESS_REP,     
    LV_SIGNAL_DRAG_BEGIN,
    LV_SIGNAL_DRAG_THROW_BEGIN,
    LV_SIGNAL_DRAG_END,
    LV_SIGNAL_GESTURE,           
    LV_SIGNAL_LEAVE,             

     
    LV_SIGNAL_FOCUS,
    LV_SIGNAL_DEFOCUS,
    LV_SIGNAL_CONTROL,
    LV_SIGNAL_GET_EDITABLE,
};
typedef uint8_t lv_signal_t;

typedef lv_res_t (*lv_signal_cb_t)(struct _lv_obj_t * obj, lv_signal_t sign, void * param);


typedef struct {
    const struct _lv_obj_t * base;
    lv_coord_t xofs;
    lv_coord_t yofs;
    lv_align_t align;
    uint8_t auto_realign : 1;
    uint8_t mid_align : 1; 
 
} lv_realign_t;


 
enum {
    LV_PROTECT_NONE      = 0x00,
    LV_PROTECT_CHILD_CHG = 0x01,    
    LV_PROTECT_PARENT    = 0x02,    
    LV_PROTECT_POS       = 0x04,    
    LV_PROTECT_FOLLOW    = 0x08,   
 
    LV_PROTECT_PRESS_LOST = 0x10,  
 
    LV_PROTECT_CLICK_FOCUS = 0x20,  
};
typedef uint8_t lv_protect_t;

enum {
    LV_STATE_DEFAULT   =  0x00,
    LV_STATE_CHECKED  =  0x01,
    LV_STATE_FOCUSED  =  0x02,
    LV_STATE_EDITED   =  0x04,
    LV_STATE_HOVERED  =  0x08,
    LV_STATE_PRESSED  =  0x10,
    LV_STATE_DISABLED =  0x20,
};

typedef uint8_t lv_state_t;

typedef struct _lv_obj_t {
    struct _lv_obj_t * parent;  
    lv_ll_t child_ll;        

    lv_area_t coords;  

    lv_event_cb_t event_cb;  
    lv_signal_cb_t signal_cb;  
    lv_design_cb_t design_cb;  

    void * ext_attr;             
    lv_style_list_t  style_list;


    uint8_t ext_click_pad_hor;  
    uint8_t ext_click_pad_ver;  




    lv_coord_t ext_draw_pad;  

     
    uint8_t click           : 1;  
    uint8_t drag            : 1;  
    uint8_t drag_throw      : 1;  
    uint8_t drag_parent     : 1;  
    uint8_t hidden          : 1;  
    uint8_t top             : 1;  
    uint8_t parent_event    : 1;  
    uint8_t adv_hittest     : 1;  
    uint8_t gesture_parent  : 1;  
    uint8_t focus_parent    : 1;  

    lv_drag_dir_t drag_dir  : 3;  
    lv_bidi_dir_t base_dir  : 2;  


    void * group_p;


    uint8_t protect;            
 
    lv_state_t state;


    lv_realign_t realign;        






} lv_obj_t;

enum {
    LV_OBJ_PART_MAIN,
    _LV_OBJ_PART_VIRTUAL_LAST = 0x01,
    _LV_OBJ_PART_REAL_LAST =    0x40,
    LV_OBJ_PART_ALL = 0xFF,
};

typedef uint8_t lv_obj_part_t;

 
typedef struct {
    const char * type[8]; 
 
} lv_obj_type_t;

typedef struct {
    lv_point_t * point;
    _Bool result;
} lv_hit_test_info_t;

typedef struct {
    uint8_t part;
    lv_style_list_t * result;
} lv_get_style_info_t;

typedef struct {
    uint8_t part;
    lv_state_t result;
} lv_get_state_info_t;



 



 
void lv_init(void);





 






 







 
lv_obj_t * lv_obj_create(lv_obj_t * parent, const lv_obj_t * copy);





 
lv_res_t lv_obj_del(lv_obj_t * obj);





 
void lv_obj_del_anim_ready_cb(lv_anim_t * a);







 
void lv_obj_del_async(struct _lv_obj_t * obj);




 
void lv_obj_clean(lv_obj_t * obj);







 
void lv_obj_invalidate_area(const lv_obj_t * obj, const lv_area_t * area);




 
void lv_obj_invalidate(const lv_obj_t * obj);







 
_Bool lv_obj_area_is_visible(const lv_obj_t * obj, lv_area_t * area);





 
_Bool lv_obj_is_visible(const lv_obj_t * obj);



 



 





 
void lv_obj_set_parent(lv_obj_t * obj, lv_obj_t * parent);




 
void lv_obj_move_foreground(lv_obj_t * obj);




 
void lv_obj_move_background(lv_obj_t * obj);



 






 
void lv_obj_set_pos(lv_obj_t * obj, lv_coord_t x, lv_coord_t y);





 
void lv_obj_set_x(lv_obj_t * obj, lv_coord_t x);





 
void lv_obj_set_y(lv_obj_t * obj, lv_coord_t y);






 
void lv_obj_set_size(lv_obj_t * obj, lv_coord_t w, lv_coord_t h);





 
void lv_obj_set_width(lv_obj_t * obj, lv_coord_t w);





 
void lv_obj_set_height(lv_obj_t * obj, lv_coord_t h);





 
void lv_obj_set_width_fit(lv_obj_t * obj, lv_coord_t w);





 
void lv_obj_set_height_fit(lv_obj_t * obj, lv_coord_t h);






 
void lv_obj_set_width_margin(lv_obj_t * obj, lv_coord_t w);






 
void lv_obj_set_height_margin(lv_obj_t * obj, lv_coord_t h);








 
void lv_obj_align(lv_obj_t * obj, const lv_obj_t * base, lv_align_t align, lv_coord_t x_ofs, lv_coord_t y_ofs);







 
void lv_obj_align_x(lv_obj_t * obj, const lv_obj_t * base, lv_align_t align, lv_coord_t x_ofs);







 
void lv_obj_align_y(lv_obj_t * obj, const lv_obj_t * base, lv_align_t align, lv_coord_t y_ofs);








 
void lv_obj_align_mid(lv_obj_t * obj, const lv_obj_t * base, lv_align_t align, lv_coord_t x_ofs, lv_coord_t y_ofs);








 
void lv_obj_align_mid_x(lv_obj_t * obj, const lv_obj_t * base, lv_align_t align, lv_coord_t x_ofs);







 
void lv_obj_align_mid_y(lv_obj_t * obj, const lv_obj_t * base, lv_align_t align, lv_coord_t y_ofs);




 
void lv_obj_realign(lv_obj_t * obj);






 
void lv_obj_set_auto_realign(lv_obj_t * obj, _Bool en);








 
void lv_obj_set_ext_click_area(lv_obj_t * obj, lv_coord_t left, lv_coord_t right, lv_coord_t top, lv_coord_t bottom);



 







 
void lv_obj_add_style(lv_obj_t * obj, uint8_t part, lv_style_t * style);







 
void lv_obj_remove_style(lv_obj_t * obj, uint8_t part, lv_style_t * style);








 
void lv_obj_clean_style_list(lv_obj_t * obj, uint8_t part);








 
void lv_obj_reset_style_list(lv_obj_t * obj, uint8_t part);





 
void lv_obj_refresh_style(lv_obj_t * obj, uint8_t part, lv_style_property_t prop);





 
void lv_obj_report_style_mod(lv_style_t * style);












 
void _lv_obj_set_style_local_color(lv_obj_t * obj, uint8_t type, lv_style_property_t prop, lv_color_t color);












 
void _lv_obj_set_style_local_int(lv_obj_t * obj, uint8_t type, lv_style_property_t prop, lv_style_int_t value);












 
void _lv_obj_set_style_local_opa(lv_obj_t * obj, uint8_t type, lv_style_property_t prop, lv_opa_t opa);












 
void _lv_obj_set_style_local_ptr(lv_obj_t * obj, uint8_t type, lv_style_property_t prop, const void * value);











 
_Bool lv_obj_remove_style_local_prop(lv_obj_t * obj, uint8_t part, lv_style_property_t prop);





 
void _lv_obj_disable_style_caching(lv_obj_t * obj, _Bool dis);



 





 
void lv_obj_set_hidden(lv_obj_t * obj, _Bool en);





 
void lv_obj_set_adv_hittest(lv_obj_t * obj, _Bool en);





 
void lv_obj_set_click(lv_obj_t * obj, _Bool en);






 
void lv_obj_set_top(lv_obj_t * obj, _Bool en);





 
void lv_obj_set_drag(lv_obj_t * obj, _Bool en);





 
void lv_obj_set_drag_dir(lv_obj_t * obj, lv_drag_dir_t drag_dir);





 
void lv_obj_set_drag_throw(lv_obj_t * obj, _Bool en);






 
void lv_obj_set_drag_parent(lv_obj_t * obj, _Bool en);






 
void lv_obj_set_focus_parent(lv_obj_t * obj, _Bool en);






 
void lv_obj_set_gesture_parent(lv_obj_t * obj, _Bool en);





 
void lv_obj_set_parent_event(lv_obj_t * obj, _Bool en);





 
void lv_obj_set_base_dir(lv_obj_t * obj, lv_bidi_dir_t dir);





 
void lv_obj_add_protect(lv_obj_t * obj, uint8_t prot);





 
void lv_obj_clear_protect(lv_obj_t * obj, uint8_t prot);







 
void lv_obj_set_state(lv_obj_t * obj, lv_state_t state);







 
void lv_obj_add_state(lv_obj_t * obj, lv_state_t state);







 
void lv_obj_clear_state(lv_obj_t * obj, lv_state_t state);






 
void lv_obj_finish_transitions(lv_obj_t * obj, uint8_t part);







 
void lv_obj_set_event_cb(lv_obj_t * obj, lv_event_cb_t event_cb);







 
lv_res_t lv_event_send(lv_obj_t * obj, lv_event_t event, const void * data);






 
lv_res_t lv_event_send_refresh(lv_obj_t * obj);




 
void lv_event_send_refresh_recursive(lv_obj_t * obj);










 
lv_res_t lv_event_send_func(lv_event_cb_t event_xcb, lv_obj_t * obj, lv_event_t event, const void * data);




 
const void * lv_event_get_data(void);






 
void lv_obj_set_signal_cb(lv_obj_t * obj, lv_signal_cb_t signal_cb);







 
lv_res_t lv_signal_send(lv_obj_t * obj, lv_signal_t signal, void * param);





 
void lv_obj_set_design_cb(lv_obj_t * obj, lv_design_cb_t design_cb);



 






 
void * lv_obj_allocate_ext_attr(lv_obj_t * obj, uint16_t ext_size);





 
void lv_obj_refresh_ext_draw_pad(lv_obj_t * obj);



 





 
lv_obj_t * lv_obj_get_screen(const lv_obj_t * obj);




 
lv_disp_t * lv_obj_get_disp(const lv_obj_t * obj);



 





 
lv_obj_t * lv_obj_get_parent(const lv_obj_t * obj);







 
lv_obj_t * lv_obj_get_child(const lv_obj_t * obj, const lv_obj_t * child);







 
lv_obj_t * lv_obj_get_child_back(const lv_obj_t * obj, const lv_obj_t * child);





 
uint16_t lv_obj_count_children(const lv_obj_t * obj);




 
uint16_t lv_obj_count_children_recursive(const lv_obj_t * obj);



 





 
void lv_obj_get_coords(const lv_obj_t * obj, lv_area_t * cords_p);





 
void lv_obj_get_inner_coords(const lv_obj_t * obj, lv_area_t * coords_p);





 
lv_coord_t lv_obj_get_x(const lv_obj_t * obj);





 
lv_coord_t lv_obj_get_y(const lv_obj_t * obj);





 
lv_coord_t lv_obj_get_width(const lv_obj_t * obj);





 
lv_coord_t lv_obj_get_height(const lv_obj_t * obj);





 
lv_coord_t lv_obj_get_width_fit(const lv_obj_t * obj);





 
lv_coord_t lv_obj_get_height_fit(const lv_obj_t * obj);






 
lv_coord_t lv_obj_get_height_margin(lv_obj_t * obj);






 
lv_coord_t lv_obj_get_width_margin(lv_obj_t * obj);











 
lv_coord_t lv_obj_get_width_grid(lv_obj_t * obj, uint8_t div, uint8_t span);











 
lv_coord_t lv_obj_get_height_grid(lv_obj_t * obj, uint8_t div, uint8_t span);





 
_Bool lv_obj_get_auto_realign(const lv_obj_t * obj);





 
lv_coord_t lv_obj_get_ext_click_pad_left(const lv_obj_t * obj);





 
lv_coord_t lv_obj_get_ext_click_pad_right(const lv_obj_t * obj);





 
lv_coord_t lv_obj_get_ext_click_pad_top(const lv_obj_t * obj);





 
lv_coord_t lv_obj_get_ext_click_pad_bottom(const lv_obj_t * obj);





 
lv_coord_t lv_obj_get_ext_draw_pad(const lv_obj_t * obj);



 







 
lv_style_list_t * lv_obj_get_style_list(const lv_obj_t * obj, uint8_t part);














 
lv_style_int_t _lv_obj_get_style_int(const lv_obj_t * obj, uint8_t part, lv_style_property_t prop);














 
lv_color_t _lv_obj_get_style_color(const lv_obj_t * obj, uint8_t part, lv_style_property_t prop);














 
lv_opa_t _lv_obj_get_style_opa(const lv_obj_t * obj, uint8_t part, lv_style_property_t prop);














 
const void * _lv_obj_get_style_ptr(const lv_obj_t * obj, uint8_t part, lv_style_property_t prop);







 
lv_style_t * lv_obj_get_local_style(lv_obj_t * obj, uint8_t part);


#line 1 "..\\GUI\\lvgl_src/lv_core/lv_obj_style_dec.h"




 










 










































 










































static inline lv_style_int_t lv_obj_get_style_radius (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_RADIUS); } static inline void lv_obj_set_style_local_radius (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_RADIUS | (state << 8), value); } static inline void lv_style_set_radius (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_RADIUS | (state << 8), value); }
static inline _Bool lv_obj_get_style_clip_corner (const lv_obj_t * obj, uint8_t part) { return (_Bool) _lv_obj_get_style_int (obj, part, LV_STYLE_CLIP_CORNER); } static inline void lv_obj_set_style_local_clip_corner (lv_obj_t * obj, uint8_t part, lv_state_t state, _Bool value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_CLIP_CORNER | (state << 8), value); } static inline void lv_style_set_clip_corner (lv_style_t * style, lv_state_t state, _Bool value) { _lv_style_set_int (style, LV_STYLE_CLIP_CORNER | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_size (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_SIZE); } static inline void lv_obj_set_style_local_size (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_SIZE | (state << 8), value); } static inline void lv_style_set_size (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_SIZE | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_transform_width (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_TRANSFORM_WIDTH); } static inline void lv_obj_set_style_local_transform_width (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_TRANSFORM_WIDTH | (state << 8), value); } static inline void lv_style_set_transform_width (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_TRANSFORM_WIDTH | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_transform_height (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_TRANSFORM_HEIGHT); } static inline void lv_obj_set_style_local_transform_height (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_TRANSFORM_HEIGHT | (state << 8), value); } static inline void lv_style_set_transform_height (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_TRANSFORM_HEIGHT | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_transform_angle (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_TRANSFORM_ANGLE); } static inline void lv_obj_set_style_local_transform_angle (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_TRANSFORM_ANGLE | (state << 8), value); } static inline void lv_style_set_transform_angle (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_TRANSFORM_ANGLE | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_transform_zoom (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_TRANSFORM_ZOOM); } static inline void lv_obj_set_style_local_transform_zoom (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_TRANSFORM_ZOOM | (state << 8), value); } static inline void lv_style_set_transform_zoom (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_TRANSFORM_ZOOM | (state << 8), value); }
static inline lv_opa_t lv_obj_get_style_opa_scale (const lv_obj_t * obj, uint8_t part) { return (lv_opa_t) _lv_obj_get_style_opa (obj, part, LV_STYLE_OPA_SCALE); } static inline void lv_obj_set_style_local_opa_scale (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_opa_t value) { _lv_obj_set_style_local_opa (obj, part, LV_STYLE_OPA_SCALE | (state << 8), value); } static inline void lv_style_set_opa_scale (lv_style_t * style, lv_state_t state, lv_opa_t value) { _lv_style_set_opa (style, LV_STYLE_OPA_SCALE | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_pad_top (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_PAD_TOP); } static inline void lv_obj_set_style_local_pad_top (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_PAD_TOP | (state << 8), value); } static inline void lv_style_set_pad_top (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_PAD_TOP | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_pad_bottom (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_PAD_BOTTOM); } static inline void lv_obj_set_style_local_pad_bottom (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_PAD_BOTTOM | (state << 8), value); } static inline void lv_style_set_pad_bottom (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_PAD_BOTTOM | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_pad_left (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_PAD_LEFT); } static inline void lv_obj_set_style_local_pad_left (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_PAD_LEFT | (state << 8), value); } static inline void lv_style_set_pad_left (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_PAD_LEFT | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_pad_right (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_PAD_RIGHT); } static inline void lv_obj_set_style_local_pad_right (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_PAD_RIGHT | (state << 8), value); } static inline void lv_style_set_pad_right (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_PAD_RIGHT | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_pad_inner (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_PAD_INNER); } static inline void lv_obj_set_style_local_pad_inner (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_PAD_INNER | (state << 8), value); } static inline void lv_style_set_pad_inner (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_PAD_INNER | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_margin_top (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_MARGIN_TOP); } static inline void lv_obj_set_style_local_margin_top (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_MARGIN_TOP | (state << 8), value); } static inline void lv_style_set_margin_top (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_MARGIN_TOP | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_margin_bottom (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_MARGIN_BOTTOM); } static inline void lv_obj_set_style_local_margin_bottom (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_MARGIN_BOTTOM | (state << 8), value); } static inline void lv_style_set_margin_bottom (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_MARGIN_BOTTOM | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_margin_left (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_MARGIN_LEFT); } static inline void lv_obj_set_style_local_margin_left (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_MARGIN_LEFT | (state << 8), value); } static inline void lv_style_set_margin_left (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_MARGIN_LEFT | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_margin_right (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_MARGIN_RIGHT); } static inline void lv_obj_set_style_local_margin_right (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_MARGIN_RIGHT | (state << 8), value); } static inline void lv_style_set_margin_right (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_MARGIN_RIGHT | (state << 8), value); }
static inline lv_blend_mode_t lv_obj_get_style_bg_blend_mode (const lv_obj_t * obj, uint8_t part) { return (lv_blend_mode_t) _lv_obj_get_style_int (obj, part, LV_STYLE_BG_BLEND_MODE); } static inline void lv_obj_set_style_local_bg_blend_mode (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_blend_mode_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_BG_BLEND_MODE | (state << 8), value); } static inline void lv_style_set_bg_blend_mode (lv_style_t * style, lv_state_t state, lv_blend_mode_t value) { _lv_style_set_int (style, LV_STYLE_BG_BLEND_MODE | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_bg_main_stop (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_BG_MAIN_STOP); } static inline void lv_obj_set_style_local_bg_main_stop (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_BG_MAIN_STOP | (state << 8), value); } static inline void lv_style_set_bg_main_stop (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_BG_MAIN_STOP | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_bg_grad_stop (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_BG_GRAD_STOP); } static inline void lv_obj_set_style_local_bg_grad_stop (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_BG_GRAD_STOP | (state << 8), value); } static inline void lv_style_set_bg_grad_stop (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_BG_GRAD_STOP | (state << 8), value); }
static inline lv_grad_dir_t lv_obj_get_style_bg_grad_dir (const lv_obj_t * obj, uint8_t part) { return (lv_grad_dir_t) _lv_obj_get_style_int (obj, part, LV_STYLE_BG_GRAD_DIR); } static inline void lv_obj_set_style_local_bg_grad_dir (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_grad_dir_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_BG_GRAD_DIR | (state << 8), value); } static inline void lv_style_set_bg_grad_dir (lv_style_t * style, lv_state_t state, lv_grad_dir_t value) { _lv_style_set_int (style, LV_STYLE_BG_GRAD_DIR | (state << 8), value); }
static inline lv_color_t lv_obj_get_style_bg_color (const lv_obj_t * obj, uint8_t part) { return _lv_obj_get_style_color (obj, part, LV_STYLE_BG_COLOR); } static inline void lv_obj_set_style_local_bg_color (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_color_t value) { _lv_obj_set_style_local_color (obj, part, LV_STYLE_BG_COLOR | (state << 8), value); } static inline void lv_style_set_bg_color (lv_style_t * style, lv_state_t state, lv_color_t value) { _lv_style_set_color (style, LV_STYLE_BG_COLOR | (state << 8), value); }
static inline lv_color_t lv_obj_get_style_bg_grad_color (const lv_obj_t * obj, uint8_t part) { return _lv_obj_get_style_color (obj, part, LV_STYLE_BG_GRAD_COLOR); } static inline void lv_obj_set_style_local_bg_grad_color (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_color_t value) { _lv_obj_set_style_local_color (obj, part, LV_STYLE_BG_GRAD_COLOR | (state << 8), value); } static inline void lv_style_set_bg_grad_color (lv_style_t * style, lv_state_t state, lv_color_t value) { _lv_style_set_color (style, LV_STYLE_BG_GRAD_COLOR | (state << 8), value); }
static inline lv_opa_t lv_obj_get_style_bg_opa (const lv_obj_t * obj, uint8_t part) { return (lv_opa_t) _lv_obj_get_style_opa (obj, part, LV_STYLE_BG_OPA); } static inline void lv_obj_set_style_local_bg_opa (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_opa_t value) { _lv_obj_set_style_local_opa (obj, part, LV_STYLE_BG_OPA | (state << 8), value); } static inline void lv_style_set_bg_opa (lv_style_t * style, lv_state_t state, lv_opa_t value) { _lv_style_set_opa (style, LV_STYLE_BG_OPA | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_border_width (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_BORDER_WIDTH); } static inline void lv_obj_set_style_local_border_width (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_BORDER_WIDTH | (state << 8), value); } static inline void lv_style_set_border_width (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_BORDER_WIDTH | (state << 8), value); }
static inline lv_border_side_t lv_obj_get_style_border_side (const lv_obj_t * obj, uint8_t part) { return (lv_border_side_t) _lv_obj_get_style_int (obj, part, LV_STYLE_BORDER_SIDE); } static inline void lv_obj_set_style_local_border_side (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_border_side_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_BORDER_SIDE | (state << 8), value); } static inline void lv_style_set_border_side (lv_style_t * style, lv_state_t state, lv_border_side_t value) { _lv_style_set_int (style, LV_STYLE_BORDER_SIDE | (state << 8), value); }
static inline lv_blend_mode_t lv_obj_get_style_border_blend_mode (const lv_obj_t * obj, uint8_t part) { return (lv_blend_mode_t) _lv_obj_get_style_int (obj, part, LV_STYLE_BORDER_BLEND_MODE); } static inline void lv_obj_set_style_local_border_blend_mode (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_blend_mode_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_BORDER_BLEND_MODE | (state << 8), value); } static inline void lv_style_set_border_blend_mode (lv_style_t * style, lv_state_t state, lv_blend_mode_t value) { _lv_style_set_int (style, LV_STYLE_BORDER_BLEND_MODE | (state << 8), value); }
static inline _Bool lv_obj_get_style_border_post (const lv_obj_t * obj, uint8_t part) { return (_Bool) _lv_obj_get_style_int (obj, part, LV_STYLE_BORDER_POST); } static inline void lv_obj_set_style_local_border_post (lv_obj_t * obj, uint8_t part, lv_state_t state, _Bool value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_BORDER_POST | (state << 8), value); } static inline void lv_style_set_border_post (lv_style_t * style, lv_state_t state, _Bool value) { _lv_style_set_int (style, LV_STYLE_BORDER_POST | (state << 8), value); }
static inline lv_color_t lv_obj_get_style_border_color (const lv_obj_t * obj, uint8_t part) { return _lv_obj_get_style_color (obj, part, LV_STYLE_BORDER_COLOR); } static inline void lv_obj_set_style_local_border_color (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_color_t value) { _lv_obj_set_style_local_color (obj, part, LV_STYLE_BORDER_COLOR | (state << 8), value); } static inline void lv_style_set_border_color (lv_style_t * style, lv_state_t state, lv_color_t value) { _lv_style_set_color (style, LV_STYLE_BORDER_COLOR | (state << 8), value); }
static inline lv_opa_t lv_obj_get_style_border_opa (const lv_obj_t * obj, uint8_t part) { return (lv_opa_t) _lv_obj_get_style_opa (obj, part, LV_STYLE_BORDER_OPA); } static inline void lv_obj_set_style_local_border_opa (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_opa_t value) { _lv_obj_set_style_local_opa (obj, part, LV_STYLE_BORDER_OPA | (state << 8), value); } static inline void lv_style_set_border_opa (lv_style_t * style, lv_state_t state, lv_opa_t value) { _lv_style_set_opa (style, LV_STYLE_BORDER_OPA | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_outline_width (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_OUTLINE_WIDTH); } static inline void lv_obj_set_style_local_outline_width (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_OUTLINE_WIDTH | (state << 8), value); } static inline void lv_style_set_outline_width (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_OUTLINE_WIDTH | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_outline_pad (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_OUTLINE_PAD); } static inline void lv_obj_set_style_local_outline_pad (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_OUTLINE_PAD | (state << 8), value); } static inline void lv_style_set_outline_pad (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_OUTLINE_PAD | (state << 8), value); }
static inline lv_blend_mode_t lv_obj_get_style_outline_blend_mode (const lv_obj_t * obj, uint8_t part) { return (lv_blend_mode_t) _lv_obj_get_style_int (obj, part, LV_STYLE_OUTLINE_BLEND_MODE); } static inline void lv_obj_set_style_local_outline_blend_mode (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_blend_mode_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_OUTLINE_BLEND_MODE | (state << 8), value); } static inline void lv_style_set_outline_blend_mode (lv_style_t * style, lv_state_t state, lv_blend_mode_t value) { _lv_style_set_int (style, LV_STYLE_OUTLINE_BLEND_MODE | (state << 8), value); }
static inline lv_color_t lv_obj_get_style_outline_color (const lv_obj_t * obj, uint8_t part) { return _lv_obj_get_style_color (obj, part, LV_STYLE_OUTLINE_COLOR); } static inline void lv_obj_set_style_local_outline_color (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_color_t value) { _lv_obj_set_style_local_color (obj, part, LV_STYLE_OUTLINE_COLOR | (state << 8), value); } static inline void lv_style_set_outline_color (lv_style_t * style, lv_state_t state, lv_color_t value) { _lv_style_set_color (style, LV_STYLE_OUTLINE_COLOR | (state << 8), value); }
static inline lv_opa_t lv_obj_get_style_outline_opa (const lv_obj_t * obj, uint8_t part) { return (lv_opa_t) _lv_obj_get_style_opa (obj, part, LV_STYLE_OUTLINE_OPA); } static inline void lv_obj_set_style_local_outline_opa (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_opa_t value) { _lv_obj_set_style_local_opa (obj, part, LV_STYLE_OUTLINE_OPA | (state << 8), value); } static inline void lv_style_set_outline_opa (lv_style_t * style, lv_state_t state, lv_opa_t value) { _lv_style_set_opa (style, LV_STYLE_OUTLINE_OPA | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_shadow_width (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_SHADOW_WIDTH); } static inline void lv_obj_set_style_local_shadow_width (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_SHADOW_WIDTH | (state << 8), value); } static inline void lv_style_set_shadow_width (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_SHADOW_WIDTH | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_shadow_ofs_x (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_SHADOW_OFS_X); } static inline void lv_obj_set_style_local_shadow_ofs_x (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_SHADOW_OFS_X | (state << 8), value); } static inline void lv_style_set_shadow_ofs_x (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_SHADOW_OFS_X | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_shadow_ofs_y (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_SHADOW_OFS_Y); } static inline void lv_obj_set_style_local_shadow_ofs_y (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_SHADOW_OFS_Y | (state << 8), value); } static inline void lv_style_set_shadow_ofs_y (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_SHADOW_OFS_Y | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_shadow_spread (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_SHADOW_SPREAD); } static inline void lv_obj_set_style_local_shadow_spread (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_SHADOW_SPREAD | (state << 8), value); } static inline void lv_style_set_shadow_spread (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_SHADOW_SPREAD | (state << 8), value); }
static inline lv_blend_mode_t lv_obj_get_style_shadow_blend_mode (const lv_obj_t * obj, uint8_t part) { return (lv_blend_mode_t) _lv_obj_get_style_int (obj, part, LV_STYLE_SHADOW_BLEND_MODE); } static inline void lv_obj_set_style_local_shadow_blend_mode (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_blend_mode_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_SHADOW_BLEND_MODE | (state << 8), value); } static inline void lv_style_set_shadow_blend_mode (lv_style_t * style, lv_state_t state, lv_blend_mode_t value) { _lv_style_set_int (style, LV_STYLE_SHADOW_BLEND_MODE | (state << 8), value); }
static inline lv_color_t lv_obj_get_style_shadow_color (const lv_obj_t * obj, uint8_t part) { return _lv_obj_get_style_color (obj, part, LV_STYLE_SHADOW_COLOR); } static inline void lv_obj_set_style_local_shadow_color (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_color_t value) { _lv_obj_set_style_local_color (obj, part, LV_STYLE_SHADOW_COLOR | (state << 8), value); } static inline void lv_style_set_shadow_color (lv_style_t * style, lv_state_t state, lv_color_t value) { _lv_style_set_color (style, LV_STYLE_SHADOW_COLOR | (state << 8), value); }
static inline lv_opa_t lv_obj_get_style_shadow_opa (const lv_obj_t * obj, uint8_t part) { return (lv_opa_t) _lv_obj_get_style_opa (obj, part, LV_STYLE_SHADOW_OPA); } static inline void lv_obj_set_style_local_shadow_opa (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_opa_t value) { _lv_obj_set_style_local_opa (obj, part, LV_STYLE_SHADOW_OPA | (state << 8), value); } static inline void lv_style_set_shadow_opa (lv_style_t * style, lv_state_t state, lv_opa_t value) { _lv_style_set_opa (style, LV_STYLE_SHADOW_OPA | (state << 8), value); }
static inline _Bool lv_obj_get_style_pattern_repeat (const lv_obj_t * obj, uint8_t part) { return (_Bool) _lv_obj_get_style_int (obj, part, LV_STYLE_PATTERN_REPEAT); } static inline void lv_obj_set_style_local_pattern_repeat (lv_obj_t * obj, uint8_t part, lv_state_t state, _Bool value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_PATTERN_REPEAT | (state << 8), value); } static inline void lv_style_set_pattern_repeat (lv_style_t * style, lv_state_t state, _Bool value) { _lv_style_set_int (style, LV_STYLE_PATTERN_REPEAT | (state << 8), value); }
static inline lv_blend_mode_t lv_obj_get_style_pattern_blend_mode (const lv_obj_t * obj, uint8_t part) { return (lv_blend_mode_t) _lv_obj_get_style_int (obj, part, LV_STYLE_PATTERN_BLEND_MODE); } static inline void lv_obj_set_style_local_pattern_blend_mode (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_blend_mode_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_PATTERN_BLEND_MODE | (state << 8), value); } static inline void lv_style_set_pattern_blend_mode (lv_style_t * style, lv_state_t state, lv_blend_mode_t value) { _lv_style_set_int (style, LV_STYLE_PATTERN_BLEND_MODE | (state << 8), value); }
static inline lv_color_t lv_obj_get_style_pattern_recolor (const lv_obj_t * obj, uint8_t part) { return _lv_obj_get_style_color (obj, part, LV_STYLE_PATTERN_RECOLOR); } static inline void lv_obj_set_style_local_pattern_recolor (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_color_t value) { _lv_obj_set_style_local_color (obj, part, LV_STYLE_PATTERN_RECOLOR | (state << 8), value); } static inline void lv_style_set_pattern_recolor (lv_style_t * style, lv_state_t state, lv_color_t value) { _lv_style_set_color (style, LV_STYLE_PATTERN_RECOLOR | (state << 8), value); }
static inline lv_opa_t lv_obj_get_style_pattern_opa (const lv_obj_t * obj, uint8_t part) { return (lv_opa_t) _lv_obj_get_style_opa (obj, part, LV_STYLE_PATTERN_OPA); } static inline void lv_obj_set_style_local_pattern_opa (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_opa_t value) { _lv_obj_set_style_local_opa (obj, part, LV_STYLE_PATTERN_OPA | (state << 8), value); } static inline void lv_style_set_pattern_opa (lv_style_t * style, lv_state_t state, lv_opa_t value) { _lv_style_set_opa (style, LV_STYLE_PATTERN_OPA | (state << 8), value); }
static inline lv_opa_t lv_obj_get_style_pattern_recolor_opa (const lv_obj_t * obj, uint8_t part) { return (lv_opa_t) _lv_obj_get_style_opa (obj, part, LV_STYLE_PATTERN_RECOLOR_OPA); } static inline void lv_obj_set_style_local_pattern_recolor_opa (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_opa_t value) { _lv_obj_set_style_local_opa (obj, part, LV_STYLE_PATTERN_RECOLOR_OPA | (state << 8), value); } static inline void lv_style_set_pattern_recolor_opa (lv_style_t * style, lv_state_t state, lv_opa_t value) { _lv_style_set_opa (style, LV_STYLE_PATTERN_RECOLOR_OPA | (state << 8), value); }
static inline const void * lv_obj_get_style_pattern_image (const lv_obj_t * obj, uint8_t part) { return (const void *) _lv_obj_get_style_ptr (obj, part, LV_STYLE_PATTERN_IMAGE); } static inline void lv_obj_set_style_local_pattern_image (lv_obj_t * obj, uint8_t part, lv_state_t state, const void * value) { _lv_obj_set_style_local_ptr (obj, part, LV_STYLE_PATTERN_IMAGE | (state << 8), value); } static inline void lv_style_set_pattern_image (lv_style_t * style, lv_state_t state, const void * value) { _lv_style_set_ptr (style, LV_STYLE_PATTERN_IMAGE | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_value_letter_space (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_VALUE_LETTER_SPACE); } static inline void lv_obj_set_style_local_value_letter_space (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_VALUE_LETTER_SPACE | (state << 8), value); } static inline void lv_style_set_value_letter_space (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_VALUE_LETTER_SPACE | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_value_line_space (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_VALUE_LINE_SPACE); } static inline void lv_obj_set_style_local_value_line_space (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_VALUE_LINE_SPACE | (state << 8), value); } static inline void lv_style_set_value_line_space (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_VALUE_LINE_SPACE | (state << 8), value); }
static inline lv_blend_mode_t lv_obj_get_style_value_blend_mode (const lv_obj_t * obj, uint8_t part) { return (lv_blend_mode_t) _lv_obj_get_style_int (obj, part, LV_STYLE_VALUE_BLEND_MODE); } static inline void lv_obj_set_style_local_value_blend_mode (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_blend_mode_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_VALUE_BLEND_MODE | (state << 8), value); } static inline void lv_style_set_value_blend_mode (lv_style_t * style, lv_state_t state, lv_blend_mode_t value) { _lv_style_set_int (style, LV_STYLE_VALUE_BLEND_MODE | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_value_ofs_x (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_VALUE_OFS_X); } static inline void lv_obj_set_style_local_value_ofs_x (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_VALUE_OFS_X | (state << 8), value); } static inline void lv_style_set_value_ofs_x (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_VALUE_OFS_X | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_value_ofs_y (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_VALUE_OFS_Y); } static inline void lv_obj_set_style_local_value_ofs_y (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_VALUE_OFS_Y | (state << 8), value); } static inline void lv_style_set_value_ofs_y (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_VALUE_OFS_Y | (state << 8), value); }
static inline lv_align_t lv_obj_get_style_value_align (const lv_obj_t * obj, uint8_t part) { return (lv_align_t) _lv_obj_get_style_int (obj, part, LV_STYLE_VALUE_ALIGN); } static inline void lv_obj_set_style_local_value_align (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_align_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_VALUE_ALIGN | (state << 8), value); } static inline void lv_style_set_value_align (lv_style_t * style, lv_state_t state, lv_align_t value) { _lv_style_set_int (style, LV_STYLE_VALUE_ALIGN | (state << 8), value); }
static inline lv_color_t lv_obj_get_style_value_color (const lv_obj_t * obj, uint8_t part) { return _lv_obj_get_style_color (obj, part, LV_STYLE_VALUE_COLOR); } static inline void lv_obj_set_style_local_value_color (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_color_t value) { _lv_obj_set_style_local_color (obj, part, LV_STYLE_VALUE_COLOR | (state << 8), value); } static inline void lv_style_set_value_color (lv_style_t * style, lv_state_t state, lv_color_t value) { _lv_style_set_color (style, LV_STYLE_VALUE_COLOR | (state << 8), value); }
static inline lv_opa_t lv_obj_get_style_value_opa (const lv_obj_t * obj, uint8_t part) { return (lv_opa_t) _lv_obj_get_style_opa (obj, part, LV_STYLE_VALUE_OPA); } static inline void lv_obj_set_style_local_value_opa (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_opa_t value) { _lv_obj_set_style_local_opa (obj, part, LV_STYLE_VALUE_OPA | (state << 8), value); } static inline void lv_style_set_value_opa (lv_style_t * style, lv_state_t state, lv_opa_t value) { _lv_style_set_opa (style, LV_STYLE_VALUE_OPA | (state << 8), value); }
static inline const lv_font_t * lv_obj_get_style_value_font (const lv_obj_t * obj, uint8_t part) { return (const lv_font_t *) _lv_obj_get_style_ptr (obj, part, LV_STYLE_VALUE_FONT); } static inline void lv_obj_set_style_local_value_font (lv_obj_t * obj, uint8_t part, lv_state_t state, const lv_font_t * value) { _lv_obj_set_style_local_ptr (obj, part, LV_STYLE_VALUE_FONT | (state << 8), value); } static inline void lv_style_set_value_font (lv_style_t * style, lv_state_t state, const lv_font_t * value) { _lv_style_set_ptr (style, LV_STYLE_VALUE_FONT | (state << 8), value); }
static inline const char * lv_obj_get_style_value_str (const lv_obj_t * obj, uint8_t part) { return (const char *) _lv_obj_get_style_ptr (obj, part, LV_STYLE_VALUE_STR); } static inline void lv_obj_set_style_local_value_str (lv_obj_t * obj, uint8_t part, lv_state_t state, const char * value) { _lv_obj_set_style_local_ptr (obj, part, LV_STYLE_VALUE_STR | (state << 8), value); } static inline void lv_style_set_value_str (lv_style_t * style, lv_state_t state, const char * value) { _lv_style_set_ptr (style, LV_STYLE_VALUE_STR | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_text_letter_space (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_TEXT_LETTER_SPACE); } static inline void lv_obj_set_style_local_text_letter_space (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_TEXT_LETTER_SPACE | (state << 8), value); } static inline void lv_style_set_text_letter_space (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_TEXT_LETTER_SPACE | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_text_line_space (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_TEXT_LINE_SPACE); } static inline void lv_obj_set_style_local_text_line_space (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_TEXT_LINE_SPACE | (state << 8), value); } static inline void lv_style_set_text_line_space (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_TEXT_LINE_SPACE | (state << 8), value); }
static inline lv_text_decor_t lv_obj_get_style_text_decor (const lv_obj_t * obj, uint8_t part) { return (lv_text_decor_t) _lv_obj_get_style_int (obj, part, LV_STYLE_TEXT_DECOR); } static inline void lv_obj_set_style_local_text_decor (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_text_decor_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_TEXT_DECOR | (state << 8), value); } static inline void lv_style_set_text_decor (lv_style_t * style, lv_state_t state, lv_text_decor_t value) { _lv_style_set_int (style, LV_STYLE_TEXT_DECOR | (state << 8), value); }
static inline lv_blend_mode_t lv_obj_get_style_text_blend_mode (const lv_obj_t * obj, uint8_t part) { return (lv_blend_mode_t) _lv_obj_get_style_int (obj, part, LV_STYLE_TEXT_BLEND_MODE); } static inline void lv_obj_set_style_local_text_blend_mode (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_blend_mode_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_TEXT_BLEND_MODE | (state << 8), value); } static inline void lv_style_set_text_blend_mode (lv_style_t * style, lv_state_t state, lv_blend_mode_t value) { _lv_style_set_int (style, LV_STYLE_TEXT_BLEND_MODE | (state << 8), value); }
static inline lv_color_t lv_obj_get_style_text_color (const lv_obj_t * obj, uint8_t part) { return _lv_obj_get_style_color (obj, part, LV_STYLE_TEXT_COLOR); } static inline void lv_obj_set_style_local_text_color (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_color_t value) { _lv_obj_set_style_local_color (obj, part, LV_STYLE_TEXT_COLOR | (state << 8), value); } static inline void lv_style_set_text_color (lv_style_t * style, lv_state_t state, lv_color_t value) { _lv_style_set_color (style, LV_STYLE_TEXT_COLOR | (state << 8), value); }
static inline lv_color_t lv_obj_get_style_text_sel_color (const lv_obj_t * obj, uint8_t part) { return _lv_obj_get_style_color (obj, part, LV_STYLE_TEXT_SEL_COLOR); } static inline void lv_obj_set_style_local_text_sel_color (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_color_t value) { _lv_obj_set_style_local_color (obj, part, LV_STYLE_TEXT_SEL_COLOR | (state << 8), value); } static inline void lv_style_set_text_sel_color (lv_style_t * style, lv_state_t state, lv_color_t value) { _lv_style_set_color (style, LV_STYLE_TEXT_SEL_COLOR | (state << 8), value); }
static inline lv_color_t lv_obj_get_style_text_sel_bg_color (const lv_obj_t * obj, uint8_t part) { return _lv_obj_get_style_color (obj, part, LV_STYLE_TEXT_SEL_BG_COLOR); } static inline void lv_obj_set_style_local_text_sel_bg_color (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_color_t value) { _lv_obj_set_style_local_color (obj, part, LV_STYLE_TEXT_SEL_BG_COLOR | (state << 8), value); } static inline void lv_style_set_text_sel_bg_color (lv_style_t * style, lv_state_t state, lv_color_t value) { _lv_style_set_color (style, LV_STYLE_TEXT_SEL_BG_COLOR | (state << 8), value); }
static inline lv_opa_t lv_obj_get_style_text_opa (const lv_obj_t * obj, uint8_t part) { return (lv_opa_t) _lv_obj_get_style_opa (obj, part, LV_STYLE_TEXT_OPA); } static inline void lv_obj_set_style_local_text_opa (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_opa_t value) { _lv_obj_set_style_local_opa (obj, part, LV_STYLE_TEXT_OPA | (state << 8), value); } static inline void lv_style_set_text_opa (lv_style_t * style, lv_state_t state, lv_opa_t value) { _lv_style_set_opa (style, LV_STYLE_TEXT_OPA | (state << 8), value); }
static inline const lv_font_t * lv_obj_get_style_text_font (const lv_obj_t * obj, uint8_t part) { return (const lv_font_t *) _lv_obj_get_style_ptr (obj, part, LV_STYLE_TEXT_FONT); } static inline void lv_obj_set_style_local_text_font (lv_obj_t * obj, uint8_t part, lv_state_t state, const lv_font_t * value) { _lv_obj_set_style_local_ptr (obj, part, LV_STYLE_TEXT_FONT | (state << 8), value); } static inline void lv_style_set_text_font (lv_style_t * style, lv_state_t state, const lv_font_t * value) { _lv_style_set_ptr (style, LV_STYLE_TEXT_FONT | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_line_width (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_LINE_WIDTH); } static inline void lv_obj_set_style_local_line_width (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_LINE_WIDTH | (state << 8), value); } static inline void lv_style_set_line_width (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_LINE_WIDTH | (state << 8), value); }
static inline lv_blend_mode_t lv_obj_get_style_line_blend_mode (const lv_obj_t * obj, uint8_t part) { return (lv_blend_mode_t) _lv_obj_get_style_int (obj, part, LV_STYLE_LINE_BLEND_MODE); } static inline void lv_obj_set_style_local_line_blend_mode (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_blend_mode_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_LINE_BLEND_MODE | (state << 8), value); } static inline void lv_style_set_line_blend_mode (lv_style_t * style, lv_state_t state, lv_blend_mode_t value) { _lv_style_set_int (style, LV_STYLE_LINE_BLEND_MODE | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_line_dash_width (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_LINE_DASH_WIDTH); } static inline void lv_obj_set_style_local_line_dash_width (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_LINE_DASH_WIDTH | (state << 8), value); } static inline void lv_style_set_line_dash_width (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_LINE_DASH_WIDTH | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_line_dash_gap (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_LINE_DASH_GAP); } static inline void lv_obj_set_style_local_line_dash_gap (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_LINE_DASH_GAP | (state << 8), value); } static inline void lv_style_set_line_dash_gap (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_LINE_DASH_GAP | (state << 8), value); }
static inline _Bool lv_obj_get_style_line_rounded (const lv_obj_t * obj, uint8_t part) { return (_Bool) _lv_obj_get_style_int (obj, part, LV_STYLE_LINE_ROUNDED); } static inline void lv_obj_set_style_local_line_rounded (lv_obj_t * obj, uint8_t part, lv_state_t state, _Bool value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_LINE_ROUNDED | (state << 8), value); } static inline void lv_style_set_line_rounded (lv_style_t * style, lv_state_t state, _Bool value) { _lv_style_set_int (style, LV_STYLE_LINE_ROUNDED | (state << 8), value); }
static inline lv_color_t lv_obj_get_style_line_color (const lv_obj_t * obj, uint8_t part) { return _lv_obj_get_style_color (obj, part, LV_STYLE_LINE_COLOR); } static inline void lv_obj_set_style_local_line_color (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_color_t value) { _lv_obj_set_style_local_color (obj, part, LV_STYLE_LINE_COLOR | (state << 8), value); } static inline void lv_style_set_line_color (lv_style_t * style, lv_state_t state, lv_color_t value) { _lv_style_set_color (style, LV_STYLE_LINE_COLOR | (state << 8), value); }
static inline lv_opa_t lv_obj_get_style_line_opa (const lv_obj_t * obj, uint8_t part) { return (lv_opa_t) _lv_obj_get_style_opa (obj, part, LV_STYLE_LINE_OPA); } static inline void lv_obj_set_style_local_line_opa (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_opa_t value) { _lv_obj_set_style_local_opa (obj, part, LV_STYLE_LINE_OPA | (state << 8), value); } static inline void lv_style_set_line_opa (lv_style_t * style, lv_state_t state, lv_opa_t value) { _lv_style_set_opa (style, LV_STYLE_LINE_OPA | (state << 8), value); }
static inline lv_blend_mode_t lv_obj_get_style_image_blend_mode (const lv_obj_t * obj, uint8_t part) { return (lv_blend_mode_t) _lv_obj_get_style_int (obj, part, LV_STYLE_IMAGE_BLEND_MODE); } static inline void lv_obj_set_style_local_image_blend_mode (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_blend_mode_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_IMAGE_BLEND_MODE | (state << 8), value); } static inline void lv_style_set_image_blend_mode (lv_style_t * style, lv_state_t state, lv_blend_mode_t value) { _lv_style_set_int (style, LV_STYLE_IMAGE_BLEND_MODE | (state << 8), value); }
static inline lv_color_t lv_obj_get_style_image_recolor (const lv_obj_t * obj, uint8_t part) { return _lv_obj_get_style_color (obj, part, LV_STYLE_IMAGE_RECOLOR); } static inline void lv_obj_set_style_local_image_recolor (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_color_t value) { _lv_obj_set_style_local_color (obj, part, LV_STYLE_IMAGE_RECOLOR | (state << 8), value); } static inline void lv_style_set_image_recolor (lv_style_t * style, lv_state_t state, lv_color_t value) { _lv_style_set_color (style, LV_STYLE_IMAGE_RECOLOR | (state << 8), value); }
static inline lv_opa_t lv_obj_get_style_image_opa (const lv_obj_t * obj, uint8_t part) { return (lv_opa_t) _lv_obj_get_style_opa (obj, part, LV_STYLE_IMAGE_OPA); } static inline void lv_obj_set_style_local_image_opa (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_opa_t value) { _lv_obj_set_style_local_opa (obj, part, LV_STYLE_IMAGE_OPA | (state << 8), value); } static inline void lv_style_set_image_opa (lv_style_t * style, lv_state_t state, lv_opa_t value) { _lv_style_set_opa (style, LV_STYLE_IMAGE_OPA | (state << 8), value); }
static inline lv_opa_t lv_obj_get_style_image_recolor_opa (const lv_obj_t * obj, uint8_t part) { return (lv_opa_t) _lv_obj_get_style_opa (obj, part, LV_STYLE_IMAGE_RECOLOR_OPA); } static inline void lv_obj_set_style_local_image_recolor_opa (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_opa_t value) { _lv_obj_set_style_local_opa (obj, part, LV_STYLE_IMAGE_RECOLOR_OPA | (state << 8), value); } static inline void lv_style_set_image_recolor_opa (lv_style_t * style, lv_state_t state, lv_opa_t value) { _lv_style_set_opa (style, LV_STYLE_IMAGE_RECOLOR_OPA | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_transition_time (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_TRANSITION_TIME); } static inline void lv_obj_set_style_local_transition_time (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_TRANSITION_TIME | (state << 8), value); } static inline void lv_style_set_transition_time (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_TRANSITION_TIME | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_transition_delay (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_TRANSITION_DELAY); } static inline void lv_obj_set_style_local_transition_delay (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_TRANSITION_DELAY | (state << 8), value); } static inline void lv_style_set_transition_delay (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_TRANSITION_DELAY | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_transition_prop_1 (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_TRANSITION_PROP_1); } static inline void lv_obj_set_style_local_transition_prop_1 (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_TRANSITION_PROP_1 | (state << 8), value); } static inline void lv_style_set_transition_prop_1 (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_TRANSITION_PROP_1 | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_transition_prop_2 (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_TRANSITION_PROP_2); } static inline void lv_obj_set_style_local_transition_prop_2 (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_TRANSITION_PROP_2 | (state << 8), value); } static inline void lv_style_set_transition_prop_2 (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_TRANSITION_PROP_2 | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_transition_prop_3 (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_TRANSITION_PROP_3); } static inline void lv_obj_set_style_local_transition_prop_3 (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_TRANSITION_PROP_3 | (state << 8), value); } static inline void lv_style_set_transition_prop_3 (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_TRANSITION_PROP_3 | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_transition_prop_4 (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_TRANSITION_PROP_4); } static inline void lv_obj_set_style_local_transition_prop_4 (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_TRANSITION_PROP_4 | (state << 8), value); } static inline void lv_style_set_transition_prop_4 (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_TRANSITION_PROP_4 | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_transition_prop_5 (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_TRANSITION_PROP_5); } static inline void lv_obj_set_style_local_transition_prop_5 (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_TRANSITION_PROP_5 | (state << 8), value); } static inline void lv_style_set_transition_prop_5 (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_TRANSITION_PROP_5 | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_transition_prop_6 (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_TRANSITION_PROP_6); } static inline void lv_obj_set_style_local_transition_prop_6 (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_TRANSITION_PROP_6 | (state << 8), value); } static inline void lv_style_set_transition_prop_6 (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_TRANSITION_PROP_6 | (state << 8), value); }

static inline lv_anim_path_t * lv_obj_get_style_transition_path (const lv_obj_t * obj, uint8_t part) { return (lv_anim_path_t *) _lv_obj_get_style_ptr (obj, part, LV_STYLE_TRANSITION_PATH); } static inline void lv_obj_set_style_local_transition_path (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_anim_path_t * value) { _lv_obj_set_style_local_ptr (obj, part, LV_STYLE_TRANSITION_PATH | (state << 8), value); } static inline void lv_style_set_transition_path (lv_style_t * style, lv_state_t state, lv_anim_path_t * value) { _lv_style_set_ptr (style, LV_STYLE_TRANSITION_PATH | (state << 8), value); }




static inline lv_style_int_t lv_obj_get_style_scale_width (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_SCALE_WIDTH); } static inline void lv_obj_set_style_local_scale_width (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_SCALE_WIDTH | (state << 8), value); } static inline void lv_style_set_scale_width (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_SCALE_WIDTH | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_scale_border_width (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_SCALE_BORDER_WIDTH); } static inline void lv_obj_set_style_local_scale_border_width (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_SCALE_BORDER_WIDTH | (state << 8), value); } static inline void lv_style_set_scale_border_width (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_SCALE_BORDER_WIDTH | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_scale_end_border_width (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_SCALE_END_BORDER_WIDTH); } static inline void lv_obj_set_style_local_scale_end_border_width (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_SCALE_END_BORDER_WIDTH | (state << 8), value); } static inline void lv_style_set_scale_end_border_width (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_SCALE_END_BORDER_WIDTH | (state << 8), value); }
static inline lv_style_int_t lv_obj_get_style_scale_end_line_width (const lv_obj_t * obj, uint8_t part) { return (lv_style_int_t) _lv_obj_get_style_int (obj, part, LV_STYLE_SCALE_END_LINE_WIDTH); } static inline void lv_obj_set_style_local_scale_end_line_width (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value) { _lv_obj_set_style_local_int (obj, part, LV_STYLE_SCALE_END_LINE_WIDTH | (state << 8), value); } static inline void lv_style_set_scale_end_line_width (lv_style_t * style, lv_state_t state, lv_style_int_t value) { _lv_style_set_int (style, LV_STYLE_SCALE_END_LINE_WIDTH | (state << 8), value); }
static inline lv_color_t lv_obj_get_style_scale_grad_color (const lv_obj_t * obj, uint8_t part) { return _lv_obj_get_style_color (obj, part, LV_STYLE_SCALE_GRAD_COLOR); } static inline void lv_obj_set_style_local_scale_grad_color (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_color_t value) { _lv_obj_set_style_local_color (obj, part, LV_STYLE_SCALE_GRAD_COLOR | (state << 8), value); } static inline void lv_style_set_scale_grad_color (lv_style_t * style, lv_state_t state, lv_color_t value) { _lv_style_set_color (style, LV_STYLE_SCALE_GRAD_COLOR | (state << 8), value); }
static inline lv_color_t lv_obj_get_style_scale_end_color (const lv_obj_t * obj, uint8_t part) { return _lv_obj_get_style_color (obj, part, LV_STYLE_SCALE_END_COLOR); } static inline void lv_obj_set_style_local_scale_end_color (lv_obj_t * obj, uint8_t part, lv_state_t state, lv_color_t value) { _lv_obj_set_style_local_color (obj, part, LV_STYLE_SCALE_END_COLOR | (state << 8), value); } static inline void lv_style_set_scale_end_color (lv_style_t * style, lv_state_t state, lv_color_t value) { _lv_style_set_color (style, LV_STYLE_SCALE_END_COLOR | (state << 8), value); }




static inline void lv_obj_set_style_local_pad_all(lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value)
{
    lv_obj_set_style_local_pad_top(obj, part, state, value);
    lv_obj_set_style_local_pad_bottom(obj, part, state, value);
    lv_obj_set_style_local_pad_left(obj, part, state, value);
    lv_obj_set_style_local_pad_right(obj, part, state, value);
}


static inline void lv_style_set_pad_all(lv_style_t * style, lv_state_t state, lv_style_int_t value)
{
    lv_style_set_pad_top(style, state, value);
    lv_style_set_pad_bottom(style, state, value);
    lv_style_set_pad_left(style, state, value);
    lv_style_set_pad_right(style, state, value);
}


static inline void lv_obj_set_style_local_pad_hor(lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value)
{
    lv_obj_set_style_local_pad_left(obj, part, state, value);
    lv_obj_set_style_local_pad_right(obj, part, state, value);
}


static inline void lv_style_set_pad_hor(lv_style_t * style, lv_state_t state, lv_style_int_t value)
{
    lv_style_set_pad_left(style, state, value);
    lv_style_set_pad_right(style, state, value);
}


static inline void lv_obj_set_style_local_pad_ver(lv_obj_t * obj, uint8_t part, lv_state_t state, lv_style_int_t value)
{
    lv_obj_set_style_local_pad_top(obj, part, state, value);
    lv_obj_set_style_local_pad_bottom(obj, part, state, value);
}


static inline void lv_style_set_pad_ver(lv_style_t * style, lv_state_t state, lv_style_int_t value)
{
    lv_style_set_pad_top(style, state, value);
    lv_style_set_pad_bottom(style, state, value);
}


static inline void lv_obj_set_style_local_margin_all(lv_obj_t * obj, uint8_t part, lv_state_t state,
                                                     lv_style_int_t value)
{
    lv_obj_set_style_local_margin_top(obj, part, state, value);
    lv_obj_set_style_local_margin_bottom(obj, part, state, value);
    lv_obj_set_style_local_margin_left(obj, part, state, value);
    lv_obj_set_style_local_margin_right(obj, part, state, value);
}


static inline void lv_style_set_margin_all(lv_style_t * style, lv_state_t state, lv_style_int_t value)
{
    lv_style_set_margin_top(style, state, value);
    lv_style_set_margin_bottom(style, state, value);
    lv_style_set_margin_left(style, state, value);
    lv_style_set_margin_right(style, state, value);
}


static inline void lv_obj_set_style_local_margin_hor(lv_obj_t * obj, uint8_t part, lv_state_t state,
                                                     lv_style_int_t value)
{
    lv_obj_set_style_local_margin_left(obj, part, state, value);
    lv_obj_set_style_local_margin_right(obj, part, state, value);
}


static inline void lv_style_set_margin_hor(lv_style_t * style, lv_state_t state, lv_style_int_t value)
{
    lv_style_set_margin_left(style, state, value);
    lv_style_set_margin_right(style, state, value);
}


static inline void lv_obj_set_style_local_margin_ver(lv_obj_t * obj, uint8_t part, lv_state_t state,
                                                     lv_style_int_t value)
{
    lv_obj_set_style_local_margin_top(obj, part, state, value);
    lv_obj_set_style_local_margin_bottom(obj, part, state, value);
}


static inline void lv_style_set_margin_ver(lv_style_t * style, lv_state_t state, lv_style_int_t value)
{
    lv_style_set_margin_top(style, state, value);
    lv_style_set_margin_bottom(style, state, value);
}






#line 1216 "..\\GUI\\lvgl_src/lv_core/lv_obj.h"



 





 
_Bool lv_obj_get_hidden(const lv_obj_t * obj);





 
_Bool lv_obj_get_adv_hittest(const lv_obj_t * obj);





 
_Bool lv_obj_get_click(const lv_obj_t * obj);





 
_Bool lv_obj_get_top(const lv_obj_t * obj);





 
_Bool lv_obj_get_drag(const lv_obj_t * obj);





 
lv_drag_dir_t lv_obj_get_drag_dir(const lv_obj_t * obj);





 
_Bool lv_obj_get_drag_throw(const lv_obj_t * obj);





 
_Bool lv_obj_get_drag_parent(const lv_obj_t * obj);






 
_Bool lv_obj_get_focus_parent(const lv_obj_t * obj);






 
_Bool lv_obj_get_parent_event(const lv_obj_t * obj);





 
_Bool lv_obj_get_gesture_parent(const lv_obj_t * obj);

lv_bidi_dir_t lv_obj_get_base_dir(const lv_obj_t * obj);





 
uint8_t lv_obj_get_protect(const lv_obj_t * obj);






 
_Bool lv_obj_is_protected(const lv_obj_t * obj, uint8_t prot);


lv_state_t lv_obj_get_state(const lv_obj_t * obj, uint8_t part);





 
lv_signal_cb_t lv_obj_get_signal_cb(const lv_obj_t * obj);





 
lv_design_cb_t lv_obj_get_design_cb(const lv_obj_t * obj);





 
lv_event_cb_t lv_obj_get_event_cb(const lv_obj_t * obj);



 








 
_Bool lv_obj_is_point_on_coords(lv_obj_t * obj, const lv_point_t * point);






 
_Bool lv_obj_hittest(lv_obj_t * obj, lv_point_t * point);






 
void * lv_obj_get_ext_attr(const lv_obj_t * obj);






 
void lv_obj_get_type(const lv_obj_t * obj, lv_obj_type_t * buf);

#line 1402 "..\\GUI\\lvgl_src/lv_core/lv_obj.h"





 
void * lv_obj_get_group(const lv_obj_t * obj);





 
_Bool lv_obj_is_focused(const lv_obj_t * obj);





 
lv_obj_t * lv_obj_get_focused_obj(const lv_obj_t * obj);



 






 
lv_res_t lv_obj_handle_get_type_signal(lv_obj_type_t * buf, const char * name);








 
void lv_obj_init_draw_rect_dsc(lv_obj_t * obj, uint8_t type, lv_draw_rect_dsc_t * draw_dsc);

void lv_obj_init_draw_label_dsc(lv_obj_t * obj, uint8_t type, lv_draw_label_dsc_t * draw_dsc);

void lv_obj_init_draw_img_dsc(lv_obj_t * obj, uint8_t part, lv_draw_img_dsc_t * draw_dsc);

void lv_obj_init_draw_line_dsc(lv_obj_t * obj, uint8_t part, lv_draw_line_dsc_t * draw_dsc);





 
lv_coord_t lv_obj_get_draw_rect_ext_pad_size(lv_obj_t * obj, uint8_t part);






 
void lv_obj_fade_in(lv_obj_t * obj, uint32_t time, uint32_t delay);






 
void lv_obj_fade_out(lv_obj_t * obj, uint32_t time, uint32_t delay);






 
_Bool lv_debug_check_obj_type(const lv_obj_t * obj, const char * obj_type);






 
_Bool lv_debug_check_obj_valid(const lv_obj_t * obj);




 














 












#line 1536 "..\\GUI\\lvgl_src/lv_core/lv_obj.h"






#line 34 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_core/lv_group.h"



 










 

#line 18 "..\\GUI\\lvgl_src/lv_core/lv_group.h"



 
 
 

enum {
    LV_KEY_UP        = 17,   
    LV_KEY_DOWN      = 18,   
    LV_KEY_RIGHT     = 19,   
    LV_KEY_LEFT      = 20,   
    LV_KEY_ESC       = 27,   
    LV_KEY_DEL       = 127,  
    LV_KEY_BACKSPACE = 8,    
    LV_KEY_ENTER     = 10,   
    LV_KEY_NEXT      = 9,    
    LV_KEY_PREV      = 11,   
    LV_KEY_HOME      = 2,    
    LV_KEY_END       = 3,    
};
typedef uint8_t lv_key_t;




 
struct _lv_group_t;

typedef void (*lv_group_style_mod_cb_t)(struct _lv_group_t *, lv_style_t *);
typedef void (*lv_group_focus_cb_t)(struct _lv_group_t *);




 
typedef struct _lv_group_t {
    lv_ll_t obj_ll;         
    lv_obj_t ** obj_focus;  

    lv_group_focus_cb_t focus_cb;               




    uint8_t frozen : 1;          
    uint8_t editing : 1;         
    uint8_t click_focus : 1;    
 
    uint8_t refocus_policy : 1; 
 
    uint8_t wrap : 1;           
 
} lv_group_t;

enum { LV_GROUP_REFOCUS_POLICY_NEXT = 0, LV_GROUP_REFOCUS_POLICY_PREV = 1 };
typedef uint8_t lv_group_refocus_policy_t;



 




 
void _lv_group_init(void);




 
lv_group_t * lv_group_create(void);




 
void lv_group_del(lv_group_t * group);





 
void lv_group_add_obj(lv_group_t * group, lv_obj_t * obj);




 
void lv_group_remove_obj(lv_obj_t * obj);




 
void lv_group_remove_all_objs(lv_group_t * group);




 
void lv_group_focus_obj(lv_obj_t * obj);




 
void lv_group_focus_next(lv_group_t * group);




 
void lv_group_focus_prev(lv_group_t * group);





 
void lv_group_focus_freeze(lv_group_t * group, _Bool en);






 
lv_res_t lv_group_send_data(lv_group_t * group, uint32_t c);





 
void lv_group_set_focus_cb(lv_group_t * group, lv_group_focus_cb_t focus_cb);






 
void lv_group_set_refocus_policy(lv_group_t * group, lv_group_refocus_policy_t policy);





 
void lv_group_set_editing(lv_group_t * group, _Bool edit);





 
void lv_group_set_click_focus(lv_group_t * group, _Bool en);





 
void lv_group_set_wrap(lv_group_t * group, _Bool en);





 
lv_obj_t * lv_group_get_focused(const lv_group_t * group);

#line 202 "..\\GUI\\lvgl_src/lv_core/lv_group.h"





 
lv_group_focus_cb_t lv_group_get_focus_cb(const lv_group_t * group);





 
_Bool lv_group_get_editing(const lv_group_t * group);





 
_Bool lv_group_get_click_focus(const lv_group_t * group);





 
_Bool lv_group_get_wrap(lv_group_t * group);



 







#line 35 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_core/lv_indev.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_core/lv_indev.h"
#line 18 "..\\GUI\\lvgl_src/lv_core/lv_indev.h"
#line 19 "..\\GUI\\lvgl_src/lv_core/lv_indev.h"



 



 



 



 
void _lv_indev_init(void);




 
void _lv_indev_read_task(lv_task_t * task);





 
lv_indev_t * lv_indev_get_act(void);





 
lv_indev_type_t lv_indev_get_type(const lv_indev_t * indev);





 
void lv_indev_reset(lv_indev_t * indev, lv_obj_t * obj);




 
void lv_indev_reset_long_press(lv_indev_t * indev);





 
void lv_indev_enable(lv_indev_t * indev, _Bool en);





 
void lv_indev_set_cursor(lv_indev_t * indev, lv_obj_t * cur_obj);






 
void lv_indev_set_group(lv_indev_t * indev, lv_group_t * group);







 
void lv_indev_set_button_points(lv_indev_t * indev, const lv_point_t points[]);





 
void lv_indev_get_point(const lv_indev_t * indev, lv_point_t * point);





 
lv_gesture_dir_t lv_indev_get_gesture_dir(const lv_indev_t * indev);





 
uint32_t lv_indev_get_key(const lv_indev_t * indev);






 
_Bool lv_indev_is_dragging(const lv_indev_t * indev);






 
void lv_indev_get_vect(const lv_indev_t * indev, lv_point_t * point);






 
lv_res_t lv_indev_finish_drag(lv_indev_t * indev);




 
void lv_indev_wait_release(lv_indev_t * indev);






 
lv_obj_t * lv_indev_get_obj_act(void);






 
lv_obj_t * lv_indev_search_obj(lv_obj_t * obj, lv_point_t * point);






 
lv_task_t * lv_indev_get_read_task(lv_disp_t * indev);



 





#line 36 "..\\GUI\\lvgl/lvgl.h"

#line 1 "..\\GUI\\lvgl_src/lv_core/lv_refr.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_core/lv_refr.h"
#line 18 "..\\GUI\\lvgl_src/lv_core/lv_refr.h"



 





 



 



 



 



 



 
void _lv_refr_init(void);







 
void lv_refr_now(lv_disp_t * disp);






 
void _lv_inv_area(lv_disp_t * disp, const lv_area_t * area_p);




 
lv_disp_t * _lv_refr_get_disp_refreshing(void);






 
void _lv_refr_set_disp_refreshing(lv_disp_t * disp);




 
void _lv_disp_refr_task(lv_task_t * task);



 





#line 38 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_core/lv_disp.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_core/lv_disp.h"
#line 18 "..\\GUI\\lvgl_src/lv_core/lv_disp.h"



 



 

typedef enum {
    LV_SCR_LOAD_ANIM_NONE,
    LV_SCR_LOAD_ANIM_OVER_LEFT,
    LV_SCR_LOAD_ANIM_OVER_RIGHT,
    LV_SCR_LOAD_ANIM_OVER_TOP,
    LV_SCR_LOAD_ANIM_OVER_BOTTOM,
    LV_SCR_LOAD_ANIM_MOVE_LEFT,
    LV_SCR_LOAD_ANIM_MOVE_RIGHT,
    LV_SCR_LOAD_ANIM_MOVE_TOP,
    LV_SCR_LOAD_ANIM_MOVE_BOTTOM,
    LV_SCR_LOAD_ANIM_FADE_ON,
} lv_scr_load_anim_t;



 






 
lv_obj_t * lv_disp_get_scr_act(lv_disp_t * disp);






 
lv_obj_t * lv_disp_get_scr_prev(lv_disp_t * disp);




 
void lv_disp_load_scr(lv_obj_t * scr);





 
lv_obj_t * lv_disp_get_layer_top(lv_disp_t * disp);






 
lv_obj_t * lv_disp_get_layer_sys(lv_disp_t * disp);





 
void lv_disp_assign_screen(lv_disp_t * disp, lv_obj_t * scr);






 
void lv_disp_set_bg_color(lv_disp_t * disp, lv_color_t color);





 
void lv_disp_set_bg_image(lv_disp_t * disp, const void  * img_src);





 
void lv_disp_set_bg_opa(lv_disp_t * disp, lv_opa_t opa);










 
void lv_scr_load_anim(lv_obj_t * scr, lv_scr_load_anim_t anim_type, uint32_t time, uint32_t delay, _Bool auto_del);






 
uint32_t lv_disp_get_inactive_time(const lv_disp_t * disp);




 
void lv_disp_trig_activity(lv_disp_t * disp);




 
void lv_disp_clean_dcache(lv_disp_t * disp);






 
lv_task_t * _lv_disp_get_refr_task(lv_disp_t * disp);




 




 
static inline lv_obj_t * lv_scr_act(void)
{
    return lv_disp_get_scr_act(lv_disp_get_default());
}




 
static inline lv_obj_t * lv_layer_top(void)
{
    return lv_disp_get_layer_top(lv_disp_get_default());
}




 
static inline lv_obj_t * lv_layer_sys(void)
{
    return lv_disp_get_layer_sys(lv_disp_get_default());
}

static inline void lv_scr_load(lv_obj_t * scr)
{
    lv_disp_load_scr(scr);
}



 




 




 






 









 


static inline lv_coord_t lv_dpx(lv_coord_t n)
{
    return (n == 0 ? 0 :(((( lv_disp_get_dpi(0) * (n) + 80) / 160)) > (1) ? ((( lv_disp_get_dpi(0) * (n) + 80) / 160)) : (1)));
}





#line 39 "..\\GUI\\lvgl/lvgl.h"

#line 1 "..\\GUI\\lvgl_src/lv_themes/lv_theme.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_themes/lv_theme.h"
#line 18 "..\\GUI\\lvgl_src/lv_themes/lv_theme.h"
#line 19 "..\\GUI\\lvgl_src/lv_themes/lv_theme.h"



 



 






 
typedef enum {
    LV_THEME_NONE = 0,
    LV_THEME_SCR,
    LV_THEME_OBJ,

    LV_THEME_ARC,


    LV_THEME_BAR,


    LV_THEME_BTN,


    LV_THEME_BTNMATRIX,


    LV_THEME_CALENDAR,


    LV_THEME_CANVAS,


    LV_THEME_CHECKBOX,


    LV_THEME_CHART,


    LV_THEME_CONT,


    LV_THEME_CPICKER,


    LV_THEME_DROPDOWN,


    LV_THEME_GAUGE,


    LV_THEME_IMAGE,


    LV_THEME_IMGBTN,


    LV_THEME_KEYBOARD,


    LV_THEME_LABEL,


    LV_THEME_LED,


    LV_THEME_LINE,


    LV_THEME_LIST,
    LV_THEME_LIST_BTN,


    LV_THEME_LINEMETER,


    LV_THEME_MSGBOX,
    LV_THEME_MSGBOX_BTNS,    


    LV_THEME_OBJMASK,


    LV_THEME_PAGE,


    LV_THEME_ROLLER,


    LV_THEME_SLIDER,


    LV_THEME_SPINBOX,
    LV_THEME_SPINBOX_BTN,    


    LV_THEME_SPINNER,


    LV_THEME_SWITCH,


    LV_THEME_TABLE,


    LV_THEME_TABVIEW,
    LV_THEME_TABVIEW_PAGE,   


    LV_THEME_TEXTAREA,


    LV_THEME_TILEVIEW,


    LV_THEME_WIN,
    LV_THEME_WIN_BTN,    


    _LV_THEME_BUILTIN_LAST,
    LV_THEME_CUSTOM_START = _LV_THEME_BUILTIN_LAST,
    _LV_THEME_CUSTOM_LAST = 0xFFFF,

} lv_theme_style_t;

struct _lv_theme_t;

typedef void (*lv_theme_apply_cb_t)(struct _lv_theme_t *, lv_obj_t *, lv_theme_style_t);
typedef void (*lv_theme_apply_xcb_t)(lv_obj_t *, lv_theme_style_t);  

typedef struct _lv_theme_t {
    lv_theme_apply_cb_t apply_cb;
    lv_theme_apply_xcb_t apply_xcb;  
    struct _lv_theme_t * base;     
    lv_color_t color_primary;
    lv_color_t color_secondary;
    const lv_font_t * font_small;
    const lv_font_t * font_normal;
    const lv_font_t * font_subtitle;
    const lv_font_t * font_title;
    uint32_t flags;
    void * user_data;
} lv_theme_t;



 





 
void lv_theme_set_act(lv_theme_t * th);




 
lv_theme_t * lv_theme_get_act(void);





 
void lv_theme_apply(lv_obj_t * obj, lv_theme_style_t name);






 
void lv_theme_copy(lv_theme_t * theme, const lv_theme_t * copy);







 
void lv_theme_set_base(lv_theme_t * new_theme, lv_theme_t * base);






 
void lv_theme_set_apply_cb(lv_theme_t * theme, lv_theme_apply_cb_t apply_cb);




 
const lv_font_t * lv_theme_get_font_small(void);




 
const lv_font_t * lv_theme_get_font_normal(void);




 
const lv_font_t * lv_theme_get_font_subtitle(void);




 
const lv_font_t * lv_theme_get_font_title(void);




 
lv_color_t lv_theme_get_color_primary(void);




 
lv_color_t lv_theme_get_color_secondary(void);




 
uint32_t lv_theme_get_flags(void);



 



 
#line 1 "..\\GUI\\lvgl_src/lv_themes/lv_theme_empty.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_themes/lv_theme_empty.h"





 



 



 












 
lv_theme_t * lv_theme_empty_init(lv_color_t color_primary, lv_color_t color_secondary, uint32_t flags,
                                 const lv_font_t * font_small, const lv_font_t * font_normal, const lv_font_t * font_subtitle,
                                 const lv_font_t * font_title);


 







#line 267 "..\\GUI\\lvgl_src/lv_themes/lv_theme.h"
#line 1 "..\\GUI\\lvgl_src/lv_themes/lv_theme_template.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_themes/lv_theme_template.h"





 



 



 












 
lv_theme_t * lv_theme_template_init(lv_color_t color_primary, lv_color_t color_secondary, uint32_t flags,
                                    const lv_font_t * font_small, const lv_font_t * font_normal, const lv_font_t * font_subtitle,
                                    const lv_font_t * font_title);


 







#line 268 "..\\GUI\\lvgl_src/lv_themes/lv_theme.h"
#line 1 "..\\GUI\\lvgl_src/lv_themes/lv_theme_material.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_themes/lv_theme_material.h"





 
typedef enum {
    LV_THEME_MATERIAL_FLAG_DARK =  0x01,
    LV_THEME_MATERIAL_FLAG_LIGHT = 0x02,
    LV_THEME_MATERIAL_FLAG_NO_TRANSITION  = 0x10,
    LV_THEME_MATERIAL_FLAG_NO_FOCUS  = 0x20,
} lv_theme_material_flag_t;



 



 











 
lv_theme_t * lv_theme_material_init(lv_color_t color_primary, lv_color_t color_secondary, uint32_t flags,
                                    const lv_font_t * font_small, const lv_font_t * font_normal, const lv_font_t * font_subtitle,
                                    const lv_font_t * font_title);


 







#line 269 "..\\GUI\\lvgl_src/lv_themes/lv_theme.h"
#line 1 "..\\GUI\\lvgl_src/lv_themes/lv_theme_mono.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_themes/lv_theme_mono.h"





 



 



 












 
lv_theme_t * lv_theme_mono_init(lv_color_t color_primary, lv_color_t color_secondary, uint32_t flags,
                                const lv_font_t * font_small, const lv_font_t * font_normal, const lv_font_t * font_subtitle,
                                const lv_font_t * font_title);


 







#line 270 "..\\GUI\\lvgl_src/lv_themes/lv_theme.h"





#line 41 "..\\GUI\\lvgl/lvgl.h"

#line 43 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_font/lv_font_loader.h"



 










 



 



 



 

#line 35 "..\\GUI\\lvgl_src/lv_font/lv_font_loader.h"



 





#line 44 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_font/lv_font_fmt_txt.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_font/lv_font_fmt_txt.h"
#line 18 "..\\GUI\\lvgl_src/lv_font/lv_font_fmt_txt.h"
#line 19 "..\\GUI\\lvgl_src/lv_font/lv_font_fmt_txt.h"
#line 20 "..\\GUI\\lvgl_src/lv_font/lv_font_fmt_txt.h"



 



 

 
typedef struct {

    uint32_t bitmap_index : 20;      
    uint32_t adv_w : 12;             
    uint8_t box_w;                   
    uint8_t box_h;                   
    int8_t ofs_x;                    
    int8_t ofs_y;                   
#line 46 "..\\GUI\\lvgl_src/lv_font/lv_font_fmt_txt.h"
} lv_font_fmt_txt_glyph_dsc_t;


 
enum {
    LV_FONT_FMT_TXT_CMAP_FORMAT0_TINY,
    LV_FONT_FMT_TXT_CMAP_FORMAT0_FULL,
    LV_FONT_FMT_TXT_CMAP_SPARSE_TINY,
    LV_FONT_FMT_TXT_CMAP_SPARSE_FULL,
};

typedef uint8_t lv_font_fmt_txt_cmap_type_t;





 
typedef struct {
     
    uint32_t range_start;

    
 
    uint16_t range_length;

     
    uint16_t glyph_id_start;

    
























 

    const uint16_t * unicode_list;

    

 
    const void * glyph_id_ofs_list;

     
    uint16_t list_length;

     
    lv_font_fmt_txt_cmap_type_t type;
} lv_font_fmt_txt_cmap_t;

 
typedef struct {
    





 
    const void * glyph_ids;
    const int8_t * values;
    uint32_t pair_cnt   : 24;
    uint32_t glyph_ids_size : 2;     
} lv_font_fmt_txt_kern_pair_t;

 
typedef struct {
    





 

    const int8_t * class_pair_values;     
    const uint8_t * left_class_mapping;    
    const uint8_t * right_class_mapping;   
    uint8_t left_class_cnt;
    uint8_t right_class_cnt;
} lv_font_fmt_txt_kern_classes_t;


 
typedef enum {
    LV_FONT_FMT_TXT_PLAIN      = 0,
    LV_FONT_FMT_TXT_COMPRESSED = 1,
    LV_FONT_FMT_TXT_COMPRESSED_NO_PREFILTER = 1,
} lv_font_fmt_txt_bitmap_format_t;


 
typedef struct {
     
    const uint8_t * glyph_bitmap;

     
    const lv_font_fmt_txt_glyph_dsc_t * glyph_dsc;

    
 
    const lv_font_fmt_txt_cmap_t * cmaps;

    


 
    const void * kern_dsc;

     
    uint16_t kern_scale;

     
    uint16_t cmap_num       : 10;

     
    uint16_t bpp            : 4;

     
    uint16_t kern_classes   : 1;

    


 
    uint16_t bitmap_format  : 2;

     
    uint32_t last_letter;
    uint32_t last_glyph_id;

} lv_font_fmt_txt_dsc_t;



 






 
const uint8_t * lv_font_get_bitmap_fmt_txt(const lv_font_t * font, uint32_t letter);








 
_Bool lv_font_get_glyph_dsc_fmt_txt(const lv_font_t * font, lv_font_glyph_dsc_t * dsc_out, uint32_t unicode_letter,
                                   uint32_t unicode_letter_next);



 
void _lv_font_clean_up_fmt_txt(void);



 



 





#line 45 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_misc/lv_printf.h"







































#line 41 "..\\GUI\\lvgl_src/lv_misc/lv_printf.h"



#line 45 "..\\GUI\\lvgl_src/lv_misc/lv_printf.h"
#line 46 "..\\GUI\\lvgl_src/lv_misc/lv_printf.h"










 
int  lv_snprintf(char * buffer, size_t count, const char * format, ...);
int lv_vsnprintf(char * buffer, size_t count, const char * format, va_list va);











#line 46 "..\\GUI\\lvgl/lvgl.h"

#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_btn.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_btn.h"



 




#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_cont.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_cont.h"



#line 21 "..\\GUI\\lvgl_src/lv_widgets/lv_cont.h"



 



 

 
enum {
    LV_LAYOUT_OFF = 0,  
    LV_LAYOUT_CENTER,  

    




 
    LV_LAYOUT_COLUMN_LEFT,       
    LV_LAYOUT_COLUMN_MID,        
    LV_LAYOUT_COLUMN_RIGHT,      

    






 
    LV_LAYOUT_ROW_TOP,           
    LV_LAYOUT_ROW_MID,           
    LV_LAYOUT_ROW_BOTTOM,        


    







 
    LV_LAYOUT_PRETTY_TOP,        
    LV_LAYOUT_PRETTY_MID,        
    LV_LAYOUT_PRETTY_BOTTOM,     

    








 
    LV_LAYOUT_GRID,    

    _LV_LAYOUT_LAST
};
typedef uint8_t lv_layout_t;



 
enum {
    LV_FIT_NONE,   
    LV_FIT_TIGHT,  
    LV_FIT_PARENT,  
    LV_FIT_MAX,  
 
    _LV_FIT_LAST
};
typedef uint8_t lv_fit_t;

typedef struct {
       
     
    lv_layout_t layout : 4;      
    lv_fit_t fit_left : 2;    
    lv_fit_t fit_right : 2;   
    lv_fit_t fit_top : 2;     
    lv_fit_t fit_bottom : 2;  
} lv_cont_ext_t;

 
enum {
    LV_CONT_PART_MAIN = LV_OBJ_PART_MAIN,
    _LV_CONT_PART_VIRTUAL_LAST = _LV_OBJ_PART_VIRTUAL_LAST,
    _LV_CONT_PART_REAL_LAST = _LV_OBJ_PART_REAL_LAST,
};



 






 
lv_obj_t * lv_cont_create(lv_obj_t * par, const lv_obj_t * copy);



 





 
void lv_cont_set_layout(lv_obj_t * cont, lv_layout_t layout);









 
void lv_cont_set_fit4(lv_obj_t * cont, lv_fit_t left, lv_fit_t right, lv_fit_t top, lv_fit_t bottom);







 
static inline void lv_cont_set_fit2(lv_obj_t * cont, lv_fit_t hor, lv_fit_t ver)
{
    lv_cont_set_fit4(cont, hor, hor, ver, ver);
}






 
static inline void lv_cont_set_fit(lv_obj_t * cont, lv_fit_t fit)
{
    lv_cont_set_fit4(cont, fit, fit, fit, fit);
}



 





 
lv_layout_t lv_cont_get_layout(const lv_obj_t * cont);





 
lv_fit_t lv_cont_get_fit_left(const lv_obj_t * cont);





 
lv_fit_t lv_cont_get_fit_right(const lv_obj_t * cont);





 
lv_fit_t lv_cont_get_fit_top(const lv_obj_t * cont);





 
lv_fit_t lv_cont_get_fit_bottom(const lv_obj_t * cont);



 







#line 26 "..\\GUI\\lvgl_src/lv_widgets/lv_btn.h"
#line 27 "..\\GUI\\lvgl_src/lv_widgets/lv_btn.h"



 



 


 
enum {
    LV_BTN_STATE_RELEASED,
    LV_BTN_STATE_PRESSED,
    LV_BTN_STATE_DISABLED,
    LV_BTN_STATE_CHECKED_RELEASED,
    LV_BTN_STATE_CHECKED_PRESSED,
    LV_BTN_STATE_CHECKED_DISABLED,
    _LV_BTN_STATE_LAST,  
};
typedef uint8_t lv_btn_state_t;

 
typedef struct {
     
    lv_cont_ext_t cont;

     
    uint8_t checkable : 1;
} lv_btn_ext_t;

 
enum {
    LV_BTN_PART_MAIN = LV_OBJ_PART_MAIN,
    _LV_BTN_PART_VIRTUAL_LAST,
    _LV_BTN_PART_REAL_LAST = _LV_OBJ_PART_REAL_LAST,
};
typedef uint8_t lv_btn_part_t;



 






 
lv_obj_t * lv_btn_create(lv_obj_t * par, const lv_obj_t * copy);



 





 
void lv_btn_set_checkable(lv_obj_t * btn, _Bool tgl);





 
void lv_btn_set_state(lv_obj_t * btn, lv_btn_state_t state);




 
void lv_btn_toggle(lv_obj_t * btn);





 
static inline void lv_btn_set_layout(lv_obj_t * btn, lv_layout_t layout)
{
    lv_cont_set_layout(btn, layout);
}









 
static inline void lv_btn_set_fit4(lv_obj_t * btn, lv_fit_t left, lv_fit_t right, lv_fit_t top, lv_fit_t bottom)
{
    lv_cont_set_fit4(btn, left, right, top, bottom);
}







 
static inline void lv_btn_set_fit2(lv_obj_t * btn, lv_fit_t hor, lv_fit_t ver)
{
    lv_cont_set_fit2(btn, hor, ver);
}






 
static inline void lv_btn_set_fit(lv_obj_t * btn, lv_fit_t fit)
{
    lv_cont_set_fit(btn, fit);
}



 






 
lv_btn_state_t lv_btn_get_state(const lv_obj_t * btn);





 
_Bool lv_btn_get_checkable(const lv_obj_t * btn);





 
static inline lv_layout_t lv_btn_get_layout(const lv_obj_t * btn)
{
    return lv_cont_get_layout(btn);
}





 
static inline lv_fit_t lv_btn_get_fit_left(const lv_obj_t * btn)
{
    return lv_cont_get_fit_left(btn);
}





 
static inline lv_fit_t lv_btn_get_fit_right(const lv_obj_t * btn)
{
    return lv_cont_get_fit_right(btn);
}





 
static inline lv_fit_t lv_btn_get_fit_top(const lv_obj_t * btn)
{
    return lv_cont_get_fit_top(btn);
}





 
static inline lv_fit_t lv_btn_get_fit_bottom(const lv_obj_t * btn)
{
    return lv_cont_get_fit_bottom(btn);
}



 







#line 48 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_imgbtn.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_imgbtn.h"



 




#line 26 "..\\GUI\\lvgl_src/lv_widgets/lv_imgbtn.h"
#line 27 "..\\GUI\\lvgl_src/lv_widgets/lv_imgbtn.h"
#line 28 "..\\GUI\\lvgl_src/lv_widgets/lv_imgbtn.h"



 



 
 
typedef struct {
    lv_btn_ext_t btn;  
     
    const void * img_src_mid[_LV_BTN_STATE_LAST];    




    lv_img_cf_t act_cf;  
    uint8_t tiled   : 1;  
} lv_imgbtn_ext_t;

 
enum {
    LV_IMGBTN_PART_MAIN = LV_BTN_PART_MAIN,
};
typedef uint8_t lv_imgbtn_part_t;



 







 
lv_obj_t * lv_imgbtn_create(lv_obj_t * par, const lv_obj_t * copy);



 



 






 
void lv_imgbtn_set_src(lv_obj_t * imgbtn, lv_btn_state_t state, const void * src);

#line 100 "..\\GUI\\lvgl_src/lv_widgets/lv_imgbtn.h"





 
void lv_imgbtn_set_state(lv_obj_t * imgbtn, lv_btn_state_t state);




 
void lv_imgbtn_toggle(lv_obj_t * imgbtn);





 
static inline void lv_imgbtn_set_checkable(lv_obj_t * imgbtn, _Bool tgl)
{
    lv_btn_set_checkable(imgbtn, tgl);
}




 







 
const void * lv_imgbtn_get_src(lv_obj_t * imgbtn, lv_btn_state_t state);

#line 165 "..\\GUI\\lvgl_src/lv_widgets/lv_imgbtn.h"




 
static inline lv_btn_state_t lv_imgbtn_get_state(const lv_obj_t * imgbtn)
{
    return lv_btn_get_state(imgbtn);
}





 
static inline _Bool lv_imgbtn_get_checkable(const lv_obj_t * imgbtn)
{
    return lv_btn_get_checkable(imgbtn);
}



 



 







#line 49 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_img.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_img.h"



#line 21 "..\\GUI\\lvgl_src/lv_widgets/lv_img.h"
#line 22 "..\\GUI\\lvgl_src/lv_widgets/lv_img.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_label.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_label.h"



#line 21 "..\\GUI\\lvgl_src/lv_widgets/lv_label.h"
#line 22 "..\\GUI\\lvgl_src/lv_widgets/lv_label.h"
#line 23 "..\\GUI\\lvgl_src/lv_widgets/lv_label.h"
#line 24 "..\\GUI\\lvgl_src/lv_widgets/lv_label.h"
#line 25 "..\\GUI\\lvgl_src/lv_widgets/lv_label.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/../lv_draw/lv_draw.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/../lv_draw/lv_draw.h"

#line 19 "..\\GUI\\lvgl_src/lv_widgets/../lv_draw/lv_draw.h"
#line 20 "..\\GUI\\lvgl_src/lv_widgets/../lv_draw/lv_draw.h"
#line 21 "..\\GUI\\lvgl_src/lv_widgets/../lv_draw/lv_draw.h"

#line 23 "..\\GUI\\lvgl_src/lv_widgets/../lv_draw/lv_draw.h"
#line 24 "..\\GUI\\lvgl_src/lv_widgets/../lv_draw/lv_draw.h"
#line 25 "..\\GUI\\lvgl_src/lv_widgets/../lv_draw/lv_draw.h"
#line 26 "..\\GUI\\lvgl_src/lv_widgets/../lv_draw/lv_draw.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/../lv_draw/lv_draw_triangle.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/../lv_draw/lv_draw_triangle.h"



 



 



 






 
void lv_draw_triangle(const lv_point_t points[], const lv_area_t * clip, const lv_draw_rect_dsc_t * draw_dsc);







 
void lv_draw_polygon(const lv_point_t points[], uint16_t point_cnt, const lv_area_t * mask,
                     const lv_draw_rect_dsc_t * draw_dsc);



 





#line 27 "..\\GUI\\lvgl_src/lv_widgets/../lv_draw/lv_draw.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/../lv_draw/lv_draw_arc.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/../lv_draw/lv_draw_arc.h"



 



 



 











 
void lv_draw_arc(lv_coord_t center_x, lv_coord_t center_y, uint16_t radius,  uint16_t start_angle, uint16_t end_angle,
                 const lv_area_t * clip_area, const lv_draw_line_dsc_t * dsc);



 





#line 28 "..\\GUI\\lvgl_src/lv_widgets/../lv_draw/lv_draw.h"
#line 29 "..\\GUI\\lvgl_src/lv_widgets/../lv_draw/lv_draw.h"
#line 30 "..\\GUI\\lvgl_src/lv_widgets/../lv_draw/lv_draw.h"



 



 



 



 



 



 





#line 26 "..\\GUI\\lvgl_src/lv_widgets/lv_label.h"



 




struct _silence_gcc_warning;
struct _silence_gcc_warning;
struct _silence_gcc_warning;



 

 
enum {
    LV_LABEL_LONG_EXPAND,     
    LV_LABEL_LONG_BREAK,     
 
    LV_LABEL_LONG_DOT,        
    LV_LABEL_LONG_SROLL,       
    LV_LABEL_LONG_SROLL_CIRC,  
    LV_LABEL_LONG_CROP,       
};
typedef uint8_t lv_label_long_mode_t;

 
enum {
    LV_LABEL_ALIGN_LEFT,  
    LV_LABEL_ALIGN_CENTER,  
    LV_LABEL_ALIGN_RIGHT,  
    LV_LABEL_ALIGN_AUTO,  
};
typedef uint8_t lv_label_align_t;

 
typedef struct {
       
     
    char * text;         

    union {
        char * tmp_ptr; 
 
        char tmp[3 + 1];  
    } dot;

    uint32_t dot_end;   


    uint16_t anim_speed;  


    lv_point_t offset;  










    lv_label_long_mode_t long_mode : 3;  
    uint8_t static_txt : 1;              
    uint8_t align : 2;                   
    uint8_t recolor : 1;                 
    uint8_t expand : 1;                  
    uint8_t dot_tmp_alloc : 1; 
 
} lv_label_ext_t;

 
enum {
    LV_LABEL_PART_MAIN,
};

typedef uint8_t lv_label_part_t;



 






 
lv_obj_t * lv_label_create(lv_obj_t * par, const lv_obj_t * copy);



 





 
void lv_label_set_text(lv_obj_t * label, const char * text);





 
void lv_label_set_text_fmt(lv_obj_t * label, const char * fmt, ...);






 
void lv_label_set_text_static(lv_obj_t * label, const char * text);







 
void lv_label_set_long_mode(lv_obj_t * label, lv_label_long_mode_t long_mode);





 
void lv_label_set_align(lv_obj_t * label, lv_label_align_t align);





 
void lv_label_set_recolor(lv_obj_t * label, _Bool en);





 
void lv_label_set_anim_speed(lv_obj_t * label, uint16_t anim_speed);





 
void lv_label_set_text_sel_start(lv_obj_t * label, uint32_t index);





 
void lv_label_set_text_sel_end(lv_obj_t * label, uint32_t index);



 





 
char * lv_label_get_text(const lv_obj_t * label);





 
lv_label_long_mode_t lv_label_get_long_mode(const lv_obj_t * label);





 
lv_label_align_t lv_label_get_align(const lv_obj_t * label);





 
_Bool lv_label_get_recolor(const lv_obj_t * label);





 
uint16_t lv_label_get_anim_speed(const lv_obj_t * label);







 
void lv_label_get_letter_pos(const lv_obj_t * label, uint32_t index, lv_point_t * pos);







 
uint32_t lv_label_get_letter_on(const lv_obj_t * label, lv_point_t * pos);






 
_Bool lv_label_is_char_under_pos(const lv_obj_t * label, lv_point_t * pos);





 
uint32_t lv_label_get_text_sel_start(const lv_obj_t * label);





 
uint32_t lv_label_get_text_sel_end(const lv_obj_t * label);


lv_style_list_t * lv_label_get_style(lv_obj_t * label, uint8_t type);



 







 
void lv_label_ins_text(lv_obj_t * label, uint32_t pos, const char * txt);







 
void lv_label_cut_text(lv_obj_t * label, uint32_t pos, uint32_t cnt);



 







#line 23 "..\\GUI\\lvgl_src/lv_widgets/lv_img.h"
#line 24 "..\\GUI\\lvgl_src/lv_widgets/lv_img.h"



 



 
 
typedef struct {
       
     
    const void * src;  
    lv_point_t offset;
    lv_coord_t w;           
    lv_coord_t h;           
    uint16_t angle;     
    lv_point_t pivot;      
    uint16_t zoom;          
    uint8_t src_type : 2;   
    uint8_t auto_size : 1;  
    uint8_t cf : 5;         
    uint8_t antialias : 1;  
} lv_img_ext_t;

 
enum {
    LV_IMG_PART_MAIN,
};
typedef uint8_t lv_img_part_t;



 






 
lv_obj_t * lv_img_create(lv_obj_t * par, const lv_obj_t * copy);



 





 
void lv_img_set_src(lv_obj_t * img, const void * src_img);






 
void lv_img_set_auto_size(lv_obj_t * img, _Bool autosize_en);






 
void lv_img_set_offset_x(lv_obj_t * img, lv_coord_t x);






 
void lv_img_set_offset_y(lv_obj_t * img, lv_coord_t y);







 
void lv_img_set_pivot(lv_obj_t * img, lv_coord_t pivot_x, lv_coord_t pivot_y);






 
void lv_img_set_angle(lv_obj_t * img, int16_t angle);










 
void lv_img_set_zoom(lv_obj_t * img, uint16_t zoom);





 
void lv_img_set_antialias(lv_obj_t * img, _Bool antialias);



 





 
const void * lv_img_get_src(lv_obj_t * img);





 
const char * lv_img_get_file_name(const lv_obj_t * img);





 
_Bool lv_img_get_auto_size(const lv_obj_t * img);





 
lv_coord_t lv_img_get_offset_x(lv_obj_t * img);





 
lv_coord_t lv_img_get_offset_y(lv_obj_t * img);





 
uint16_t lv_img_get_angle(lv_obj_t * img);





 
void lv_img_get_pivot(lv_obj_t * img, lv_point_t * center);





 
uint16_t lv_img_get_zoom(lv_obj_t * img);





 
_Bool lv_img_get_antialias(lv_obj_t * img);



 

 








#line 50 "..\\GUI\\lvgl/lvgl.h"
#line 51 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_line.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_line.h"



#line 21 "..\\GUI\\lvgl_src/lv_widgets/lv_line.h"



 



 

 
typedef struct {
       
    const lv_point_t * point_array;                     
    uint16_t point_num;                                 
    uint8_t auto_size : 1;                              
    uint8_t y_inv : 1;                                  
} lv_line_ext_t;

 
enum {
    LV_LINE_PART_MAIN,
};
typedef uint8_t lv_line_style_t;



 





 
lv_obj_t * lv_line_create(lv_obj_t * par, const lv_obj_t * copy);



 







 
void lv_line_set_points(lv_obj_t * line, const lv_point_t point_a[], uint16_t point_num);






 
void lv_line_set_auto_size(lv_obj_t * line, _Bool en);







 
void lv_line_set_y_invert(lv_obj_t * line, _Bool en);








 





 
_Bool lv_line_get_auto_size(const lv_obj_t * line);





 
_Bool lv_line_get_y_invert(const lv_obj_t * line);



 







#line 52 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_page.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_page.h"



 




#line 26 "..\\GUI\\lvgl_src/lv_widgets/lv_page.h"
#line 27 "..\\GUI\\lvgl_src/lv_widgets/lv_page.h"
#line 28 "..\\GUI\\lvgl_src/lv_widgets/lv_page.h"



 



 

 
enum {
    LV_SCROLLBAR_MODE_OFF    = 0x0,  
    LV_SCROLLBAR_MODE_ON     = 0x1,  
    LV_SCROLLBAR_MODE_DRAG   = 0x2,  
    LV_SCROLLBAR_MODE_AUTO   = 0x3,  
    LV_SCROLLBAR_MODE_HIDE   = 0x4,  
    LV_SCROLLBAR_MODE_UNHIDE = 0x8,  
};
typedef uint8_t lv_scrollbar_mode_t;

 
enum { LV_PAGE_EDGE_LEFT = 0x1, LV_PAGE_EDGE_TOP = 0x2, LV_PAGE_EDGE_RIGHT = 0x4, LV_PAGE_EDGE_BOTTOM = 0x8 };
typedef uint8_t lv_page_edge_t;

 
typedef struct {
    lv_cont_ext_t bg;  
     
    lv_obj_t * scrl;  
    struct {
        lv_style_list_t style;  
        lv_area_t hor_area;        
        lv_area_t ver_area;        
        uint8_t hor_draw : 1;      
        uint8_t ver_draw : 1;      
        lv_scrollbar_mode_t mode : 3;     
    } scrlbar;

    struct {
        lv_anim_value_t state;     
        lv_style_list_t style;  
        uint8_t enabled : 1;       
        uint8_t top_ip : 1;       
 
        uint8_t bottom_ip : 1;    
 
        uint8_t right_ip : 1;     
 
        uint8_t left_ip : 1;      
 
    } edge_flash;

    uint16_t anim_time;  

    lv_obj_t * scroll_prop_obj;           
    uint8_t scroll_prop : 1;    
} lv_page_ext_t;

enum {
    LV_PAGE_PART_BG = LV_CONT_PART_MAIN,
    LV_PAGE_PART_SCROLLBAR = _LV_OBJ_PART_VIRTUAL_LAST,
    LV_PAGE_PART_EDGE_FLASH,
    _LV_PAGE_PART_VIRTUAL_LAST,

    LV_PAGE_PART_SCROLLABLE = _LV_OBJ_PART_REAL_LAST,
    _LV_PAGE_PART_REAL_LAST,
};
typedef uint8_t lv_part_style_t;



 






 
lv_obj_t * lv_page_create(lv_obj_t * par, const lv_obj_t * copy);




 
void lv_page_clean(lv_obj_t * page);





 
lv_obj_t * lv_page_get_scrollable(const lv_obj_t * page);





 
uint16_t lv_page_get_anim_time(const lv_obj_t * page);



 





 
void lv_page_set_scrollbar_mode(lv_obj_t * page, lv_scrollbar_mode_t sb_mode);





 
void lv_page_set_anim_time(lv_obj_t * page, uint16_t anim_time);








 
void lv_page_set_scroll_propagation(lv_obj_t * page, _Bool en);





 
void lv_page_set_edge_flash(lv_obj_t * page, _Bool en);









 
static inline void lv_page_set_scrollable_fit4(lv_obj_t * page, lv_fit_t left, lv_fit_t right, lv_fit_t top,
                                               lv_fit_t bottom)
{
    lv_cont_set_fit4(lv_page_get_scrollable(page), left, right, top, bottom);
}







 
static inline void lv_page_set_scrollable_fit2(lv_obj_t * page, lv_fit_t hor, lv_fit_t ver)
{
    lv_cont_set_fit2(lv_page_get_scrollable(page), hor, ver);
}






 
static inline void lv_page_set_scrollable_fit(lv_obj_t * page, lv_fit_t fit)
{
    lv_cont_set_fit(lv_page_get_scrollable(page), fit);
}





 
static inline void lv_page_set_scrl_width(lv_obj_t * page, lv_coord_t w)
{
    lv_obj_set_width(lv_page_get_scrollable(page), w);
}





 
static inline void lv_page_set_scrl_height(lv_obj_t * page, lv_coord_t h)
{
    lv_obj_set_height(lv_page_get_scrollable(page), h);
}





 
static inline void lv_page_set_scrl_layout(lv_obj_t * page, lv_layout_t layout)
{
    lv_cont_set_layout(lv_page_get_scrollable(page), layout);
}



 





 
lv_scrollbar_mode_t lv_page_get_scrollbar_mode(const lv_obj_t * page);





 
_Bool lv_page_get_scroll_propagation(lv_obj_t * page);





 
_Bool lv_page_get_edge_flash(lv_obj_t * page);





 
lv_coord_t lv_page_get_width_fit(lv_obj_t * page);





 
lv_coord_t lv_page_get_height_fit(lv_obj_t * page);











 
lv_coord_t lv_page_get_width_grid(lv_obj_t * page, uint8_t div, uint8_t span);











 
lv_coord_t lv_page_get_height_grid(lv_obj_t * page, uint8_t div, uint8_t span);





 
static inline lv_coord_t lv_page_get_scrl_width(const lv_obj_t * page)
{
    return lv_obj_get_width(lv_page_get_scrollable(page));
}





 
static inline lv_coord_t lv_page_get_scrl_height(const lv_obj_t * page)
{
    return lv_obj_get_height(lv_page_get_scrollable(page));
}





 
static inline lv_layout_t lv_page_get_scrl_layout(const lv_obj_t * page)
{
    return lv_cont_get_layout(lv_page_get_scrollable(page));
}





 
static inline lv_fit_t lv_page_get_scrl_fit_left(const lv_obj_t * page)
{
    return lv_cont_get_fit_left(lv_page_get_scrollable(page));
}





 
static inline lv_fit_t lv_page_get_scrl_fit_right(const lv_obj_t * page)
{
    return lv_cont_get_fit_right(lv_page_get_scrollable(page));
}





 
static inline lv_fit_t lv_page_get_scrl_fit_top(const lv_obj_t * page)
{
    return lv_cont_get_fit_top(lv_page_get_scrollable(page));
}





 
static inline lv_fit_t lv_page_get_scrl_fit_bottom(const lv_obj_t * page)
{
    return lv_cont_get_fit_bottom(lv_page_get_scrollable(page));
}



 






 
_Bool lv_page_on_edge(lv_obj_t * page, lv_page_edge_t edge);





 
void lv_page_glue_obj(lv_obj_t * obj, _Bool glue);






 
void lv_page_focus(lv_obj_t * page, const lv_obj_t * obj, lv_anim_enable_t anim_en);





 
void lv_page_scroll_hor(lv_obj_t * page, lv_coord_t dist);





 
void lv_page_scroll_ver(lv_obj_t * page, lv_coord_t dist);






 
void lv_page_start_edge_flash(lv_obj_t * page, lv_page_edge_t edge);



 







#line 53 "..\\GUI\\lvgl/lvgl.h"
#line 54 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_list.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_list.h"



 












#line 34 "..\\GUI\\lvgl_src/lv_widgets/lv_list.h"
#line 35 "..\\GUI\\lvgl_src/lv_widgets/lv_list.h"
#line 36 "..\\GUI\\lvgl_src/lv_widgets/lv_list.h"
#line 37 "..\\GUI\\lvgl_src/lv_widgets/lv_list.h"
#line 38 "..\\GUI\\lvgl_src/lv_widgets/lv_list.h"



 



 
 
typedef struct {
    lv_page_ext_t page;  
     


    lv_obj_t * last_sel_btn;      

    lv_obj_t * act_sel_btn;  
} lv_list_ext_t;

 
enum {
    LV_LIST_PART_BG = LV_PAGE_PART_BG,  
    LV_LIST_PART_SCROLLBAR = LV_PAGE_PART_SCROLLBAR,  
    LV_LIST_PART_EDGE_FLASH = LV_PAGE_PART_EDGE_FLASH,  
    _LV_LIST_PART_VIRTUAL_LAST = _LV_PAGE_PART_VIRTUAL_LAST,
    LV_LIST_PART_SCROLLABLE = LV_PAGE_PART_SCROLLABLE,  
    _LV_LIST_PART_REAL_LAST = _LV_PAGE_PART_REAL_LAST,
};
typedef uint8_t lv_list_style_t;



 






 
lv_obj_t * lv_list_create(lv_obj_t * par, const lv_obj_t * copy);




 
void lv_list_clean(lv_obj_t * list);



 







 
lv_obj_t * lv_list_add_btn(lv_obj_t * list, const void * img_src, const char * txt);







 
_Bool lv_list_remove(const lv_obj_t * list, uint16_t index);



 






 
void lv_list_focus_btn(lv_obj_t * list, lv_obj_t * btn);





 
static inline void lv_list_set_scrollbar_mode(lv_obj_t * list, lv_scrollbar_mode_t mode)
{
    lv_page_set_scrollbar_mode(list, mode);
}






 
static inline void lv_list_set_scroll_propagation(lv_obj_t * list, _Bool en)
{
    lv_page_set_scroll_propagation(list, en);
}





 
static inline void lv_list_set_edge_flash(lv_obj_t * list, _Bool en)
{
    lv_page_set_edge_flash(list, en);
}





 
static inline void lv_list_set_anim_time(lv_obj_t * list, uint16_t anim_time)
{
    lv_page_set_anim_time(list, anim_time);
}





 
void lv_list_set_layout(lv_obj_t * list, lv_layout_t layout);



 





 
const char * lv_list_get_btn_text(const lv_obj_t * btn);




 
lv_obj_t * lv_list_get_btn_label(const lv_obj_t * btn);





 
lv_obj_t * lv_list_get_btn_img(const lv_obj_t * btn);






 
lv_obj_t * lv_list_get_prev_btn(const lv_obj_t * list, lv_obj_t * prev_btn);






 
lv_obj_t * lv_list_get_next_btn(const lv_obj_t * list, lv_obj_t * prev_btn);






 
int32_t lv_list_get_btn_index(const lv_obj_t * list, const lv_obj_t * btn);





 
uint16_t lv_list_get_size(const lv_obj_t * list);






 
lv_obj_t * lv_list_get_btn_selected(const lv_obj_t * list);






 
lv_layout_t lv_list_get_layout(lv_obj_t * list);





 
static inline lv_scrollbar_mode_t lv_list_get_scrollbar_mode(const lv_obj_t * list)
{
    return lv_page_get_scrollbar_mode(list);
}





 
static inline _Bool lv_list_get_scroll_propagation(lv_obj_t * list)
{
    return lv_page_get_scroll_propagation(list);
}





 
static inline _Bool lv_list_get_edge_flash(lv_obj_t * list)
{
    return lv_page_get_edge_flash(list);
}





 
static inline uint16_t lv_list_get_anim_time(const lv_obj_t * list)
{
    return lv_page_get_anim_time(list);
}



 




 
void lv_list_up(const lv_obj_t * list);



 
void lv_list_down(const lv_obj_t * list);





 
void lv_list_focus(const lv_obj_t * btn, lv_anim_enable_t anim);



 







#line 55 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_chart.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_chart.h"



#line 21 "..\\GUI\\lvgl_src/lv_widgets/lv_chart.h"
#line 22 "..\\GUI\\lvgl_src/lv_widgets/lv_chart.h"



 

 


 


struct _silence_gcc_warning;
struct _silence_gcc_warning;



 

 
enum {
    LV_CHART_TYPE_NONE     = 0x00,  
    LV_CHART_TYPE_LINE     = 0x01,  
    LV_CHART_TYPE_COLUMN   = 0x02,  
    LV_CHART_TYPE_SCATTER  = 0x03,  
};
typedef uint8_t lv_chart_type_t;

 
enum {
    LV_CHART_UPDATE_MODE_SHIFT,      
    LV_CHART_UPDATE_MODE_CIRCULAR,   
};
typedef uint8_t lv_chart_update_mode_t;


enum {
    LV_CHART_AXIS_PRIMARY_Y,
    LV_CHART_AXIS_SECONDARY_Y,
    _LV_CHART_AXIS_LAST,
};
typedef uint8_t lv_chart_axis_t;

enum {
    LV_CHART_CURSOR_NONE = 0x00,
	LV_CHART_CURSOR_RIGHT    = 0x01,
    LV_CHART_CURSOR_UP    = 0x02,
    LV_CHART_CURSOR_LEFT    = 0x04,
    LV_CHART_CURSOR_DOWN    = 0x08
};
typedef uint8_t lv_cursor_direction_t;

typedef struct {
    lv_coord_t * points;
    lv_color_t color;
    uint16_t start_point;
    uint8_t ext_buf_assigned : 1;
    lv_chart_axis_t y_axis  : 1;
} lv_chart_series_t;

typedef struct {
    lv_point_t point;
    lv_color_t color;
    lv_cursor_direction_t axes  : 4;
} lv_chart_cursor_t;

 
enum {
    LV_CHART_AXIS_SKIP_LAST_TICK = 0x00,             
    LV_CHART_AXIS_DRAW_LAST_TICK = 0x01,             
    LV_CHART_AXIS_INVERSE_LABELS_ORDER = 0x02        
};
typedef uint8_t lv_chart_axis_options_t;

typedef struct {
    const char * list_of_values;
    lv_chart_axis_options_t options;
    uint8_t num_tick_marks;
    uint8_t major_tick_len;
    uint8_t minor_tick_len;
} lv_chart_axis_cfg_t;

 
typedef struct {
       
     
    lv_ll_t series_ll;     
    lv_ll_t cursors_ll;     
    lv_coord_t ymin[_LV_CHART_AXIS_LAST];       
    lv_coord_t ymax[_LV_CHART_AXIS_LAST];       
    uint8_t hdiv_cnt;      
    uint8_t vdiv_cnt;      
    uint16_t point_cnt;    
    lv_style_list_t style_series_bg;
    lv_style_list_t style_series;
    lv_style_list_t style_cursors;
    lv_chart_type_t type;  
    lv_chart_axis_cfg_t y_axis;
    lv_chart_axis_cfg_t x_axis;
    lv_chart_axis_cfg_t secondary_y_axis;
    uint8_t update_mode : 1;
} lv_chart_ext_t;

 
enum {
    LV_CHART_PART_BG = LV_OBJ_PART_MAIN,
    LV_CHART_PART_SERIES_BG = _LV_OBJ_PART_VIRTUAL_LAST,
    LV_CHART_PART_SERIES,
    LV_CHART_PART_CURSOR
};



 







 
lv_obj_t * lv_chart_create(lv_obj_t * par, const lv_obj_t * copy);



 






 
lv_chart_series_t * lv_chart_add_series(lv_obj_t * chart, lv_color_t color);







 
lv_chart_cursor_t * lv_chart_add_cursor(lv_obj_t * chart, lv_color_t color, lv_cursor_direction_t dir);





 
void lv_chart_clear_series(lv_obj_t * chart, lv_chart_series_t * series);



 







 
void lv_chart_set_div_line_count(lv_obj_t * chart, uint8_t hdiv, uint8_t vdiv);







 
void lv_chart_set_y_range(lv_obj_t * chart, lv_chart_axis_t axis, lv_coord_t ymin, lv_coord_t ymax);





 
void lv_chart_set_type(lv_obj_t * chart, lv_chart_type_t type);





 
void lv_chart_set_point_count(lv_obj_t * chart, uint16_t point_cnt);






 
void lv_chart_init_points(lv_obj_t * chart, lv_chart_series_t * ser, lv_coord_t y);






 
void lv_chart_set_points(lv_obj_t * chart, lv_chart_series_t * ser, lv_coord_t y_array[]);






 
void lv_chart_set_next(lv_obj_t * chart, lv_chart_series_t * ser, lv_coord_t y);





 
void lv_chart_set_update_mode(lv_obj_t * chart, lv_chart_update_mode_t update_mode);








 
void lv_chart_set_x_tick_length(lv_obj_t * chart, uint8_t major_tick_len, uint8_t minor_tick_len);








 
void lv_chart_set_y_tick_length(lv_obj_t * chart, uint8_t major_tick_len, uint8_t minor_tick_len);








 
void lv_chart_set_secondary_y_tick_length(lv_obj_t * chart, uint8_t major_tick_len, uint8_t minor_tick_len);








 
void lv_chart_set_x_tick_texts(lv_obj_t * chart, const char * list_of_values, uint8_t num_tick_marks,
                               lv_chart_axis_options_t options);








 
void lv_chart_set_secondary_y_tick_texts(lv_obj_t * chart, const char * list_of_values, uint8_t num_tick_marks,
                                         lv_chart_axis_options_t options);








 
void lv_chart_set_y_tick_texts(lv_obj_t * chart, const char * list_of_values, uint8_t num_tick_marks,
                               lv_chart_axis_options_t options);






 
void lv_chart_set_x_start_point(lv_obj_t * chart, lv_chart_series_t * ser, uint16_t id);







 
void lv_chart_set_ext_array(lv_obj_t * chart, lv_chart_series_t * ser, lv_coord_t array[], uint16_t point_cnt);







 
void lv_chart_set_point_id(lv_obj_t * chart, lv_chart_series_t * ser, lv_coord_t value, uint16_t id);






 
void lv_chart_set_series_axis(lv_obj_t * chart, lv_chart_series_t * ser, lv_chart_axis_t axis);







 
void lv_chart_set_cursor_point(lv_obj_t * chart, lv_chart_cursor_t * cursor, lv_point_t * point);




 





 
lv_chart_type_t lv_chart_get_type(const lv_obj_t * chart);





 
uint16_t lv_chart_get_point_count(const lv_obj_t * chart);





 
uint16_t lv_chart_get_x_start_point(lv_chart_series_t * ser);







 
lv_coord_t lv_chart_get_point_id(lv_obj_t * chart, lv_chart_series_t * ser, uint16_t id);






 
lv_chart_axis_t lv_chart_get_series_axis(lv_obj_t * chart, lv_chart_series_t * ser);





 
void lv_chart_get_series_area(lv_obj_t * chart, lv_area_t * series_area);







 
lv_point_t lv_chart_get_cursor_point(lv_obj_t * chart, lv_chart_cursor_t * cursor);






 
uint16_t lv_chart_get_nearest_index_from_coord(lv_obj_t * chart, lv_coord_t x);








 
lv_coord_t lv_chart_get_x_from_index(lv_obj_t * chart, lv_chart_series_t * ser, uint16_t id);








 
lv_coord_t lv_chart_get_y_from_index(lv_obj_t * chart, lv_chart_series_t * ser, uint16_t id);



 




 
void lv_chart_refresh(lv_obj_t * chart);



 







#line 56 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_table.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_table.h"



 




#line 26 "..\\GUI\\lvgl_src/lv_widgets/lv_table.h"
#line 27 "..\\GUI\\lvgl_src/lv_widgets/lv_table.h"



 








 
#line 46 "..\\GUI\\lvgl_src/lv_widgets/lv_table.h"


 





 
typedef union {
    struct {
        uint8_t align : 2;
        uint8_t right_merge : 1;
        uint8_t type : 4; 
        uint8_t crop : 1;
    } s;
    uint8_t format_byte;
} lv_table_cell_format_t;

 
typedef struct {
     
    uint16_t col_cnt;
    uint16_t row_cnt;
    char ** cell_data;
    lv_coord_t * row_h;
    lv_style_list_t cell_style[4];
    lv_coord_t col_w[12];
    uint16_t cell_types : 4;  
} lv_table_ext_t;

 
enum {
    LV_TABLE_PART_BG,      
    LV_TABLE_PART_CELL1,   
    LV_TABLE_PART_CELL2,   
    LV_TABLE_PART_CELL3,
    LV_TABLE_PART_CELL4,  
 
};



 






 
lv_obj_t * lv_table_create(lv_obj_t * par, const lv_obj_t * copy);



 








 
void lv_table_set_cell_value(lv_obj_t * table, uint16_t row, uint16_t col, const char * txt);







 
void lv_table_set_cell_value_fmt(lv_obj_t * table, uint16_t row, uint16_t col, const char * fmt, ...);





 
void lv_table_set_row_cnt(lv_obj_t * table, uint16_t row_cnt);





 
void lv_table_set_col_cnt(lv_obj_t * table, uint16_t col_cnt);






 
void lv_table_set_col_width(lv_obj_t * table, uint16_t col_id, lv_coord_t w);







 
void lv_table_set_cell_align(lv_obj_t * table, uint16_t row, uint16_t col, lv_label_align_t align);







 
void lv_table_set_cell_type(lv_obj_t * table, uint16_t row, uint16_t col, uint8_t type);







 
void lv_table_set_cell_crop(lv_obj_t * table, uint16_t row, uint16_t col, _Bool crop);







 
void lv_table_set_cell_merge_right(lv_obj_t * table, uint16_t row, uint16_t col, _Bool en);



 







 
const char * lv_table_get_cell_value(lv_obj_t * table, uint16_t row, uint16_t col);





 
uint16_t lv_table_get_row_cnt(lv_obj_t * table);





 
uint16_t lv_table_get_col_cnt(lv_obj_t * table);






 
lv_coord_t lv_table_get_col_width(lv_obj_t * table, uint16_t col_id);








 
lv_label_align_t lv_table_get_cell_align(lv_obj_t * table, uint16_t row, uint16_t col);







 
lv_label_align_t lv_table_get_cell_type(lv_obj_t * table, uint16_t row, uint16_t col);







 
lv_label_align_t lv_table_get_cell_crop(lv_obj_t * table, uint16_t row, uint16_t col);







 
_Bool lv_table_get_cell_merge_right(lv_obj_t * table, uint16_t row, uint16_t col);







 
lv_res_t lv_table_get_pressed_cell(lv_obj_t * table, uint16_t * row, uint16_t * col);



 



 







#line 57 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_checkbox.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_checkbox.h"



 








#line 30 "..\\GUI\\lvgl_src/lv_widgets/lv_checkbox.h"
#line 31 "..\\GUI\\lvgl_src/lv_widgets/lv_checkbox.h"
#line 32 "..\\GUI\\lvgl_src/lv_widgets/lv_checkbox.h"



 



 

 
typedef struct {
    lv_btn_ext_t bg_btn;  
     
    lv_obj_t * bullet;  
    lv_obj_t * label;   
} lv_checkbox_ext_t;

 
enum {
    LV_CHECKBOX_PART_BG = LV_BTN_PART_MAIN,   
    _LV_CHECKBOX_PART_VIRTUAL_LAST,
    LV_CHECKBOX_PART_BULLET = _LV_BTN_PART_REAL_LAST,  
    _LV_CHECKBOX_PART_REAL_LAST
};
typedef uint8_t lv_checkbox_style_t;



 






 
lv_obj_t * lv_checkbox_create(lv_obj_t * par, const lv_obj_t * copy);



 






 
void lv_checkbox_set_text(lv_obj_t * cb, const char * txt);






 
void lv_checkbox_set_text_static(lv_obj_t * cb, const char * txt);





 
void lv_checkbox_set_checked(lv_obj_t * cb, _Bool checked);




 
void lv_checkbox_set_disabled(lv_obj_t * cb);





 
void lv_checkbox_set_state(lv_obj_t * cb, lv_btn_state_t state);


 





 
const char * lv_checkbox_get_text(const lv_obj_t * cb);





 
static inline _Bool lv_checkbox_is_checked(const lv_obj_t * cb)
{
    return lv_btn_get_state(cb) == LV_BTN_STATE_RELEASED ? 0 : 1;
}





 
static inline _Bool lv_checkbox_is_inactive(const lv_obj_t * cb)
{
    return lv_btn_get_state(cb) == LV_BTN_STATE_DISABLED ? 1 : 0;
}





 
static inline lv_btn_state_t lv_checkbox_get_state(const lv_obj_t * cb)
{
    return lv_btn_get_state(cb);
}



 







#line 58 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_cpicker.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_cpicker.h"



#line 21 "..\\GUI\\lvgl_src/lv_widgets/lv_cpicker.h"



 



 

enum {
    LV_CPICKER_TYPE_RECT,
    LV_CPICKER_TYPE_DISC,
};
typedef uint8_t lv_cpicker_type_t;

enum {
    LV_CPICKER_COLOR_MODE_HUE,
    LV_CPICKER_COLOR_MODE_SATURATION,
    LV_CPICKER_COLOR_MODE_VALUE
};
typedef uint8_t lv_cpicker_color_mode_t;



 
typedef struct {
    lv_color_hsv_t hsv;
    struct {
        lv_style_list_t style_list;
        lv_point_t pos;
        uint8_t colored     : 1;

    } knob;
    uint32_t last_click_time;
    uint32_t last_change_time;
    lv_point_t last_press_point;
    lv_cpicker_color_mode_t color_mode  : 2;
    uint8_t color_mode_fixed            : 1;
    lv_cpicker_type_t type              : 1;
} lv_cpicker_ext_t;

 
enum {
    LV_CPICKER_PART_MAIN = LV_OBJ_PART_MAIN,
    LV_CPICKER_PART_KNOB = _LV_OBJ_PART_VIRTUAL_LAST,
    _LV_CPICKER_PART_VIRTUAL_LAST,
    _LV_CPICKER_PART_REAL_LAST = _LV_OBJ_PART_REAL_LAST,
};




 






 
lv_obj_t * lv_cpicker_create(lv_obj_t * par, const lv_obj_t * copy);



 





 
void lv_cpicker_set_type(lv_obj_t * cpicker, lv_cpicker_type_t type);






 
_Bool lv_cpicker_set_hue(lv_obj_t * cpicker, uint16_t hue);






 
_Bool lv_cpicker_set_saturation(lv_obj_t * cpicker, uint8_t saturation);






 
_Bool lv_cpicker_set_value(lv_obj_t * cpicker, uint8_t val);






 
_Bool lv_cpicker_set_hsv(lv_obj_t * cpicker, lv_color_hsv_t hsv);






 
_Bool lv_cpicker_set_color(lv_obj_t * cpicker, lv_color_t color);





 
void lv_cpicker_set_color_mode(lv_obj_t * cpicker, lv_cpicker_color_mode_t mode);





 
void lv_cpicker_set_color_mode_fixed(lv_obj_t * cpicker, _Bool fixed);





 
void lv_cpicker_set_knob_colored(lv_obj_t * cpicker, _Bool en);



 





 
lv_cpicker_color_mode_t lv_cpicker_get_color_mode(lv_obj_t * cpicker);





 
_Bool lv_cpicker_get_color_mode_fixed(lv_obj_t * cpicker);





 
uint16_t lv_cpicker_get_hue(lv_obj_t * cpicker);





 
uint8_t lv_cpicker_get_saturation(lv_obj_t * cpicker);





 
uint8_t lv_cpicker_get_value(lv_obj_t * cpicker);





 
lv_color_hsv_t lv_cpicker_get_hsv(lv_obj_t * cpicker);





 
lv_color_t lv_cpicker_get_color(lv_obj_t * cpicker);





 
_Bool lv_cpicker_get_knob_colored(lv_obj_t * cpicker);



 



 







#line 59 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_bar.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_bar.h"



#line 21 "..\\GUI\\lvgl_src/lv_widgets/lv_bar.h"
#line 22 "..\\GUI\\lvgl_src/lv_widgets/lv_bar.h"
#line 23 "..\\GUI\\lvgl_src/lv_widgets/lv_bar.h"
#line 24 "..\\GUI\\lvgl_src/lv_widgets/lv_bar.h"
#line 25 "..\\GUI\\lvgl_src/lv_widgets/lv_bar.h"



 

 


 


 


 




 

enum {
    LV_BAR_TYPE_NORMAL,
    LV_BAR_TYPE_SYMMETRICAL,
    LV_BAR_TYPE_CUSTOM
};
typedef uint8_t lv_bar_type_t;


typedef struct {
    lv_obj_t * bar;
    lv_anim_value_t anim_start;
    lv_anim_value_t anim_end;
    lv_anim_value_t anim_state;
} lv_bar_anim_t;


 
typedef struct {
     

     
    int16_t cur_value;  
    int16_t min_value;  
    int16_t max_value;  
    int16_t start_value;  
    lv_area_t indic_area;    

    lv_anim_value_t anim_time;
    lv_bar_anim_t cur_value_anim;
    lv_bar_anim_t start_value_anim;

    uint8_t type : 2;            
    lv_style_list_t style_indic;  
} lv_bar_ext_t;

 
enum {
    LV_BAR_PART_BG,  
    LV_BAR_PART_INDIC,  
    _LV_BAR_PART_VIRTUAL_LAST
};
typedef uint8_t lv_bar_part_t;



 






 
lv_obj_t * lv_bar_create(lv_obj_t * par, const lv_obj_t * copy);



 






 
void lv_bar_set_value(lv_obj_t * bar, int16_t value, lv_anim_enable_t anim);






 
void lv_bar_set_start_value(lv_obj_t * bar, int16_t start_value, lv_anim_enable_t anim);






 
void lv_bar_set_range(lv_obj_t * bar, int16_t min, int16_t max);





 
void lv_bar_set_type(lv_obj_t * bar, lv_bar_type_t type);





 
void lv_bar_set_anim_time(lv_obj_t * bar, uint16_t anim_time);



 





 
int16_t lv_bar_get_value(const lv_obj_t * bar);





 
int16_t lv_bar_get_start_value(const lv_obj_t * bar);





 
int16_t lv_bar_get_min_value(const lv_obj_t * bar);





 
int16_t lv_bar_get_max_value(const lv_obj_t * bar);





 
lv_bar_type_t lv_bar_get_type(lv_obj_t * bar);





 
uint16_t lv_bar_get_anim_time(const lv_obj_t * bar);



 







#line 60 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_slider.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_slider.h"



 




#line 26 "..\\GUI\\lvgl_src/lv_widgets/lv_slider.h"
#line 27 "..\\GUI\\lvgl_src/lv_widgets/lv_slider.h"



 



 

enum {
    LV_SLIDER_TYPE_NORMAL,
    LV_SLIDER_TYPE_SYMMETRICAL,
    LV_SLIDER_TYPE_RANGE
};
typedef uint8_t lv_slider_type_t;

 
typedef struct {
    lv_bar_ext_t bar;  
     
    lv_style_list_t style_knob;  
    lv_area_t left_knob_area;
    lv_area_t right_knob_area;
    int16_t * value_to_set;  
    uint8_t dragging : 1;        
} lv_slider_ext_t;

 
enum {
    LV_SLIDER_PART_BG,  
    LV_SLIDER_PART_INDIC,  
    LV_SLIDER_PART_KNOB,  
};



 






 
lv_obj_t * lv_slider_create(lv_obj_t * par, const lv_obj_t * copy);



 






 
static inline void lv_slider_set_value(lv_obj_t * slider, int16_t value, lv_anim_enable_t anim)
{
    lv_bar_set_value(slider, value, anim);
}






 
static inline void lv_slider_set_left_value(lv_obj_t * slider, int16_t left_value, lv_anim_enable_t anim)
{
    lv_bar_set_start_value(slider, left_value, anim);
}






 
static inline void lv_slider_set_range(lv_obj_t * slider, int16_t min, int16_t max)
{
    lv_bar_set_range(slider, min, max);
}





 
static inline void lv_slider_set_anim_time(lv_obj_t * slider, uint16_t anim_time)
{
    lv_bar_set_anim_time(slider, anim_time);
}






 
static inline void lv_slider_set_type(lv_obj_t * slider, lv_slider_type_t type)
{
    if(type == LV_SLIDER_TYPE_NORMAL)
        lv_bar_set_type(slider, LV_BAR_TYPE_NORMAL);
    else if(type == LV_SLIDER_TYPE_SYMMETRICAL)
        lv_bar_set_type(slider, LV_BAR_TYPE_SYMMETRICAL);
    else if(type == LV_SLIDER_TYPE_RANGE)
        lv_bar_set_type(slider, LV_BAR_TYPE_CUSTOM);
}



 





 
int16_t lv_slider_get_value(const lv_obj_t * slider);





 
static inline int16_t lv_slider_get_left_value(const lv_obj_t * slider)
{
    return lv_bar_get_start_value(slider);
}





 
static inline int16_t lv_slider_get_min_value(const lv_obj_t * slider)
{
    return lv_bar_get_min_value(slider);
}





 
static inline int16_t lv_slider_get_max_value(const lv_obj_t * slider)
{
    return lv_bar_get_max_value(slider);
}





 
_Bool lv_slider_is_dragged(const lv_obj_t * slider);





 
static inline uint16_t lv_slider_get_anim_time(lv_obj_t * slider)
{
    return lv_bar_get_anim_time(slider);
}





 
static inline lv_slider_type_t lv_slider_get_type(lv_obj_t * slider)
{
    lv_bar_type_t type = lv_bar_get_type(slider);
    if(type == LV_BAR_TYPE_SYMMETRICAL)
        return LV_SLIDER_TYPE_SYMMETRICAL;
    else if(type == LV_BAR_TYPE_CUSTOM)
        return LV_SLIDER_TYPE_RANGE;
    else
        return LV_SLIDER_TYPE_NORMAL;
}



 







#line 61 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_led.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_led.h"



#line 21 "..\\GUI\\lvgl_src/lv_widgets/lv_led.h"



 



 

 
typedef struct {
     
     
    uint8_t bright;  
} lv_led_ext_t;

 
enum {
    LV_LED_PART_MAIN = LV_OBJ_PART_MAIN,
};
typedef uint8_t lv_led_part_t;



 






 
lv_obj_t * lv_led_create(lv_obj_t * par, const lv_obj_t * copy);





 
void lv_led_set_bright(lv_obj_t * led, uint8_t bright);




 
void lv_led_on(lv_obj_t * led);




 
void lv_led_off(lv_obj_t * led);




 
void lv_led_toggle(lv_obj_t * led);





 
uint8_t lv_led_get_bright(const lv_obj_t * led);



 







#line 62 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_btnmatrix.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_btnmatrix.h"



#line 21 "..\\GUI\\lvgl_src/lv_widgets/lv_btnmatrix.h"
#line 22 "..\\GUI\\lvgl_src/lv_widgets/lv_btnmatrix.h"
#line 23 "..\\GUI\\lvgl_src/lv_widgets/lv_btnmatrix.h"



 



struct _silence_gcc_warning;



 


 
enum {
    LV_BTNMATRIX_CTRL_HIDDEN     = 0x0008,  
    LV_BTNMATRIX_CTRL_NO_REPEAT  = 0x0010,  
    LV_BTNMATRIX_CTRL_DISABLED   = 0x0020,  
    LV_BTNMATRIX_CTRL_CHECKABLE  = 0x0040,  
    LV_BTNMATRIX_CTRL_CHECK_STATE  = 0x0080,  
    LV_BTNMATRIX_CTRL_CLICK_TRIG = 0x0100,  
};
typedef uint16_t lv_btnmatrix_ctrl_t;

 
typedef struct {
       
     
    const char ** map_p;                               
    lv_area_t * button_areas;                          
    lv_btnmatrix_ctrl_t * ctrl_bits;                        
    lv_style_list_t style_btn;                      
    uint16_t btn_cnt;                                  
    uint16_t btn_id_pr;                                
    uint16_t btn_id_focused;                           
    uint16_t btn_id_act;     
    uint8_t recolor : 1;     
    uint8_t one_check : 1;   
    uint8_t align : 2;       
} lv_btnmatrix_ext_t;

enum {
    LV_BTNMATRIX_PART_BG,
    LV_BTNMATRIX_PART_BTN,
};
typedef uint8_t lv_btnmatrix_part_t;



 







 
lv_obj_t * lv_btnmatrix_create(lv_obj_t * par, const lv_obj_t * copy);



 







 
void lv_btnmatrix_set_map(lv_obj_t * btnm, const char * map[]);












 
void lv_btnmatrix_set_ctrl_map(lv_obj_t * btnm, const lv_btnmatrix_ctrl_t ctrl_map[]);





 
void lv_btnmatrix_set_focused_btn(lv_obj_t * btnm, uint16_t id);





 
void lv_btnmatrix_set_recolor(const lv_obj_t * btnm, _Bool en);





 
void lv_btnmatrix_set_btn_ctrl(const lv_obj_t * btnm, uint16_t btn_id, lv_btnmatrix_ctrl_t ctrl);





 
void lv_btnmatrix_clear_btn_ctrl(const lv_obj_t * btnm, uint16_t btn_id, lv_btnmatrix_ctrl_t ctrl);





 
void lv_btnmatrix_set_btn_ctrl_all(lv_obj_t * btnm, lv_btnmatrix_ctrl_t ctrl);






 
void lv_btnmatrix_clear_btn_ctrl_all(lv_obj_t * btnm, lv_btnmatrix_ctrl_t ctrl);









 
void lv_btnmatrix_set_btn_width(lv_obj_t * btnm, uint16_t btn_id, uint8_t width);







 
void lv_btnmatrix_set_one_check(lv_obj_t * btnm, _Bool one_chk);





 
void lv_btnmatrix_set_align(lv_obj_t * btnm, lv_label_align_t align);



 





 
const char ** lv_btnmatrix_get_map_array(const lv_obj_t * btnm);





 
_Bool lv_btnmatrix_get_recolor(const lv_obj_t * btnm);






 
uint16_t lv_btnmatrix_get_active_btn(const lv_obj_t * btnm);






 
const char * lv_btnmatrix_get_active_btn_text(const lv_obj_t * btnm);





 
uint16_t lv_btnmatrix_get_focused_btn(const lv_obj_t * btnm);







 
const char * lv_btnmatrix_get_btn_text(const lv_obj_t * btnm, uint16_t btn_id);








 
_Bool lv_btnmatrix_get_btn_ctrl(lv_obj_t * btnm, uint16_t btn_id, lv_btnmatrix_ctrl_t ctrl);





 
_Bool lv_btnmatrix_get_one_check(const lv_obj_t * btnm);





 
lv_label_align_t lv_btnmatrix_get_align(const lv_obj_t * btnm);



 







#line 63 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_keyboard.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_keyboard.h"



 








#line 30 "..\\GUI\\lvgl_src/lv_widgets/lv_keyboard.h"
#line 31 "..\\GUI\\lvgl_src/lv_widgets/lv_keyboard.h"



 




 

 
enum {
    LV_KEYBOARD_MODE_TEXT_LOWER,
    LV_KEYBOARD_MODE_TEXT_UPPER,
    LV_KEYBOARD_MODE_SPECIAL,
    LV_KEYBOARD_MODE_NUM,
};
typedef uint8_t lv_keyboard_mode_t;

 
typedef struct {
    lv_btnmatrix_ext_t btnm;  
     
    lv_obj_t * ta;           
    lv_keyboard_mode_t mode;       
    uint8_t cursor_mng : 1;  
} lv_keyboard_ext_t;

enum {
    LV_KEYBOARD_PART_BG,
    LV_KEYBOARD_PART_BTN,
};
typedef uint8_t lv_keyboard_style_t;



 






 
lv_obj_t * lv_keyboard_create(lv_obj_t * par, const lv_obj_t * copy);



 





 
void lv_keyboard_set_textarea(lv_obj_t * kb, lv_obj_t * ta);





 
void lv_keyboard_set_mode(lv_obj_t * kb, lv_keyboard_mode_t mode);





 
void lv_keyboard_set_cursor_manage(lv_obj_t * kb, _Bool en);







 
void lv_keyboard_set_map(lv_obj_t * kb, lv_keyboard_mode_t mode, const char * map[]);









 
void lv_keyboard_set_ctrl_map(lv_obj_t * kb, lv_keyboard_mode_t mode, const lv_btnmatrix_ctrl_t ctrl_map[]);



 





 
lv_obj_t * lv_keyboard_get_textarea(const lv_obj_t * kb);





 
lv_keyboard_mode_t lv_keyboard_get_mode(const lv_obj_t * kb);





 
_Bool lv_keyboard_get_cursor_manage(const lv_obj_t * kb);





 
static inline const char ** lv_keyboard_get_map_array(const lv_obj_t * kb)
{
    return lv_btnmatrix_get_map_array(kb);
}



 







 
void lv_keyboard_def_event_cb(lv_obj_t * kb, lv_event_t event);



 







#line 64 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_dropdown.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_dropdown.h"



 








#line 30 "..\\GUI\\lvgl_src/lv_widgets/lv_dropdown.h"
#line 31 "..\\GUI\\lvgl_src/lv_widgets/lv_dropdown.h"



 




 

enum {
    LV_DROPDOWN_DIR_DOWN,
    LV_DROPDOWN_DIR_UP,
    LV_DROPDOWN_DIR_LEFT,
    LV_DROPDOWN_DIR_RIGHT,
};

typedef uint8_t lv_dropdown_dir_t;

 
typedef struct {
     
    lv_obj_t * page;              
    const char * text;            
    const char * symbol;          
    char * options;
    lv_style_list_t style_selected;  
    lv_style_list_t style_page;      
    lv_style_list_t style_scrlbar;  
    lv_coord_t max_height;         
    uint16_t option_cnt;           
    uint16_t sel_opt_id;           
    uint16_t sel_opt_id_orig;      
    uint16_t pr_opt_id;              
    lv_dropdown_dir_t dir         : 2;
    uint8_t show_selected  : 1;
    uint8_t static_txt : 1;
} lv_dropdown_ext_t;

enum {
    LV_DROPDOWN_PART_MAIN = LV_OBJ_PART_MAIN,
    LV_DROPDOWN_PART_LIST = _LV_OBJ_PART_REAL_LAST,
    LV_DROPDOWN_PART_SCROLLBAR,
    LV_DROPDOWN_PART_SELECTED,
};
typedef uint8_t lv_dropdown_part_t;



 






 
lv_obj_t * lv_dropdown_create(lv_obj_t * par, const lv_obj_t * copy);



 





 
void lv_dropdown_set_text(lv_obj_t * ddlist, const char * txt);




 
void lv_dropdown_clear_options(lv_obj_t * ddlist);






 
void lv_dropdown_set_options(lv_obj_t * ddlist, const char * options);





 
void lv_dropdown_set_options_static(lv_obj_t * ddlist, const char * options);






 
void lv_dropdown_add_option(lv_obj_t * ddlist, const char * option, uint32_t pos);





 
void lv_dropdown_set_selected(lv_obj_t * ddlist, uint16_t sel_opt);






 
void lv_dropdown_set_dir(lv_obj_t * ddlist, lv_dropdown_dir_t dir);





 
void lv_dropdown_set_max_height(lv_obj_t * ddlist, lv_coord_t h);





 
void lv_dropdown_set_symbol(lv_obj_t * ddlist, const char * symbol);





 
void lv_dropdown_set_show_selected(lv_obj_t * ddlist, _Bool show);



 





 
const char * lv_dropdown_get_text(lv_obj_t * ddlist);





 
const char * lv_dropdown_get_options(const lv_obj_t * ddlist);





 
uint16_t lv_dropdown_get_selected(const lv_obj_t * ddlist);





 
uint16_t lv_dropdown_get_option_cnt(const lv_obj_t * ddlist);






 
void lv_dropdown_get_selected_str(const lv_obj_t * ddlist, char * buf, uint32_t buf_size);





 
lv_coord_t lv_dropdown_get_max_height(const lv_obj_t * ddlist);





 
const char * lv_dropdown_get_symbol(lv_obj_t * ddlist);





 
lv_dropdown_dir_t lv_dropdown_get_dir(const lv_obj_t * ddlist);





 
_Bool lv_dropdown_get_show_selected(lv_obj_t * ddlist);



 




 
void lv_dropdown_open(lv_obj_t * ddlist);





 
void lv_dropdown_close(lv_obj_t * ddlist);



 







#line 65 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_roller.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_roller.h"



 




#line 26 "..\\GUI\\lvgl_src/lv_widgets/lv_roller.h"
#line 27 "..\\GUI\\lvgl_src/lv_widgets/lv_roller.h"
#line 28 "..\\GUI\\lvgl_src/lv_widgets/lv_roller.h"



 



 

 
enum {
    LV_ROLLER_MODE_NORMAL,  
    LV_ROLLER_MODE_INIFINITE,  
};

typedef uint8_t lv_roller_mode_t;



 
typedef struct {
    lv_page_ext_t page;  

     
    lv_style_list_t style_sel;  
    uint16_t option_cnt;           
    uint16_t sel_opt_id;           
    uint16_t sel_opt_id_ori;       
    lv_roller_mode_t mode : 1;
    uint8_t auto_fit : 1;          
} lv_roller_ext_t;

enum {
    LV_ROLLER_PART_BG = LV_PAGE_PART_BG,
    LV_ROLLER_PART_SELECTED = _LV_PAGE_PART_VIRTUAL_LAST,
    _LV_ROLLER_PART_VIRTUAL_LAST,
};
typedef uint8_t lv_roller_part_t;



 






 
lv_obj_t * lv_roller_create(lv_obj_t * par, const lv_obj_t * copy);



 






 
void lv_roller_set_options(lv_obj_t * roller, const char * options, lv_roller_mode_t mode);





 
void lv_roller_set_align(lv_obj_t * roller, lv_label_align_t align);






 
void lv_roller_set_selected(lv_obj_t * roller, uint16_t sel_opt, lv_anim_enable_t anim);





 
void lv_roller_set_visible_row_count(lv_obj_t * roller, uint8_t row_cnt);





 
void lv_roller_set_auto_fit(lv_obj_t * roller, _Bool auto_fit);





 
static inline void lv_roller_set_anim_time(lv_obj_t * roller, uint16_t anim_time)
{
    lv_page_set_anim_time(roller, anim_time);
}



 




 
uint16_t lv_roller_get_selected(const lv_obj_t * roller);





 
uint16_t lv_roller_get_option_cnt(const lv_obj_t * roller);






 
void lv_roller_get_selected_str(const lv_obj_t * roller, char * buf, uint32_t buf_size);





 
lv_label_align_t lv_roller_get_align(const lv_obj_t * roller);





 
_Bool lv_roller_get_auto_fit(lv_obj_t * roller);





 
const char * lv_roller_get_options(const lv_obj_t * roller);





 
static inline uint16_t lv_roller_get_anim_time(const lv_obj_t * roller)
{
    return lv_page_get_anim_time(roller);
}




 







#line 66 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_textarea.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_textarea.h"



 








#line 30 "..\\GUI\\lvgl_src/lv_widgets/lv_textarea.h"
#line 31 "..\\GUI\\lvgl_src/lv_widgets/lv_textarea.h"
#line 32 "..\\GUI\\lvgl_src/lv_widgets/lv_textarea.h"



 


struct _silence_gcc_warning;



 

 
typedef struct {
    lv_page_ext_t page;  
     
    lv_obj_t * label;             
    char * placeholder_txt;       
    lv_style_list_t style_placeholder;
    char * pwd_tmp;               
    const char * accapted_chars;  
    uint32_t max_length;          
    uint16_t pwd_show_time;       
    struct {
        lv_style_list_t style;   
        lv_coord_t valid_x;        
 
        uint32_t pos;              
 
        uint16_t blink_time;        
        lv_area_t area;             
        uint32_t txt_byte_pos;      
        uint8_t state : 1;          
        uint8_t hidden : 1;         
        uint8_t click_pos : 1;      
    } cursor;
#line 74 "..\\GUI\\lvgl_src/lv_widgets/lv_textarea.h"
    uint8_t pwd_mode : 1;  
    uint8_t one_line : 1;  
} lv_textarea_ext_t;

 
enum {
    LV_TEXTAREA_PART_BG = LV_PAGE_PART_BG,  
    LV_TEXTAREA_PART_SCROLLBAR = LV_PAGE_PART_SCROLLBAR,  
    LV_TEXTAREA_PART_EDGE_FLASH = LV_PAGE_PART_EDGE_FLASH,  
    LV_TEXTAREA_PART_CURSOR = _LV_PAGE_PART_VIRTUAL_LAST,  
    LV_TEXTAREA_PART_PLACEHOLDER,  
    _LV_TEXTAREA_PART_VIRTUAL_LAST,

    _LV_TEXTAREA_PART_REAL_LAST = _LV_PAGE_PART_REAL_LAST,
};
typedef uint8_t lv_textarea_style_t;



 






 
lv_obj_t * lv_textarea_create(lv_obj_t * par, const lv_obj_t * copy);



 






 
void lv_textarea_add_char(lv_obj_t * ta, uint32_t c);





 
void lv_textarea_add_text(lv_obj_t * ta, const char * txt);




 
void lv_textarea_del_char(lv_obj_t * ta);




 
void lv_textarea_del_char_forward(lv_obj_t * ta);



 





 
void lv_textarea_set_text(lv_obj_t * ta, const char * txt);





 
void lv_textarea_set_placeholder_text(lv_obj_t * ta, const char * txt);







 
void lv_textarea_set_cursor_pos(lv_obj_t * ta, int32_t pos);





 
void lv_textarea_set_cursor_hidden(lv_obj_t * ta, _Bool hide);





 
void lv_textarea_set_cursor_click_pos(lv_obj_t * ta, _Bool en);





 
void lv_textarea_set_pwd_mode(lv_obj_t * ta, _Bool en);





 
void lv_textarea_set_one_line(lv_obj_t * ta, _Bool en);







 
void lv_textarea_set_text_align(lv_obj_t * ta, lv_label_align_t align);





 
void lv_textarea_set_accepted_chars(lv_obj_t * ta, const char * list);





 
void lv_textarea_set_max_length(lv_obj_t * ta, uint32_t num);








 
void lv_textarea_set_insert_replace(lv_obj_t * ta, const char * txt);





 
static inline void lv_textarea_set_scrollbar_mode(lv_obj_t * ta, lv_scrollbar_mode_t mode)
{
    lv_page_set_scrollbar_mode(ta, mode);
}






 
static inline void lv_textarea_set_scroll_propagation(lv_obj_t * ta, _Bool en)
{
    lv_page_set_scroll_propagation(ta, en);
}





 
static inline void lv_textarea_set_edge_flash(lv_obj_t * ta, _Bool en)
{
    lv_page_set_edge_flash(ta, en);
}





 
void lv_textarea_set_text_sel(lv_obj_t * ta, _Bool en);





 
void lv_textarea_set_pwd_show_time(lv_obj_t * ta, uint16_t time);





 
void lv_textarea_set_cursor_blink_time(lv_obj_t * ta, uint16_t time);



 





 
const char * lv_textarea_get_text(const lv_obj_t * ta);





 
const char * lv_textarea_get_placeholder_text(lv_obj_t * ta);





 
lv_obj_t * lv_textarea_get_label(const lv_obj_t * ta);





 
uint32_t lv_textarea_get_cursor_pos(const lv_obj_t * ta);





 
_Bool lv_textarea_get_cursor_hidden(const lv_obj_t * ta);





 
_Bool lv_textarea_get_cursor_click_pos(lv_obj_t * ta);





 
_Bool lv_textarea_get_pwd_mode(const lv_obj_t * ta);





 
_Bool lv_textarea_get_one_line(const lv_obj_t * ta);





 
const char * lv_textarea_get_accepted_chars(lv_obj_t * ta);





 
uint32_t lv_textarea_get_max_length(lv_obj_t * ta);





 
static inline lv_scrollbar_mode_t lv_textarea_get_scrollbar_mode(const lv_obj_t * ta)
{
    return lv_page_get_scrollbar_mode(ta);
}





 
static inline _Bool lv_textarea_get_scroll_propagation(lv_obj_t * ta)
{
    return lv_page_get_scroll_propagation(ta);
}





 
static inline _Bool lv_textarea_get_edge_flash(lv_obj_t * ta)
{
    return lv_page_get_edge_flash(ta);
}





 
_Bool lv_textarea_text_is_selected(const lv_obj_t * ta);





 
_Bool lv_textarea_get_text_sel_en(lv_obj_t * ta);





 
uint16_t lv_textarea_get_pwd_show_time(lv_obj_t * ta);





 
uint16_t lv_textarea_get_cursor_blink_time(lv_obj_t * ta);



 




 
void lv_textarea_clear_selection(lv_obj_t * ta);




 
void lv_textarea_cursor_right(lv_obj_t * ta);




 
void lv_textarea_cursor_left(lv_obj_t * ta);




 
void lv_textarea_cursor_down(lv_obj_t * ta);




 
void lv_textarea_cursor_up(lv_obj_t * ta);



 







#line 67 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_canvas.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_canvas.h"



#line 21 "..\\GUI\\lvgl_src/lv_widgets/lv_canvas.h"
#line 22 "..\\GUI\\lvgl_src/lv_widgets/lv_canvas.h"
#line 23 "..\\GUI\\lvgl_src/lv_widgets/lv_canvas.h"



 



 
 
typedef struct {
    lv_img_ext_t img;  
     
    lv_img_dsc_t dsc;
} lv_canvas_ext_t;

 
enum {
    LV_CANVAS_PART_MAIN,
};
typedef uint8_t lv_canvas_part_t;



 






 
lv_obj_t * lv_canvas_create(lv_obj_t * par, const lv_obj_t * copy);



 












 
void lv_canvas_set_buffer(lv_obj_t * canvas, void * buf, lv_coord_t w, lv_coord_t h, lv_img_cf_t cf);







 
void lv_canvas_set_px(lv_obj_t * canvas, lv_coord_t x, lv_coord_t y, lv_color_t c);










 
void lv_canvas_set_palette(lv_obj_t * canvas, uint8_t id, lv_color_t c);



 







 
lv_color_t lv_canvas_get_px(lv_obj_t * canvas, lv_coord_t x, lv_coord_t y);





 
lv_img_dsc_t * lv_canvas_get_img(lv_obj_t * canvas);



 










 
void lv_canvas_copy_buf(lv_obj_t * canvas, const void * to_copy, lv_coord_t x, lv_coord_t y, lv_coord_t w,
                        lv_coord_t h);















 
void lv_canvas_transform(lv_obj_t * canvas, lv_img_dsc_t * img, int16_t angle, uint16_t zoom, lv_coord_t offset_x,
                         lv_coord_t offset_y,
                         int32_t pivot_x, int32_t pivot_y, _Bool antialias);








 
void lv_canvas_blur_hor(lv_obj_t * canvas, const lv_area_t * area, uint16_t r);






 
void lv_canvas_blur_ver(lv_obj_t * canvas, const lv_area_t * area, uint16_t r);






 
void lv_canvas_fill_bg(lv_obj_t * canvas, lv_color_t color, lv_opa_t opa);









 
void lv_canvas_draw_rect(lv_obj_t * canvas, lv_coord_t x, lv_coord_t y, lv_coord_t w, lv_coord_t h,
                         const lv_draw_rect_dsc_t * rect_dsc);










 
void lv_canvas_draw_text(lv_obj_t * canvas, lv_coord_t x, lv_coord_t y, lv_coord_t max_w,
                         lv_draw_label_dsc_t * label_draw_dsc,
                         const char * txt, lv_label_align_t align);








 
void lv_canvas_draw_img(lv_obj_t * canvas, lv_coord_t x, lv_coord_t y, const void * src,
                        const lv_draw_img_dsc_t * img_draw_dsc);







 
void lv_canvas_draw_line(lv_obj_t * canvas, const lv_point_t points[], uint32_t point_cnt,
                         const lv_draw_line_dsc_t * line_draw_dsc);







 
void lv_canvas_draw_polygon(lv_obj_t * canvas, const lv_point_t points[], uint32_t point_cnt,
                            const lv_draw_rect_dsc_t * poly_draw_dsc);










 
void lv_canvas_draw_arc(lv_obj_t * canvas, lv_coord_t x, lv_coord_t y, lv_coord_t r, int32_t start_angle,
                        int32_t end_angle, const lv_draw_line_dsc_t * arc_draw_dsc);



 




 





 











#line 68 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_win.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_win.h"



 
















#line 38 "..\\GUI\\lvgl_src/lv_widgets/lv_win.h"
#line 39 "..\\GUI\\lvgl_src/lv_widgets/lv_win.h"
#line 40 "..\\GUI\\lvgl_src/lv_widgets/lv_win.h"
#line 41 "..\\GUI\\lvgl_src/lv_widgets/lv_win.h"
#line 42 "..\\GUI\\lvgl_src/lv_widgets/lv_win.h"
#line 43 "..\\GUI\\lvgl_src/lv_widgets/lv_win.h"



 



 

 
typedef struct {
     
     
    lv_obj_t * page;                   
    lv_obj_t * header;                 
    char * title_txt;                  
    lv_coord_t btn_w;                  
} lv_win_ext_t;

 
enum {
    LV_WIN_PART_BG = LV_OBJ_PART_MAIN,  
    _LV_WIN_PART_VIRTUAL_LAST,
    LV_WIN_PART_HEADER = _LV_OBJ_PART_REAL_LAST,  
    LV_WIN_PART_CONTENT_SCROLLABLE,  
    LV_WIN_PART_SCROLLBAR,  
    _LV_WIN_PART_REAL_LAST
};



 






 
lv_obj_t * lv_win_create(lv_obj_t * par, const lv_obj_t * copy);




 
void lv_win_clean(lv_obj_t * win);



 






 
lv_obj_t * lv_win_add_btn_right(lv_obj_t * win, const void * img_src);






 
lv_obj_t * lv_win_add_btn_left(lv_obj_t * win, const void * img_src);



 





 
void lv_win_close_event_cb(lv_obj_t * btn, lv_event_t event);





 
void lv_win_set_title(lv_obj_t * win, const char * title);





 
void lv_win_set_header_height(lv_obj_t * win, lv_coord_t size);





 
void lv_win_set_btn_width(lv_obj_t * win, lv_coord_t width);






 
void lv_win_set_content_size(lv_obj_t * win, lv_coord_t w, lv_coord_t h);





 
void lv_win_set_layout(lv_obj_t * win, lv_layout_t layout);





 
void lv_win_set_scrollbar_mode(lv_obj_t * win, lv_scrollbar_mode_t sb_mode);





 
void lv_win_set_anim_time(lv_obj_t * win, uint16_t anim_time);





 
void lv_win_set_drag(lv_obj_t * win, _Bool en);



 





 
const char * lv_win_get_title(const lv_obj_t * win);





 
lv_obj_t * lv_win_get_content(const lv_obj_t * win);





 
lv_coord_t lv_win_get_header_height(const lv_obj_t * win);






 
lv_coord_t lv_win_get_btn_width(lv_obj_t * win);






 
lv_obj_t * lv_win_get_from_btn(const lv_obj_t * ctrl_btn);





 
lv_layout_t lv_win_get_layout(lv_obj_t * win);





 
lv_scrollbar_mode_t lv_win_get_sb_mode(lv_obj_t * win);





 
uint16_t lv_win_get_anim_time(const lv_obj_t * win);





 
lv_coord_t lv_win_get_width(lv_obj_t * win);





 
static inline _Bool lv_win_get_drag(const lv_obj_t * win)
{
    return lv_obj_get_drag(win);
}



 






 
void lv_win_focus(lv_obj_t * win, lv_obj_t * obj, lv_anim_enable_t anim_en);





 
static inline void lv_win_scroll_hor(lv_obj_t * win, lv_coord_t dist)
{
    lv_win_ext_t * ext = (lv_win_ext_t *)lv_obj_get_ext_attr(win);
    lv_page_scroll_hor(ext->page, dist);
}




 
static inline void lv_win_scroll_ver(lv_obj_t * win, lv_coord_t dist)
{
    lv_win_ext_t * ext = (lv_win_ext_t *)lv_obj_get_ext_attr(win);
    lv_page_scroll_ver(ext->page, dist);
}



 







#line 69 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_tabview.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_tabview.h"



 








#line 30 "..\\GUI\\lvgl_src/lv_widgets/lv_tabview.h"
#line 31 "..\\GUI\\lvgl_src/lv_widgets/lv_tabview.h"
#line 32 "..\\GUI\\lvgl_src/lv_widgets/lv_tabview.h"



 



 

 
enum {
    LV_TABVIEW_TAB_POS_NONE,
    LV_TABVIEW_TAB_POS_TOP,
    LV_TABVIEW_TAB_POS_BOTTOM,
    LV_TABVIEW_TAB_POS_LEFT,
    LV_TABVIEW_TAB_POS_RIGHT
};
typedef uint8_t lv_tabview_btns_pos_t;

 
typedef struct {
     
     
    lv_obj_t * btns;
    lv_obj_t * indic;
    lv_obj_t * content;  
    const char ** tab_name_ptr;
    lv_point_t point_last;
    uint16_t tab_cur;
    uint16_t tab_cnt;

    uint16_t anim_time;

    lv_tabview_btns_pos_t btns_pos : 3;
} lv_tabview_ext_t;

enum {
    LV_TABVIEW_PART_BG = LV_OBJ_PART_MAIN,
    _LV_TABVIEW_PART_VIRTUAL_LAST = _LV_OBJ_PART_VIRTUAL_LAST,

    LV_TABVIEW_PART_BG_SCRLLABLE = _LV_OBJ_PART_REAL_LAST,
    LV_TABVIEW_PART_TAB_BG,
    LV_TABVIEW_PART_TAB_BTN,
    LV_TABVIEW_PART_INDIC,
    _LV_TABVIEW_PART_REAL_LAST,
};
typedef uint8_t lv_tabview_part_t;



 






 
lv_obj_t * lv_tabview_create(lv_obj_t * par, const lv_obj_t * copy);



 






 
lv_obj_t * lv_tabview_add_tab(lv_obj_t * tabview, const char * name);




 
void lv_tabview_clean_tab(lv_obj_t * tab);



 






 
void lv_tabview_set_tab_act(lv_obj_t * tabview, uint16_t id, lv_anim_enable_t anim);






 
void lv_tabview_set_tab_name(lv_obj_t * tabview, uint16_t id, char * name);





 
void lv_tabview_set_anim_time(lv_obj_t * tabview, uint16_t anim_time);





 
void lv_tabview_set_btns_pos(lv_obj_t * tabview, lv_tabview_btns_pos_t btns_pos);



 





 
uint16_t lv_tabview_get_tab_act(const lv_obj_t * tabview);





 
uint16_t lv_tabview_get_tab_count(const lv_obj_t * tabview);





 
lv_obj_t * lv_tabview_get_tab(const lv_obj_t * tabview, uint16_t id);





 
uint16_t lv_tabview_get_anim_time(const lv_obj_t * tabview);




 
lv_tabview_btns_pos_t lv_tabview_get_btns_pos(const lv_obj_t * tabview);



 







#line 70 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_tileview.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_tileview.h"



#line 21 "..\\GUI\\lvgl_src/lv_widgets/lv_tileview.h"



 



 

 
typedef struct {
    lv_page_ext_t page;
     
    const lv_point_t * valid_pos;
    uint16_t valid_pos_cnt;

    uint16_t anim_time;

    lv_point_t act_id;
    uint8_t drag_top_en : 1;
    uint8_t drag_bottom_en : 1;
    uint8_t drag_left_en : 1;
    uint8_t drag_right_en : 1;
} lv_tileview_ext_t;

 
enum {
    LV_TILEVIEW_PART_BG = LV_PAGE_PART_BG,
    LV_TILEVIEW_PART_SCROLLBAR = LV_PAGE_PART_SCROLLBAR,
    LV_TILEVIEW_PART_EDGE_FLASH = LV_PAGE_PART_EDGE_FLASH,
    _LV_TILEVIEW_PART_VIRTUAL_LAST = _LV_PAGE_PART_VIRTUAL_LAST,
    _LV_TILEVIEW_PART_REAL_LAST = _LV_PAGE_PART_REAL_LAST
};



 






 
lv_obj_t * lv_tileview_create(lv_obj_t * par, const lv_obj_t * copy);



 





 
void lv_tileview_add_element(lv_obj_t * tileview, lv_obj_t * element);



 







 
void lv_tileview_set_valid_positions(lv_obj_t * tileview, const lv_point_t valid_pos[], uint16_t valid_pos_cnt);







 
void lv_tileview_set_tile_act(lv_obj_t * tileview, lv_coord_t x, lv_coord_t y, lv_anim_enable_t anim);





 
static inline void lv_tileview_set_edge_flash(lv_obj_t * tileview, _Bool en)
{
    lv_page_set_edge_flash(tileview, en);
}





 
static inline void lv_tileview_set_anim_time(lv_obj_t * tileview, uint16_t anim_time)
{
    lv_page_set_anim_time(tileview, anim_time);
}



 





 
void lv_tileview_get_tile_act(lv_obj_t * tileview, lv_coord_t * x, lv_coord_t * y);




 
static inline _Bool lv_tileview_get_edge_flash(lv_obj_t * tileview)
{
    return lv_page_get_edge_flash(tileview);
}





 
static inline uint16_t lv_tileview_get_anim_time(lv_obj_t * tileview)
{
    return lv_page_get_anim_time(tileview);
}



 



 







#line 71 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_msgbox.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_msgbox.h"



 












#line 34 "..\\GUI\\lvgl_src/lv_widgets/lv_msgbox.h"
#line 35 "..\\GUI\\lvgl_src/lv_widgets/lv_msgbox.h"
#line 36 "..\\GUI\\lvgl_src/lv_widgets/lv_msgbox.h"
#line 37 "..\\GUI\\lvgl_src/lv_widgets/lv_msgbox.h"



 



 

 
typedef struct {
    lv_cont_ext_t bg;  
     
    lv_obj_t * text;  
    lv_obj_t * btnm;  

    uint16_t anim_time;  

} lv_msgbox_ext_t;

 
enum {
    LV_MSGBOX_PART_BG = LV_CONT_PART_MAIN,

    LV_MSGBOX_PART_BTN_BG = _LV_CONT_PART_REAL_LAST,
    LV_MSGBOX_PART_BTN,
};
typedef uint8_t lv_msgbox_style_t;



 







 
lv_obj_t * lv_msgbox_create(lv_obj_t * par, const lv_obj_t * copy);



 






 
void lv_msgbox_add_btns(lv_obj_t * mbox, const char * btn_mapaction[]);



 





 
void lv_msgbox_set_text(lv_obj_t * mbox, const char * txt);





 
void lv_msgbox_set_anim_time(lv_obj_t * mbox, uint16_t anim_time);





 
void lv_msgbox_start_auto_close(lv_obj_t * mbox, uint16_t delay);




 
void lv_msgbox_stop_auto_close(lv_obj_t * mbox);





 
void lv_msgbox_set_recolor(lv_obj_t * mbox, _Bool en);



 





 
const char * lv_msgbox_get_text(const lv_obj_t * mbox);






 
uint16_t lv_msgbox_get_active_btn(lv_obj_t * mbox);






 
const char * lv_msgbox_get_active_btn_text(lv_obj_t * mbox);





 
uint16_t lv_msgbox_get_anim_time(const lv_obj_t * mbox);





 
_Bool lv_msgbox_get_recolor(const lv_obj_t * mbox);






 
lv_obj_t * lv_msgbox_get_btnmatrix(lv_obj_t * mbox);



 







#line 72 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_objmask.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_objmask.h"



#line 21 "..\\GUI\\lvgl_src/lv_widgets/lv_objmask.h"
#line 22 "..\\GUI\\lvgl_src/lv_widgets/lv_objmask.h"



 



 

typedef struct {
    void * param;
} lv_objmask_mask_t;

 
typedef struct {
    lv_cont_ext_t cont;  
     
    lv_ll_t mask_ll;     

} lv_objmask_ext_t;

 
enum {
    LV_OBJMASK_PART_MAIN,
};
typedef uint8_t lv_objmask_part_t;



 






 
lv_obj_t * lv_objmask_create(lv_obj_t * par, const lv_obj_t * copy);



 






 
lv_objmask_mask_t * lv_objmask_add_mask(lv_obj_t * objmask, void * param);






 
void lv_objmask_update_mask(lv_obj_t * objmask, lv_objmask_mask_t * mask, void * param);






 
void lv_objmask_remove_mask(lv_obj_t * objmask, lv_objmask_mask_t * mask);



 



 



 



 







#line 73 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_gauge.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_gauge.h"



 




#line 26 "..\\GUI\\lvgl_src/lv_widgets/lv_gauge.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_linemeter.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_linemeter.h"



#line 21 "..\\GUI\\lvgl_src/lv_widgets/lv_linemeter.h"



 



 
 
typedef struct {
       
     
    uint16_t scale_angle;  
    uint16_t angle_ofs;
    uint16_t line_cnt;      
    int32_t cur_value;
    int32_t min_value;
    int32_t max_value;
    uint8_t mirrored : 1;
} lv_linemeter_ext_t;

 
enum {
    LV_LINEMETER_PART_MAIN,
    _LV_LINEMETER_PART_VIRTUAL_LAST,
    _LV_LINEMETER_PART_REAL_LAST = _LV_OBJ_PART_REAL_LAST,
};
typedef uint8_t lv_linemeter_part_t;



 







 
lv_obj_t * lv_linemeter_create(lv_obj_t * par, const lv_obj_t * copy);



 





 
void lv_linemeter_set_value(lv_obj_t * lmeter, int32_t value);






 
void lv_linemeter_set_range(lv_obj_t * lmeter, int32_t min, int32_t max);






 
void lv_linemeter_set_scale(lv_obj_t * lmeter, uint16_t angle, uint16_t line_cnt);





 
void lv_linemeter_set_angle_offset(lv_obj_t * lmeter, uint16_t angle);





 
void lv_linemeter_set_mirror(lv_obj_t * lmeter, _Bool mirror);



 





 
int32_t lv_linemeter_get_value(const lv_obj_t * lmeter);





 
int32_t lv_linemeter_get_min_value(const lv_obj_t * lmeter);





 
int32_t lv_linemeter_get_max_value(const lv_obj_t * lmeter);





 
uint16_t lv_linemeter_get_line_count(const lv_obj_t * lmeter);





 
uint16_t lv_linemeter_get_scale_angle(const lv_obj_t * lmeter);





 
uint16_t lv_linemeter_get_angle_offset(lv_obj_t * lmeter);


void lv_linemeter_draw_scale(lv_obj_t * lmeter, const lv_area_t * clip_area, uint8_t part);





 
_Bool lv_linemeter_get_mirror(lv_obj_t * lmeter);



 







#line 27 "..\\GUI\\lvgl_src/lv_widgets/lv_gauge.h"
#line 28 "..\\GUI\\lvgl_src/lv_widgets/lv_gauge.h"
#line 29 "..\\GUI\\lvgl_src/lv_widgets/lv_gauge.h"



 



 

typedef void (*lv_gauge_format_cb_t)(lv_obj_t * gauge, char * buf, int bufsize, int32_t value);

 
typedef struct {
    lv_linemeter_ext_t lmeter;  
     
    int32_t * values;         
    const lv_color_t * needle_colors;  
    const void * needle_img;
    lv_point_t needle_img_pivot;
    lv_style_list_t style_needle;
    lv_style_list_t style_strong;
    uint8_t needle_count;              
    uint8_t label_count;               
    lv_gauge_format_cb_t format_cb;
} lv_gauge_ext_t;

 
enum {
    LV_GAUGE_PART_MAIN = LV_LINEMETER_PART_MAIN,
    LV_GAUGE_PART_MAJOR = _LV_LINEMETER_PART_VIRTUAL_LAST,
    LV_GAUGE_PART_NEEDLE,
    _LV_GAUGE_PART_VIRTUAL_LAST = _LV_LINEMETER_PART_VIRTUAL_LAST,
    _LV_GAUGE_PART_REAL_LAST = _LV_LINEMETER_PART_REAL_LAST,
};
typedef uint8_t lv_gauge_style_t;



 






 
lv_obj_t * lv_gauge_create(lv_obj_t * par, const lv_obj_t * copy);



 






 
void lv_gauge_set_needle_count(lv_obj_t * gauge, uint8_t needle_cnt, const lv_color_t colors[]);






 
void lv_gauge_set_value(lv_obj_t * gauge, uint8_t needle_id, int32_t value);






 
static inline void lv_gauge_set_range(lv_obj_t * gauge, int32_t min, int32_t max)
{
    lv_linemeter_set_range(gauge, min, max);
}





 
static inline void lv_gauge_set_critical_value(lv_obj_t * gauge, int32_t value)
{
    lv_linemeter_set_value(gauge, value);
}









 
void lv_gauge_set_scale(lv_obj_t * gauge, uint16_t angle, uint8_t line_cnt, uint8_t label_cnt);





 
static inline void lv_gauge_set_angle_offset(lv_obj_t * gauge, uint16_t angle)
{
    lv_linemeter_set_angle_offset(gauge, angle);
}









 
void lv_gauge_set_needle_img(lv_obj_t * gauge, const void * img, lv_coord_t pivot_x, lv_coord_t pivot_y);





 
void lv_gauge_set_formatter_cb(lv_obj_t * gauge, lv_gauge_format_cb_t format_cb);



 






 
int32_t lv_gauge_get_value(const lv_obj_t * gauge, uint8_t needle);





 
uint8_t lv_gauge_get_needle_count(const lv_obj_t * gauge);





 
static inline int32_t lv_gauge_get_min_value(const lv_obj_t * lmeter)
{
    return lv_linemeter_get_min_value(lmeter);
}





 
static inline int32_t lv_gauge_get_max_value(const lv_obj_t * lmeter)
{
    return lv_linemeter_get_max_value(lmeter);
}





 
static inline int32_t lv_gauge_get_critical_value(const lv_obj_t * gauge)
{
    return lv_linemeter_get_value(gauge);
}





 
uint8_t lv_gauge_get_label_count(const lv_obj_t * gauge);





 
static inline uint16_t lv_gauge_get_line_count(const lv_obj_t * gauge)
{
    return lv_linemeter_get_line_count(gauge);
}





 
static inline uint16_t lv_gauge_get_scale_angle(const lv_obj_t * gauge)
{
    return lv_linemeter_get_scale_angle(gauge);
}





 
static inline uint16_t lv_gauge_get_angle_offset(lv_obj_t * gauge)
{
    return lv_linemeter_get_angle_offset(gauge);
}






 
const void * lv_gauge_get_needle_img(lv_obj_t * gauge);





 
lv_coord_t lv_gauge_get_needle_img_pivot_x(lv_obj_t * gauge);





 
lv_coord_t lv_gauge_get_needle_img_pivot_y(lv_obj_t * gauge);



 







#line 74 "..\\GUI\\lvgl/lvgl.h"
#line 75 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_switch.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_switch.h"



 




#line 26 "..\\GUI\\lvgl_src/lv_widgets/lv_switch.h"
#line 27 "..\\GUI\\lvgl_src/lv_widgets/lv_switch.h"



 



 
 
typedef struct {
    lv_bar_ext_t bar;  
     
    lv_style_list_t style_knob;  
} lv_switch_ext_t;



 
enum {
    LV_SWITCH_PART_BG = LV_BAR_PART_BG,                  
    LV_SWITCH_PART_INDIC = LV_BAR_PART_INDIC,            
    LV_SWITCH_PART_KNOB = _LV_BAR_PART_VIRTUAL_LAST,     
    _LV_SWITCH_PART_VIRTUAL_LAST
};

typedef uint8_t lv_switch_part_t;



 






 
lv_obj_t * lv_switch_create(lv_obj_t * par, const lv_obj_t * copy);



 





 
void lv_switch_on(lv_obj_t * sw, lv_anim_enable_t anim);





 
void lv_switch_off(lv_obj_t * sw, lv_anim_enable_t anim);






 
_Bool lv_switch_toggle(lv_obj_t * sw, lv_anim_enable_t anim);






 
static inline void lv_switch_set_anim_time(lv_obj_t * sw, uint16_t anim_time)
{
    lv_bar_set_anim_time(sw, anim_time);
}



 





 
static inline _Bool lv_switch_get_state(const lv_obj_t * sw)
{
    return lv_bar_get_value(sw) == 1 ? 1 : 0;
}





 
static inline uint16_t lv_switch_get_anim_time(const lv_obj_t * sw)
{
    return lv_bar_get_anim_time(sw);
}



 







#line 76 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_arc.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_arc.h"



#line 21 "..\\GUI\\lvgl_src/lv_widgets/lv_arc.h"



 



 

enum {
    LV_ARC_TYPE_NORMAL,
    LV_ARC_TYPE_SYMMETRIC,
    LV_ARC_TYPE_REVERSE
};
typedef uint8_t lv_arc_type_t;

 
typedef struct {
     
    uint16_t rotation_angle;
    uint16_t arc_angle_start;
    uint16_t arc_angle_end;
    uint16_t bg_angle_start;
    uint16_t bg_angle_end;
    lv_style_list_t style_arc;
    lv_style_list_t style_knob;  

    int16_t cur_value;  
    int16_t min_value;  
    int16_t max_value;  
    uint16_t dragging    : 1;
    uint16_t type        : 2;
    uint16_t adjustable  : 1;
    uint16_t chg_rate;  
    uint32_t last_tick;  
    int16_t last_angle;  
} lv_arc_ext_t;

 
enum {
    LV_ARC_PART_BG = LV_OBJ_PART_MAIN,
    LV_ARC_PART_INDIC,
    LV_ARC_PART_KNOB,
    _LV_ARC_PART_VIRTUAL_LAST,
    _LV_ARC_PART_REAL_LAST = _LV_OBJ_PART_REAL_LAST,
};
typedef uint8_t lv_arc_part_t;



 






 
lv_obj_t * lv_arc_create(lv_obj_t * par, const lv_obj_t * copy);



 



 





 
void lv_arc_set_start_angle(lv_obj_t * arc, uint16_t start);





 
void lv_arc_set_end_angle(lv_obj_t * arc, uint16_t end);






 
void lv_arc_set_angles(lv_obj_t * arc, uint16_t start, uint16_t end);





 
void lv_arc_set_bg_start_angle(lv_obj_t * arc, uint16_t start);





 
void lv_arc_set_bg_end_angle(lv_obj_t * arc, uint16_t end);






 
void lv_arc_set_bg_angles(lv_obj_t * arc, uint16_t start, uint16_t end);





 
void lv_arc_set_rotation(lv_obj_t * arc, uint16_t rotation_angle);






 
void lv_arc_set_type(lv_obj_t * arc, lv_arc_type_t type);





 
void lv_arc_set_value(lv_obj_t * arc, int16_t value);






 
void lv_arc_set_range(lv_obj_t * arc, int16_t min, int16_t max);






 
void lv_arc_set_chg_rate(lv_obj_t * arc, uint16_t threshold);





 
void lv_arc_set_adjustable(lv_obj_t * arc, _Bool adjustable);



 





 
uint16_t lv_arc_get_angle_start(lv_obj_t * arc);





 
uint16_t lv_arc_get_angle_end(lv_obj_t * arc);





 
uint16_t lv_arc_get_bg_angle_start(lv_obj_t * arc);





 
uint16_t lv_arc_get_bg_angle_end(lv_obj_t * arc);





 
lv_arc_type_t lv_arc_get_type(const lv_obj_t * arc);





 
int16_t lv_arc_get_value(const lv_obj_t * arc);





 
int16_t lv_arc_get_min_value(const lv_obj_t * arc);





 
int16_t lv_arc_get_max_value(const lv_obj_t * arc);





 
_Bool lv_arc_is_dragged(const lv_obj_t * arc);





 
_Bool lv_arc_get_adjustable(lv_obj_t * arc);



 



 







#line 77 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_spinner.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_spinner.h"



 








#line 30 "..\\GUI\\lvgl_src/lv_widgets/lv_spinner.h"
#line 31 "..\\GUI\\lvgl_src/lv_widgets/lv_spinner.h"
#line 32 "..\\GUI\\lvgl_src/lv_widgets/lv_spinner.h"



 



 



 
enum {
    LV_SPINNER_TYPE_SPINNING_ARC,
    LV_SPINNER_TYPE_FILLSPIN_ARC,
    LV_SPINNER_TYPE_CONSTANT_ARC,
};
typedef uint8_t lv_spinner_type_t;



 
enum {
    LV_SPINNER_DIR_FORWARD,
    LV_SPINNER_DIR_BACKWARD,
};
typedef uint8_t lv_spinner_dir_t;

 
typedef struct {
    lv_arc_ext_t arc;  
     
    lv_anim_value_t arc_length;       
    uint16_t time;                    
    lv_spinner_type_t anim_type : 2;  
    lv_spinner_dir_t anim_dir : 1;    
} lv_spinner_ext_t;

 
enum {
    LV_SPINNER_PART_BG = LV_ARC_PART_BG,
    LV_SPINNER_PART_INDIC = LV_ARC_PART_INDIC,
    _LV_SPINNER_PART_VIRTUAL_LAST,

    _LV_SPINNER_PART_REAL_LAST = _LV_ARC_PART_REAL_LAST,
};
typedef uint8_t lv_spinner_style_t;



 







 
lv_obj_t * lv_spinner_create(lv_obj_t * par, const lv_obj_t * copy);



 





 
void lv_spinner_set_arc_length(lv_obj_t * spinner, lv_anim_value_t deg);





 
void lv_spinner_set_spin_time(lv_obj_t * spinner, uint16_t time);



 





 
void lv_spinner_set_type(lv_obj_t * spinner, lv_spinner_type_t type);





 
void lv_spinner_set_dir(lv_obj_t * spinner, lv_spinner_dir_t dir);



 




 
lv_anim_value_t lv_spinner_get_arc_length(const lv_obj_t * spinner);




 
uint16_t lv_spinner_get_spin_time(const lv_obj_t * spinner);





 
lv_spinner_type_t lv_spinner_get_type(lv_obj_t * spinner);





 
lv_spinner_dir_t lv_spinner_get_dir(lv_obj_t * spinner);



 





 
void lv_spinner_anim_cb(void * ptr, lv_anim_value_t val);



 







#line 78 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_calendar.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_calendar.h"



#line 21 "..\\GUI\\lvgl_src/lv_widgets/lv_calendar.h"



 



 



 
typedef struct {
    uint16_t year;
    int8_t month;
    int8_t day;
} lv_calendar_date_t;

 
typedef struct {
       
     
    lv_calendar_date_t today;                
    lv_calendar_date_t showed_date;          
    lv_calendar_date_t * highlighted_dates; 
 
    int8_t btn_pressing;                     
    uint16_t highlighted_dates_num;           
    lv_calendar_date_t pressed_date;
    const char ** day_names;    
    const char ** month_names;  

     
    lv_style_list_t style_header;
    lv_style_list_t style_day_names;
    lv_style_list_t style_date_nums;
} lv_calendar_ext_t;

 
enum {
    LV_CALENDAR_PART_BG,  
    LV_CALENDAR_PART_HEADER,  
    LV_CALENDAR_PART_DAY_NAMES,  
    LV_CALENDAR_PART_DATE,  
};
typedef uint8_t lv_calendar_part_t;



 






 
lv_obj_t * lv_calendar_create(lv_obj_t * par, const lv_obj_t * copy);



 



 






 
void lv_calendar_set_today_date(lv_obj_t * calendar, lv_calendar_date_t * today);






 
void lv_calendar_set_showed_date(lv_obj_t * calendar, lv_calendar_date_t * showed);







 
void lv_calendar_set_highlighted_dates(lv_obj_t * calendar, lv_calendar_date_t highlighted[], uint16_t date_num);







 
void lv_calendar_set_day_names(lv_obj_t * calendar, const char ** day_names);







 
void lv_calendar_set_month_names(lv_obj_t * calendar, const char ** month_names);



 





 
lv_calendar_date_t * lv_calendar_get_today_date(const lv_obj_t * calendar);





 
lv_calendar_date_t * lv_calendar_get_showed_date(const lv_obj_t * calendar);






 
lv_calendar_date_t * lv_calendar_get_pressed_date(const lv_obj_t * calendar);





 
lv_calendar_date_t * lv_calendar_get_highlighted_dates(const lv_obj_t * calendar);





 
uint16_t lv_calendar_get_highlighted_dates_num(const lv_obj_t * calendar);





 
const char ** lv_calendar_get_day_names(const lv_obj_t * calendar);





 
const char ** lv_calendar_get_month_names(const lv_obj_t * calendar);



 



 







#line 79 "..\\GUI\\lvgl/lvgl.h"
#line 1 "..\\GUI\\lvgl_src/lv_widgets/lv_spinbox.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_widgets/lv_spinbox.h"



 




#line 26 "..\\GUI\\lvgl_src/lv_widgets/lv_spinbox.h"
#line 27 "..\\GUI\\lvgl_src/lv_widgets/lv_spinbox.h"



 




 

 
typedef struct {
    lv_textarea_ext_t ta;  
     
    int32_t value;
    int32_t range_max;
    int32_t range_min;
    int32_t step;
    uint8_t rollover : 1;   
    uint16_t digit_count : 4;
    uint16_t dec_point_pos : 4;  
    uint16_t digit_padding_left : 4;
} lv_spinbox_ext_t;

 
enum {
    LV_SPINBOX_PART_BG = LV_TEXTAREA_PART_BG,
    LV_SPINBOX_PART_CURSOR = LV_TEXTAREA_PART_CURSOR,
    _LV_SPINBOX_PART_VIRTUAL_LAST = _LV_TEXTAREA_PART_VIRTUAL_LAST,
    _LV_SPINBOX_PART_REAL_LAST = _LV_TEXTAREA_PART_REAL_LAST,
};
typedef uint8_t lv_spinbox_part_t;



 






 
lv_obj_t * lv_spinbox_create(lv_obj_t * par, const lv_obj_t * copy);



 





 
void lv_spinbox_set_rollover(lv_obj_t * spinbox, _Bool b);





 
void lv_spinbox_set_value(lv_obj_t * spinbox, int32_t i);







 
void lv_spinbox_set_digit_format(lv_obj_t * spinbox, uint8_t digit_count, uint8_t separator_position);





 
void lv_spinbox_set_step(lv_obj_t * spinbox, uint32_t step);






 
void lv_spinbox_set_range(lv_obj_t * spinbox, int32_t range_min, int32_t range_max);





 
void lv_spinbox_set_padding_left(lv_obj_t * spinbox, uint8_t padding);



 




 
_Bool lv_spinbox_get_rollover(lv_obj_t * spinbox);





 
int32_t lv_spinbox_get_value(lv_obj_t * spinbox);



 




 
void lv_spinbox_step_next(lv_obj_t * spinbox);




 
void lv_spinbox_step_prev(lv_obj_t * spinbox);




 
void lv_spinbox_increment(lv_obj_t * spinbox);




 
void lv_spinbox_decrement(lv_obj_t * spinbox);



 







#line 80 "..\\GUI\\lvgl/lvgl.h"

#line 1 "..\\GUI\\lvgl_src/lv_draw/lv_img_cache.h"



 










 
#line 17 "..\\GUI\\lvgl_src/lv_draw/lv_img_cache.h"



 



 





 
typedef struct {
    lv_img_decoder_dsc_t dec_dsc;  

    

 
    int32_t life;
} lv_img_cache_entry_t;



 








 
lv_img_cache_entry_t * _lv_img_cache_open(const void * src, lv_color_t color);






 
void lv_img_cache_set_size(uint16_t new_slot_num);





 
void lv_img_cache_invalidate_src(const void * src);



 





#line 82 "..\\GUI\\lvgl/lvgl.h"

#line 1 "..\\GUI\\lvgl_src/lv_api_map.h"



 










 
#line 1 "..\\GUI\\lvgl_src/../lvgl.h"



 
 
#line 17 "..\\GUI\\lvgl_src/lv_api_map.h"



 



 



 



 
#line 181 "..\\GUI\\lvgl_src/lv_api_map.h"






 



static inline lv_obj_t * lv_win_add_btn(lv_obj_t * win, const void * img_src)
{
    return lv_win_add_btn_right(win, img_src);
}




static inline void lv_chart_set_range(lv_obj_t * chart, lv_coord_t ymin, lv_coord_t ymax)
{
    lv_chart_set_y_range(chart, LV_CHART_AXIS_PRIMARY_Y, ymin,  ymax);
}


static inline void lv_chart_clear_serie(lv_obj_t * chart, lv_chart_series_t * series)
{
    lv_chart_clear_series(chart, series);
}



static inline void lv_obj_align_origo(lv_obj_t * obj, const lv_obj_t * base, lv_align_t align, lv_coord_t x_ofs,
                                      lv_coord_t y_ofs)
{
    lv_obj_align_mid(obj, base, align, x_ofs, y_ofs);
}

static inline void lv_obj_align_origo_x(lv_obj_t * obj, const lv_obj_t * base, lv_align_t align, lv_coord_t x_ofs)
{
    lv_obj_align_mid_y(obj, base, align, x_ofs);
}

static inline void lv_obj_align_origo_y(lv_obj_t * obj, const lv_obj_t * base, lv_align_t align, lv_coord_t y_ofs)
{
    lv_obj_align_mid_y(obj, base, align, y_ofs);
}




 





#line 84 "..\\GUI\\lvgl/lvgl.h"





 



 



 



 





















 







#line 77 "..\\USER\\main.h"
#line 1 "..\\GUI\\lvgl_driver\\lv_port_disp.h"



 

  











 
#line 20 "..\\GUI\\lvgl_driver\\lv_port_disp.h"



 



 



 



 
void lv_port_disp_init(void);







#line 78 "..\\USER\\main.h"
#line 1 "..\\GUI\\lvgl_driver\\lv_port_indev.h"




 

  











 
#line 21 "..\\GUI\\lvgl_driver\\lv_port_indev.h"



 



 



 



 
void lv_port_indev_init(void);







#line 79 "..\\USER\\main.h"

#line 1 "..\\GUI_APP\\gui_guider.h"



 







#line 13 "..\\GUI_APP\\gui_guider.h"
#line 1 "..\\GUI_APP\\guider_fonts\\guider_fonts.h"






    
#line 9 "..\\GUI_APP\\guider_fonts\\guider_fonts.h"
    
    extern lv_font_t lv_font_montserratMedium_12;

    




    
#line 14 "..\\GUI_APP\\gui_guider.h"

typedef struct
{
	lv_obj_t *screen;
	lv_obj_t *screen_cont0;
	lv_obj_t *screen_sw1;
	lv_obj_t *screen_img2;
	lv_obj_t *screen_label3;
	lv_obj_t *screen_imgbtn4;
	lv_obj_t *screen_imgbtn4_label;
	lv_obj_t *screen_cont6;
	lv_obj_t *screen_led6;
	lv_obj_t *screen_led7;
	lv_obj_t *screen_led8;
}lv_ui;

void setup_ui(lv_ui *ui);
extern lv_ui guider_ui;
void setup_scr_screen(lv_ui *ui);
extern const lv_img_dsc_t _user_login_logo_alpha_100x60;;
extern const lv_img_dsc_t _wifi1_alpha_30x25;;
extern const lv_img_dsc_t _wifi_alpha_30x25;;






#line 81 "..\\USER\\main.h"
#line 1 "..\\GUI_APP\\events_init.h"



 


#line 10 "..\\GUI_APP\\events_init.h"

void events_init(lv_ui *ui);
void events_init_screen(lv_ui *ui);


#line 82 "..\\USER\\main.h"


#line 1 "..\\GUI_APP\\old/lv_demo_widgets.h"



 










 



 



 



 
void lv_demo_widgets(void);



 





#line 85 "..\\USER\\main.h"

#line 1 "..\\FreeRTOS\\include\\timers.h"
























 










 
#line 38 "..\\FreeRTOS\\include\\timers.h"
 

 



 



 





 
#line 63 "..\\FreeRTOS\\include\\timers.h"













 
struct tmrTimerControl;  
typedef struct tmrTimerControl * TimerHandle_t;



 
typedef void (* TimerCallbackFunction_t)( TimerHandle_t xTimer );




 
typedef void (* PendedFunction_t)( void *,
                                   uint32_t );









































































































































 

    TimerHandle_t xTimerCreate( const char * const pcTimerName,  
                                const TickType_t xTimerPeriodInTicks,
                                const UBaseType_t uxAutoReload,
                                void * const pvTimerID,
                                TimerCallbackFunction_t pxCallbackFunction ) ;



























































































































 
#line 367 "..\\FreeRTOS\\include\\timers.h"




















 
void * pvTimerGetTimerID( const TimerHandle_t xTimer ) ;



















 
void vTimerSetTimerID( TimerHandle_t xTimer,
                       void * pvNewID ) ;



































 
BaseType_t xTimerIsTimerActive( TimerHandle_t xTimer ) ;






 
TaskHandle_t xTimerGetTimerDaemonTaskHandle( void ) ;


















































 










































 
















































































 






































 




























































































































 






















































































 































































 









































































 






















































































 



























































































 
BaseType_t xTimerPendFunctionCallFromISR( PendedFunction_t xFunctionToPend,
                                          void * pvParameter1,
                                          uint32_t ulParameter2,
                                          BaseType_t * pxHigherPriorityTaskWoken ) ;
































 
BaseType_t xTimerPendFunctionCall( PendedFunction_t xFunctionToPend,
                                   void * pvParameter1,
                                   uint32_t ulParameter2,
                                   TickType_t xTicksToWait ) ;









 
const char * pcTimerGetName( TimerHandle_t xTimer ) ;  















 
void vTimerSetReloadMode( TimerHandle_t xTimer,
                          const UBaseType_t uxAutoReload ) ;












 
UBaseType_t uxTimerGetReloadMode( TimerHandle_t xTimer ) ;









 
TickType_t xTimerGetPeriod( TimerHandle_t xTimer ) ;













 
TickType_t xTimerGetExpiryTime( TimerHandle_t xTimer ) ;




 
BaseType_t xTimerCreateTimerTask( void ) ;
BaseType_t xTimerGenericCommand( TimerHandle_t xTimer,
                                 const BaseType_t xCommandID,
                                 const TickType_t xOptionalValue,
                                 BaseType_t * const pxHigherPriorityTaskWoken,
                                 const TickType_t xTicksToWait ) ;


    void vTimerSetTimerNumber( TimerHandle_t xTimer,
                               UBaseType_t uxTimerNumber ) ;
    UBaseType_t uxTimerGetTimerNumber( TimerHandle_t xTimer ) ;


#line 1345 "..\\FreeRTOS\\include\\timers.h"

 



 
#line 87 "..\\USER\\main.h"
#line 1 "..\\FreeRTOS\\include\\semphr.h"
























 








#line 35 "..\\FreeRTOS\\include\\semphr.h"

typedef QueueHandle_t SemaphoreHandle_t;
























































 
#line 104 "..\\FreeRTOS\\include\\semphr.h"



























































 




























































 






































































 






























































































 


































































 





















































































 





























































































 


































 


























































 






























































 





































































 










































































 

















































































 






















































































 

















 
















 












 













 


#line 88 "..\\USER\\main.h"
#line 1 "..\\HARDWARE\\DS18B20\\ds18b20.h"
#line 4 "..\\HARDWARE\\DS18B20\\ds18b20.h"
















 



   	
u8 DS18B20_Init(void);			
short DS18B20_Get_Temperature(void);	
void DS18B20_Start(void);		
void DS18B20_Write_Byte(u8 dat);
u8 DS18B20_Read_Byte(void);		
u8 DS18B20_Read_Bit(void);		
u8 DS18B20_Check(void);			
void DS18B20_Reset(void);		
















#line 89 "..\\USER\\main.h"
#line 1 "..\\HARDWARE\\HCSR04\\hcsr04.h"
#line 4 "..\\HARDWARE\\HCSR04\\hcsr04.h"









extern u8 overFlowCount;
float Hcsr04_Get_Length(void );
void Hcsr04_Init(void);


#line 90 "..\\USER\\main.h"
#line 1 "..\\HARDWARE\\PWM\\pwm.h"



#line 5 "..\\HARDWARE\\PWM\\pwm.h"
#line 6 "..\\HARDWARE\\PWM\\pwm.h"



 








	
	
	
	
	
void servo_angle(int angle);
void servo_init(void);



 
typedef enum RGBtype{
    R_LED = 1,
    G_LED = 2,
    B_LED = 3
}RGB_type;

void RGB_Init(void);
void Set_Duty_Cycle(RGB_type RGBx,u8 dty);



#line 91 "..\\USER\\main.h"
#line 1 "..\\HARDWARE\\RNG\\rng.h"
#line 4 "..\\HARDWARE\\RNG\\rng.h"













u8  RNG_Init(void);			
u32 RNG_Get_RandomNum(void);
int RNG_Get_RandomRange(int min,int max);


#line 92 "..\\USER\\main.h"
#line 1 "..\\IOT_PROTOCOL\\gizwits_product.h"














 







#line 24 "..\\IOT_PROTOCOL\\gizwits_product.h"
#line 25 "..\\IOT_PROTOCOL\\gizwits_product.h"
#line 1 "..\\IOT_PROTOCOL\\gizwits_protocol.h"














 








#line 25 "..\\IOT_PROTOCOL\\gizwits_protocol.h"
#line 26 "..\\IOT_PROTOCOL\\gizwits_protocol.h"
#line 27 "..\\IOT_PROTOCOL\\gizwits_protocol.h"
#line 28 "..\\IOT_PROTOCOL\\gizwits_protocol.h"
#line 29 "..\\IOT_PROTOCOL\\gizwits_protocol.h"
#line 1 "..\\IOT_PROTOCOL\\IOT_TOOLS\\common.h"














 







#line 24 "..\\IOT_PROTOCOL\\IOT_TOOLS\\common.h"
#line 25 "..\\IOT_PROTOCOL\\IOT_TOOLS\\common.h"
#line 26 "..\\IOT_PROTOCOL\\IOT_TOOLS\\common.h"
#line 27 "..\\IOT_PROTOCOL\\IOT_TOOLS\\common.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\ctype.h"
 
 
 
 





 






 








#line 35 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\ctype.h"






#line 49 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\ctype.h"

 
#line 59 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\ctype.h"

 
 









 
#line 81 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\ctype.h"





#line 133 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\ctype.h"

extern __declspec(__nothrow) __attribute__((const)) unsigned char **__rt_ctype_table(void);







    extern int (isalnum)(int  );

     





    extern int (isalpha)(int  );

     





    extern int (iscntrl)(int  );

     
     

 




    extern int (isdigit)(int  );

     

    extern int (isblank)(int  );
     
     
     





    extern int (isgraph)(int  );

     





    extern int (islower)(int  );

     





    extern int (isprint)(int  );

     
     





    extern int (ispunct)(int  );

     





    extern int (isspace)(int  );

     





    extern int (isupper)(int  );

     

 
 

static inline int __isxdigit_helper(int __t) { return (__t ^ (__t << 2)); }




    extern int (isxdigit)(int  );

     



extern int tolower(int  );
     
     

extern int toupper(int  );
     
     







#line 272 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\ctype.h"



 

#line 28 "..\\IOT_PROTOCOL\\IOT_TOOLS\\common.h"
#line 29 "..\\IOT_PROTOCOL\\IOT_TOOLS\\common.h"


int null_founction(const char *format, ...); 
extern void Usart1_DmaPrintf(const char *format,...);





typedef void (*gizTimerFunc_t)(void *arg );




 
#line 51 "..\\IOT_PROTOCOL\\IOT_TOOLS\\common.h"








 






#line 73 "..\\IOT_PROTOCOL\\IOT_TOOLS\\common.h"















 
typedef enum
{
    ERR_SUCCESS                 = 0,        
                                            
    
    ERR_MEMORY                  = -0x0101,  
    ERR_SPACE                   = -0x0102,  
    ERR_ILLEGAL_ADDR            = -0x0103,  
                                            
    
    ERR_PARAM_ILLEGAL           = -0x0201,  
    ERR_PARAM_ADDR_NULL         = -0x0202,  
                                            
    
    ERR_FLASH_READ              = -0x0301,  
    ERR_FLASH_WRITE             = -0x0302,  
    ERR_FLASH_ADDR              = -0x0303,  
    ERR_FLASH_SAVE              = -0x0304,  
                                            
    
    ERR_MATH_DIV                = -0x0401,  
    ERR_MATH_RANGE              = -0x0402,  
    ERR_MATH_OVERSTEP           = -0x0403,  
                                            
    
    ERR_SEARCH_NO_ELEMENT       = -0x0501,  
                                            
    
    ERR_ID_ILLEGAL              = -0x0601,  
} errorCodeType_t;

#pragma pack(1)
typedef struct
{
    uint16_t year;
    uint8_t month;
    uint8_t day;
    uint8_t hour;
    uint8_t minute;
    uint8_t second;
    uint32_t ntp;
} gizTime_t;
#pragma pack()

uint8_t gizProtocolSum(uint8_t *buf, uint32_t len);
uint16_t exchangeBytes(uint16_t value);
uint32_t exchangeWord(uint32_t	value);
int32_t returnWeekDay(uint32_t iYear, uint32_t iMonth, uint32_t iDay);
gizTime_t returnNtp2Wt(uint32_t ntp);

void getOnePasscode(uint8_t *data, uint32_t len);
void str2Hex(char *pbDest, char *pbSrc, int32_t nLen);
void hex2Str(unsigned char *pbDest, unsigned char *pbSrc, int32_t nLen);
uint8_t char2hex(char A , char B);
int8_t checkStringIsNotZero(const char *data);
int8_t checkStringIsZero(const char *data);






#line 30 "..\\IOT_PROTOCOL\\gizwits_protocol.h"

                                                                                                                  


                                                    





 

 


 

               


 

     






 

 



 

 








 
#line 119 "..\\IOT_PROTOCOL\\gizwits_protocol.h"

#line 184 "..\\IOT_PROTOCOL\\gizwits_protocol.h"
 

 




 



 


typedef enum
{
    Servo_VALUE0 = 0,
    Servo_VALUE1 = 1,
    Servo_VALUE2 = 2,
    Servo_VALUE3 = 3,
    Servo_VALUE4 = 4,
    Servo_VALUE5 = 5,
    Servo_VALUE_MAX,
} Servo_ENUM_T;

 
typedef enum
{
  WIFI_SOFTAP = 0x00,                               
  WIFI_AIRLINK,                                     
  WIFI_STATION,                                     
  WIFI_OPEN_BINDING,                                
  WIFI_CLOSE_BINDING,                               
  WIFI_CON_ROUTER,                                  
  WIFI_DISCON_ROUTER,                               
  WIFI_CON_M2M,                                     
  WIFI_DISCON_M2M,                                  
  WIFI_OPEN_TESTMODE,                               
  WIFI_CLOSE_TESTMODE,                              
  WIFI_CON_APP,                                     
  WIFI_DISCON_APP,                                  
  WIFI_RSSI,                                        
  WIFI_NTP,                                         
  MODULE_INFO,                                      
  TRANSPARENT_DATA,                                 
  EVENT_Led_Auto,
  EVENT_Temperature_Auto,
  EVENT_Add_Temperature,
  EVENT_Oxygen_Auto,
  EVENT_Oxygen_Pump,
  EVENT_Water_Level_Auto,
  EVENT_Pump,
  EVENT_Feed_Auto,
  EVENT_Servo,
  EVENT_RGB_R,
  EVENT_RGB_G,
  EVENT_RGB_B,
  EVENT_Add_Oxygen_Duration,
  EVENT_Feed_Hour,
  EVENT_Feed_Minute,
  EVENT_Feed_Second,
  EVENT_Feed_Interval,
  EVENT_Feed_Count,
  EVENT_Temperature_Max,
  EVENT_Temperature_Min,
  EVENT_Add_Oxygen_Interval,
  EVENT_Default_Water_Max,
  EVENT_Default_Water_Min,
  EVENT_TYPE_MAX                                    
} EVENT_TYPE_T;

 
typedef enum
{
    ACTION_CONTROL_DEVICE       = 0x01,             
    ACTION_READ_DEV_STATUS      = 0x02,             
    ACTION_READ_DEV_STATUS_ACK  = 0x03,             
    ACTION_REPORT_DEV_STATUS    = 0x04,             
    ACTION_W2D_TRANSPARENT_DATA = 0x05,             
    ACTION_D2W_TRANSPARENT_DATA = 0x06,             
} actionType_t;   

 
typedef struct
{
    uint16_t year;
    uint8_t month;
    uint8_t day;
    uint8_t hour;
    uint8_t minute;
    uint8_t second;
    uint32_t ntp;
}protocolTime_t;
           

 
typedef enum
{
  WIFI_RESET_MODE = 0x00,                           
  WIFI_SOFTAP_MODE,                                 
  WIFI_AIRLINK_MODE,                                
  WIFI_PRODUCTION_TEST,                             
  WIFI_NINABLE_MODE,                                
  WIFI_REBOOT_MODE,                                 
}WIFI_MODE_TYPE_T;                                

 
typedef enum
{
  STATELESS_TYPE = 0x00,                            
  ACTION_CONTROL_TYPE,                              
  WIFI_STATUS_TYPE,                                 
  ACTION_W2D_TRANSPARENT_TYPE,                      
  GET_NTP_TYPE,                                     
  GET_MODULEINFO_TYPE,                              
  PROTOCOL_EVENT_TYPE_MAX                           
} PROTOCOL_EVENT_TYPE_T;
     
                                    
typedef enum                               
{                                                   
    CMD_GET_DEVICE_INTO             = 0x01,         
    ACK_GET_DEVICE_INFO             = 0x02,         
            
    CMD_ISSUED_P0                   = 0x03,         
    ACK_ISSUED_P0                   = 0x04,         
            
    CMD_REPORT_P0                   = 0x05,         
    ACK_REPORT_P0                   = 0x06,         
            
    CMD_HEARTBEAT                   = 0x07,         
    ACK_HEARTBEAT                   = 0x08,         
            
    CMD_WIFI_CONFIG                 = 0x09,         
    ACK_WIFI_CONFIG                 = 0x0A,         
            
    CMD_SET_DEFAULT                 = 0x0B,         
    ACK_SET_DEFAULT                 = 0x0C,         
            
    CMD_WIFISTATUS                  = 0x0D,         
    ACK_WIFISTATUS                  = 0x0E,         
        
    CMD_MCU_REBOOT                  = 0x0F,         
    ACK_MCU_REBOOT                  = 0x10,         
            
    CMD_ERROR_PACKAGE               = 0x11,         
    ACK_ERROR_PACKAGE               = 0x12,         

    CMD_PRODUCTION_TEST             = 0x13,         
    ACK_PRODUCTION_TEST             = 0x14,         

    CMD_NINABLE_MODE                = 0x15,         
    ACK_NINABLE_MODE                = 0x16,         

    CMD_GET_NTP                     = 0x17,         
    ACK_GET_NTP                     = 0x18,         


    CMD_ASK_BIGDATA                 = 0x19,         
    ACK_ASK_BIGDATA                 = 0x1A,         

    CMD_BIGDATA_READY               = 0x1B,         
    ACK_BIGDATA_READY               = 0x1C,         

    CMD_BIGDATA_SEND                = 0x1D,         
    ACK_BIGDATA_SEND                = 0x1E,         

    CMD_S_STOP_BIGDATA_SEND         = 0x1F,         
    ACK_S_STOP_BIGDATA_SEND         = 0x20,         

    CMD_D_STOP_BIGDATA_SEND         = 0x27,         
    ACK_D_STOP_BIGDATA_SEND         = 0x28,         

    CMD_ASK_MODULE_INFO             = 0x21,         
    ACK_ASK_MODULE_INFO             = 0x22,         

    CMD_ASK_AFFAIR_HANDLE           = 0x23,         
    ACK_ASK_AFFAIR_HANDLE           = 0x24,         

    CMD_AFFAIR_RESULT               = 0x25,         
    ACK_AFFAIR_RESULT               = 0x26,         

    CMD_REBOOT_MODULE               = 0x29,         
    ACK_REBOOT_MODULE               = 0x2A,         

    CMD_CONNECT_M2M                 = 0x2D,         
    ACK_CONNECT_M2M                 = 0x2E,         

    CMD_CONNECT_M2M_BACK            = 0x2F,         
    ACK_CONNECT_M2M_BACK            = 0x30,         

    CMD_UPLOAD_DATA                 = 0x31,         
    ACK_UPLOAD_DATA                 = 0x32,         

    CMD_UPLOAD_DATA_BACK            = 0x33,         
    ACK_UPLOAD_DATA_BACK            = 0x34,         

    CMD_DISCONNECT_M2M              = 0x35,         
    ACK_DISCONNECT_M2M              = 0x36,         

    CMD_DISCONNECT_M2M_BACK         = 0x37,         
    ACK_DISCONNECT_M2M_BACK         = 0x38,         

    CMD_RESET_SIMULATOR             = 0x39,         
    ACK_RESET_SIMULATOR             = 0x3A,         

    CMD_RESET_SIMULATOR_BACK        = 0x3B,         
    ACK_RESET_SIMULATOR_BACK        = 0x3C,         
} PROTOCOL_CMDTYPE;                                                                                  
                        
   
typedef enum
{
    ERROR_ACK_SUM = 0x01,                           
    ERROR_CMD     = 0x02,                           
    ERROR_OTHER   = 0x03,                           
} errorPacketsType_t;

typedef enum
{
    EXE_SUCESS                      = 0x00,
    EXE_FAILE                       = 0x01,
} execute_result;  

#pragma pack(1)

 
typedef struct {
  _Bool valueLed_Auto;
  _Bool valueTemperature_Auto;
  _Bool valueAdd_Temperature;
  _Bool valueOxygen_Auto;
  _Bool valueOxygen_Pump;
  _Bool valueWater_Level_Auto;
  _Bool valuePump;
  _Bool valueFeed_Auto;
  uint32_t valueServo;
  uint32_t valueRGB_R;
  uint32_t valueRGB_G;
  uint32_t valueRGB_B;
  uint32_t valueAdd_Oxygen_Duration;
  uint32_t valueFeed_Hour;
  uint32_t valueFeed_Minute;
  uint32_t valueFeed_Second;
  uint32_t valueFeed_Interval;
  uint32_t valueFeed_Count;
  float valueTemperature_Max;
  float valueTemperature_Min;
  uint32_t valueAdd_Oxygen_Interval;
  float valueDefault_Water_Max;
  float valueDefault_Water_Min;
  float valueDS18B20;
  float valueWater_level;
  _Bool valueTemperature_Alarm;
  _Bool valueWater_Level_Alarm;
  _Bool valueDS18B20_Malfunction;
  _Bool valueWater_Level_Malfunction;
  _Bool valueFeed_Malfunction;
} dataPoint_t;


  
typedef struct {
  uint8_t flagLed_Auto:1;
  uint8_t flagTemperature_Auto:1;
  uint8_t flagAdd_Temperature:1;
  uint8_t flagOxygen_Auto:1;
  uint8_t flagOxygen_Pump:1;
  uint8_t flagWater_Level_Auto:1;
  uint8_t flagPump:1;
  uint8_t flagFeed_Auto:1;
  uint8_t flagServo:1;
  uint8_t flagRGB_R:1;
  uint8_t flagRGB_G:1;
  uint8_t flagRGB_B:1;
  uint8_t flagAdd_Oxygen_Duration:1;
  uint8_t flagFeed_Hour:1;
  uint8_t flagFeed_Minute:1;
  uint8_t flagFeed_Second:1;
  uint8_t flagFeed_Interval:1;
  uint8_t flagFeed_Count:1;
  uint8_t flagTemperature_Max:1;
  uint8_t flagTemperature_Min:1;
  uint8_t flagAdd_Oxygen_Interval:1;
  uint8_t flagDefault_Water_Max:1;
  uint8_t flagDefault_Water_Min:1;
} attrFlags_t;


 

typedef struct {
  uint8_t wBitBuf[2];
  uint8_t valueRGB_R;
  uint8_t valueRGB_G;
  uint8_t valueRGB_B;
  uint8_t valueAdd_Oxygen_Duration;
  uint8_t valueFeed_Hour;
  uint8_t valueFeed_Minute;
  uint8_t valueFeed_Second;
  uint8_t valueFeed_Interval;
  uint8_t valueFeed_Count;
  uint16_t valueTemperature_Max;
  uint16_t valueTemperature_Min;
  uint16_t valueAdd_Oxygen_Interval;
  uint16_t valueDefault_Water_Max;
  uint16_t valueDefault_Water_Min;
} attrVals_t;

  
typedef struct {
    attrFlags_t attrFlags;
    attrVals_t  attrVals;
}gizwitsIssued_t;

  

typedef struct {
  uint8_t wBitBuf[2];
  uint8_t valueRGB_R;
  uint8_t valueRGB_G;
  uint8_t valueRGB_B;
  uint8_t valueAdd_Oxygen_Duration;
  uint8_t valueFeed_Hour;
  uint8_t valueFeed_Minute;
  uint8_t valueFeed_Second;
  uint8_t valueFeed_Interval;
  uint8_t valueFeed_Count;
  uint16_t valueTemperature_Max;
  uint16_t valueTemperature_Min;
  uint16_t valueAdd_Oxygen_Interval;
  uint16_t valueDefault_Water_Max;
  uint16_t valueDefault_Water_Min;
  uint16_t valueDS18B20;
  uint16_t valueWater_level;
  uint8_t alertBitBuf[1];
  uint8_t faultBitBuf[1];
} devStatus_t; 


                
                                
typedef struct {                           
    uint8_t num;                                    
    uint8_t event[EVENT_TYPE_MAX];                  
}eventInfo_t;


                            
                        
typedef struct {                           
    uint8_t rssi;                                   
}moduleStatusInfo_t;                                

 
typedef struct{
    uint8_t                 head[2];                
    uint16_t                len;                    
    uint8_t                 cmd;                    
    uint8_t                 sn;                     
    uint8_t                 flags[2];               
} protocolHead_t;

 
typedef struct{
    protocolHead_t          head;                   
    uint8_t                 protocolVer[8];         
    uint8_t                 p0Ver[8];               
    uint8_t                 hardVer[8];             
    uint8_t                 softVer[8];             
    uint8_t                 productKey[32];         
    uint16_t                ninableTime;            
    uint8_t                 devAttr[8];             
    uint8_t                 productSecret[32];      
    uint8_t                 sum;                    
} protocolDeviceInfo_t;

 
typedef struct{
    protocolHead_t          head;                   
    uint8_t                 sum;                    
} protocolCommon_t;

 
typedef struct{
    protocolHead_t          head;                   
    uint8_t                 cfgMode;                
    uint8_t                 sum;                    
} protocolCfgMode_t;

 
typedef struct{
    protocolHead_t          head;                   
    uint8_t                 time[7];                
    uint8_t                 ntp_time[4];            
    uint8_t                 sum;                    
} protocolUTT_t;

 
typedef union{
    uint16_t                value;
    struct{
        uint16_t            softap:1;     
        uint16_t            station:1;    
        uint16_t            onboarding:1; 
        uint16_t            binding:1;    
        uint16_t            con_route:1;  
        uint16_t            con_m2m:1;    
        uint16_t            reserve1:2;   
        uint16_t            rssi:3;       
        uint16_t            app:1;        
        uint16_t            test:1;       
        uint16_t            reserve2:3;   
    }types; 
    
} wifiStatus_t;

 
typedef struct{
    protocolHead_t          head;                   
    wifiStatus_t            ststus;                 
    uint8_t                 sum;                    
} protocolWifiStatus_t;

 
typedef struct{
    protocolHead_t          head;                   
    uint8_t                 type;                   
    uint8_t                 sum;                    
} protocolGetModuleInfo_t;

typedef struct{
    uint8_t                 moduleType;             
    uint8_t                 serialVer[8];           
    uint8_t                 hardVer[8];             
    uint8_t                 softVer[8];             
    uint8_t                 mac[16];                
    uint8_t                 ip[16];                 
    uint8_t                 devAttr[8];             
} moduleInfo_t;

 
typedef struct{
    protocolHead_t          head;                   
    moduleInfo_t            wifiModuleInfo;         
    uint8_t                 sum;                    
} protocolModuleInfo_t;


 
typedef struct{
    uint16_t                    LAC_ID;             
    uint16_t                    CellID;             
    uint8_t                     RSSI;               
} gprsCellInfo_t;


 
typedef struct{
    uint8_t                 Type;
    uint8_t                 Pro_ver[8];
    uint8_t                 Hard_ver[8];
    uint8_t                 Soft_ver[8];
    uint8_t                 Device_attribute[8];
    uint8_t                 IMEI[16];
    uint8_t                 IMSI[16];
    uint8_t                 MCC[8];
    uint8_t                 MNC[8];
    uint8_t                 CellNum;
    uint8_t                 CellInfoLen;
    gprsCellInfo_t          GPRS_CellINFO[7];
}gprsInfo_t;

 
typedef struct{
    protocolHead_t          head;                   
    uint8_t                 error;                  
    uint8_t                 sum;                    
} protocolErrorType_t;


 
typedef struct{
    protocolHead_t          head;                   
    uint8_t                 action;                 
} protocolP0Head_t;


  
typedef struct {
                     
    devStatus_t devStatus;                          
}gizwitsReport_t;

 
typedef struct {
    uint8_t                 num;                    
    uint8_t                 flag;                   
    uint8_t                 buf[(sizeof(devStatus_t)+sizeof(attrFlags_t)+20)];   
    uint16_t                dataLen;                
    uint32_t                sendTime;               
} protocolWaitAck_t;
                                                                                
 
typedef struct{
    protocolHead_t          head;                   
    uint8_t                 action;                 
    gizwitsReport_t         reportData;             
    uint8_t                 sum;                    
} protocolReport_t;


 
typedef struct{
    uint8_t issuedFlag;                             
    uint8_t protocolBuf[(sizeof(devStatus_t)+sizeof(attrFlags_t)+20)];           
    uint8_t transparentBuff[(sizeof(devStatus_t)+sizeof(attrFlags_t)+20)];       
    uint32_t transparentLen;                        
    
    uint32_t sn;                                    
    uint32_t timerMsCount;                          
    protocolWaitAck_t waitAck;                      
    
    eventInfo_t issuedProcessEvent;                 
    eventInfo_t wifiStatusEvent;                    
    eventInfo_t NTPEvent;                           
    eventInfo_t moduleInfoEvent;                    

	gizwitsReport_t reportData;                     
    dataPoint_t gizCurrentDataPoint;                
    dataPoint_t gizLastDataPoint;                   
    moduleStatusInfo_t wifiStatusData;              
    protocolTime_t TimeNTP;                         



    moduleInfo_t  wifiModuleNews;                   

	
        
}gizwitsProtocol_t; 

#pragma pack()



 

extern uint32_t gizGetTimerCount(void);


void gizwitsInit(void);
int32_t gizwitsSetMode(uint8_t mode);
void gizwitsGetNTP(void);
int32_t gizwitsHandle(dataPoint_t *currentData);
int32_t gizwitsPassthroughData(uint8_t * gizdata, uint32_t len);
void gizwitsGetModuleInfo(void);
int32_t gizPutData(uint8_t *buf, uint32_t len);

 




#line 26 "..\\IOT_PROTOCOL\\gizwits_product.h"



 



 





 





 




 



 






#line 75 "..\\IOT_PROTOCOL\\gizwits_product.h"

#line 90 "..\\IOT_PROTOCOL\\gizwits_product.h"

















 
#line 115 "..\\IOT_PROTOCOL\\gizwits_product.h"
 

 

 
extern dataPoint_t currentDataPoint;
extern uint8_t aRxBuffer;
extern _Bool wifi_success_flag; 
extern uint8_t auto_flag; 
extern uint8_t allow_flag; 

void gizTimerMs(void);
void timerInit(void);
void uartInit(void);
void userInit(void);
void userHandle(void);
void mcuRestart(void);
uint32_t gizGetTimerCount(void);
int32_t uartWrite(uint8_t *buf, uint32_t len);
int8_t gizwitsEventProcess(eventInfo_t *info, uint8_t *data, uint32_t len);





#line 93 "..\\USER\\main.h"
#line 94 "..\\USER\\main.h"
#line 1 "..\\USER\\transaction.h"



#line 5 "..\\USER\\transaction.h"

typedef enum { 
	RGB_LIGHT =1,
	TEMPERARUR,
	WATER_LEVEL,
	FEED,
	NULL_EVENT 
}event_group;

typedef enum { 
	auto_disenable,
	auto_enable
}auto_bits;

typedef enum { 
	allow_disenable,
	allow_enable
}allow_bits;

typedef void (*action)(void);

typedef struct { 
	event_group event_id; 
	auto_bits auto_state; 
	allow_bits allow_state; 
	action action_trans; 
}Transaction;

typedef struct { 
	uint8_t trans_number; 
	auto_bits auto_cur_state; 
	allow_bits allow_cur_state;
	Transaction *transaction; 
}cur_Transaction;


#line 95 "..\\USER\\main.h"
#line 1 "..\\HARDWARE\\RELAY\\relay.h"
#line 4 "..\\HARDWARE\\RELAY\\relay.h"

extern void Relay_Init(void);

#line 96 "..\\USER\\main.h"

#line 1 "..\\HARDWARE\\DMA\\dma.h"

















 
 
#line 51 "..\\HARDWARE\\DMA\\dma.h"

 
#line 98 "..\\USER\\main.h"














#line 119 "..\\USER\\main.h"

 
 






typedef struct{ 
	int firstflag;
    float sidebuff[10];
    float *head;
    float *tail;
    float sum;
}sideparm;


typedef struct{ 
	u8 nexthour;
	u8 nextmin;
	u8 nextsec;
}nexttime;



 
 
void Init_All(void);
void show_time(void);
void auto_control_logic(void);
void led_transaction(void);
void temperature_transaction(void);
void oxygen_transaction(void);
void water_level_transaction(void);
void feed_transaction(void);
void judgment_transaction(void);

void get_DurationEndTime(void);
void get_IntervalEndTime(void);
void resovle_TimeOver(void);
void get_FeedEndTime(void);

float sidefilter(float newval,sideparm* side);
void FreeRtos_CPU_state_Debug(void);
uint16_t RGB888toRGB565(uint8_t red, uint8_t green, uint8_t blue);


 
#line 29 "..\\HARDWARE\\DMA\\dma.h"

 

 

 

 

 

void MX_DMA_Init(void);

 

 







 
#line 22 "..\\HARDWARE\\DMA\\dma.c"

 

 

 
 
 

 

 



 
void MX_DMA_Init(void)
{

   
  do { volatile uint32_t tmpreg = 0x00U; ((((RCC_TypeDef *) ((0x40000000UL + 0x00020000UL) + 0x3800UL))->AHB1ENR) |= ((0x1UL << (21U)))); tmpreg = ((((RCC_TypeDef *) ((0x40000000UL + 0x00020000UL) + 0x3800UL))->AHB1ENR) & ((0x1UL << (21U)))); (void)tmpreg; } while(0U);
  do { volatile uint32_t tmpreg = 0x00U; ((((RCC_TypeDef *) ((0x40000000UL + 0x00020000UL) + 0x3800UL))->AHB1ENR) |= ((0x1UL << (22U)))); tmpreg = ((((RCC_TypeDef *) ((0x40000000UL + 0x00020000UL) + 0x3800UL))->AHB1ENR) & ((0x1UL << (22U)))); (void)tmpreg; } while(0U);

   
   
  HAL_NVIC_SetPriority(DMA1_Stream1_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Stream1_IRQn);
   
  HAL_NVIC_SetPriority(DMA1_Stream3_IRQn, 6, 0);
  HAL_NVIC_EnableIRQ(DMA1_Stream3_IRQn);
   
  HAL_NVIC_SetPriority(DMA2_Stream7_IRQn, 7, 0);
  HAL_NVIC_EnableIRQ(DMA2_Stream7_IRQn);

}

 

 

 
