#line 1 "..\\HARDWARE\\DS18B20\\ds18b20.c"
#line 1 "..\\HARDWARE\\DS18B20\\ds18b20.h"
#line 1 "..\\SYSTEM\\sys\\sys.h"
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


















  

 







 
#line 1 "..\\USER\\stm32f4xx_hal_conf.h"

































  

 







 
 

 


 



 





 
 
#line 68 "..\\USER\\stm32f4xx_hal_conf.h"
 





 




 
#line 91 "..\\USER\\stm32f4xx_hal_conf.h"


 




 












 






 







 












 





 

 


      
#line 158 "..\\USER\\stm32f4xx_hal_conf.h"

#line 197 "..\\USER\\stm32f4xx_hal_conf.h"

 



 
 

 




 



 


 

#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_rcc.h"

















 

 







 
#line 1 "..\\HALLIB\\STM32F4xx_HAL_Driver\\Inc\\stm32f4xx_hal_def.h"


















 

 







 
#line 1 "..\\USER\\stm32f4xx.h"











































 



 



 
    
#line 258 "..\\USER\\stm32f4xx.h"


 



 
  



 
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







 



 
 
 


 


 
 


 


 
 
 


 



  
  






 
#line 251 "..\\USER\\stm32f4xx.h"









 



 
  



 
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


#line 4 "..\\HARDWARE\\DS18B20\\ds18b20.h"
















 



   	
u8 DS18B20_Init(void);			
short DS18B20_Get_Temperature(void);	
void DS18B20_Start(void);		
void DS18B20_Write_Byte(u8 dat);
u8 DS18B20_Read_Byte(void);		
u8 DS18B20_Read_Bit(void);		
u8 DS18B20_Check(void);			
void DS18B20_Reset(void);		
















#line 2 "..\\HARDWARE\\DS18B20\\ds18b20.c"
#line 1 "..\\SYSTEM\\delay\\delay.h"
#line 4 "..\\SYSTEM\\delay\\delay.h"
















void delay_init(u8 SYSCLK);
void delay_ms(u32 nms);
void delay_us(u32 nus);


#line 3 "..\\HARDWARE\\DS18B20\\ds18b20.c"












  


void DS18B20_Reset(void){ 	                
	{((GPIO_TypeDef *) ((0x40000000UL + 0x00020000UL) + 0x0400UL))->MODER&=~(3<<(9*2));((GPIO_TypeDef *) ((0x40000000UL + 0x00020000UL) + 0x0400UL))->MODER|=1<<9*2;}; 
	*((volatile unsigned long *)((((((0x40000000UL + 0x00020000UL) + 0x0400UL)+20) & 0xF0000000)+0x2000000+(((((0x40000000UL + 0x00020000UL) + 0x0400UL)+20) &0xFFFFF)<<5)+(9<<2))))=0; 
	delay_us(750);    
	*((volatile unsigned long *)((((((0x40000000UL + 0x00020000UL) + 0x0400UL)+20) & 0xF0000000)+0x2000000+(((((0x40000000UL + 0x00020000UL) + 0x0400UL)+20) &0xFFFFF)<<5)+(9<<2))))=1; 
	delay_us(15);     
}





u8 DS18B20_Check(void){ 	   
	u8 retry=0;
	{((GPIO_TypeDef *) ((0x40000000UL + 0x00020000UL) + 0x0400UL))->MODER&=~(3<<(9*2));((GPIO_TypeDef *) ((0x40000000UL + 0x00020000UL) + 0x0400UL))->MODER|=0<<9*2;};
    while (*((volatile unsigned long *)((((((0x40000000UL + 0x00020000UL) + 0x0400UL)+16) & 0xF0000000)+0x2000000+(((((0x40000000UL + 0x00020000UL) + 0x0400UL)+16) &0xFFFFF)<<5)+(9<<2))))&&retry<200)
	{
		retry++;
		delay_us(1);
	};	 
	if(retry>=200)return 1;
	else retry=0;
    while (! *((volatile unsigned long *)((((((0x40000000UL + 0x00020000UL) + 0x0400UL)+16) & 0xF0000000)+0x2000000+(((((0x40000000UL + 0x00020000UL) + 0x0400UL)+16) &0xFFFFF)<<5)+(9<<2))))&&retry<240)
	{
		retry++;
		delay_us(1);
	};
	if(retry>=240)return 1;	    
	return 0;
}




u8 DS18B20_Read_Bit(void){ 			 
	u8 data;
	{((GPIO_TypeDef *) ((0x40000000UL + 0x00020000UL) + 0x0400UL))->MODER&=~(3<<(9*2));((GPIO_TypeDef *) ((0x40000000UL + 0x00020000UL) + 0x0400UL))->MODER|=1<<9*2;};
	*((volatile unsigned long *)((((((0x40000000UL + 0x00020000UL) + 0x0400UL)+20) & 0xF0000000)+0x2000000+(((((0x40000000UL + 0x00020000UL) + 0x0400UL)+20) &0xFFFFF)<<5)+(9<<2))))=0; 
	delay_us(2);
	*((volatile unsigned long *)((((((0x40000000UL + 0x00020000UL) + 0x0400UL)+20) & 0xF0000000)+0x2000000+(((((0x40000000UL + 0x00020000UL) + 0x0400UL)+20) &0xFFFFF)<<5)+(9<<2))))=1; 
	{((GPIO_TypeDef *) ((0x40000000UL + 0x00020000UL) + 0x0400UL))->MODER&=~(3<<(9*2));((GPIO_TypeDef *) ((0x40000000UL + 0x00020000UL) + 0x0400UL))->MODER|=0<<9*2;};
	delay_us(12);
	if(*((volatile unsigned long *)((((((0x40000000UL + 0x00020000UL) + 0x0400UL)+16) & 0xF0000000)+0x2000000+(((((0x40000000UL + 0x00020000UL) + 0x0400UL)+16) &0xFFFFF)<<5)+(9<<2)))))data=1;
	else data=0;	 
	delay_us(50);           
	return data;
}




u8 DS18B20_Read_Byte(void){    
    u8 i,j,dat;
    dat=0;
	for (i=1;i<=8;i++){
        j=DS18B20_Read_Bit();
        dat=(j<<7)|(dat>>1);
    }						    
    return dat;
}




void DS18B20_Write_Byte(u8 dat){               
    u8 j;
    u8 testb;
	{((GPIO_TypeDef *) ((0x40000000UL + 0x00020000UL) + 0x0400UL))->MODER&=~(3<<(9*2));((GPIO_TypeDef *) ((0x40000000UL + 0x00020000UL) + 0x0400UL))->MODER|=1<<9*2;};
    for (j=1;j<=8;j++){ 
        testb=dat&0x01;
        dat=dat>>1;
        if(testb){ 
            *((volatile unsigned long *)((((((0x40000000UL + 0x00020000UL) + 0x0400UL)+20) & 0xF0000000)+0x2000000+(((((0x40000000UL + 0x00020000UL) + 0x0400UL)+20) &0xFFFFF)<<5)+(9<<2))))=0;
            delay_us(2);                            
            *((volatile unsigned long *)((((((0x40000000UL + 0x00020000UL) + 0x0400UL)+20) & 0xF0000000)+0x2000000+(((((0x40000000UL + 0x00020000UL) + 0x0400UL)+20) &0xFFFFF)<<5)+(9<<2))))=1;
            delay_us(60);             
        }
        else{ 
            *((volatile unsigned long *)((((((0x40000000UL + 0x00020000UL) + 0x0400UL)+20) & 0xF0000000)+0x2000000+(((((0x40000000UL + 0x00020000UL) + 0x0400UL)+20) &0xFFFFF)<<5)+(9<<2))))=0;
            delay_us(60);             
            *((volatile unsigned long *)((((((0x40000000UL + 0x00020000UL) + 0x0400UL)+20) & 0xF0000000)+0x2000000+(((((0x40000000UL + 0x00020000UL) + 0x0400UL)+20) &0xFFFFF)<<5)+(9<<2))))=1;
            delay_us(2);                          
       }
   }
}



void DS18B20_Start(void)
{   						               
    DS18B20_Reset();	   
	DS18B20_Check();	 
    DS18B20_Write_Byte(0xcc);
    DS18B20_Write_Byte(0x44);
} 





u8 DS18B20_Init(void){

	GPIO_InitTypeDef  GPIO_Initure;
	do { volatile uint32_t tmpreg = 0x00U; ((((RCC_TypeDef *) ((0x40000000UL + 0x00020000UL) + 0x3800UL))->AHB1ENR) |= ((0x1UL << (1U)))); tmpreg = ((((RCC_TypeDef *) ((0x40000000UL + 0x00020000UL) + 0x3800UL))->AHB1ENR) & ((0x1UL << (1U)))); (void)tmpreg; } while(0U);
	
	 
	GPIO_Initure.Pin=((uint16_t)0x0200);
	GPIO_Initure.Mode=0x00000001U;
	GPIO_Initure.Pull=0x00000001U;
	GPIO_Initure.Speed=0x00000001U;
	HAL_GPIO_Init(((GPIO_TypeDef *) ((0x40000000UL + 0x00020000UL) + 0x0400UL)),&GPIO_Initure);
 
 	DS18B20_Reset();
	return DS18B20_Check();
}





short DS18B20_Get_Temperature(void){

    u8 temp;
    u8 TL,TH;
	short tem;
	
    DS18B20_Start ();                    
    DS18B20_Reset();
    DS18B20_Check();	 
    DS18B20_Write_Byte(0xcc);
    DS18B20_Write_Byte(0xbe);
    TL=DS18B20_Read_Byte(); 
    TH=DS18B20_Read_Byte(); 
    if(TH>7){
        TH=~TH;
        TL=~TL; 
        temp=0;
    }else temp=1;
    tem=TH; 
    tem<<=8;    
    tem+=TL;
    tem=(double)tem*0.625;
	if(temp)return tem; 
	else return -tem;    
}
















