#line 1 "..\\FreeRTOS\\portable\\RVDS\\ARM_CM4F\\port.c"

























 



 

 
#line 1 "..\\FreeRTOS\\include\\FreeRTOS.h"
























 






 
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"
 






 

 
 
 





 





#line 34 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"




  typedef signed int ptrdiff_t;



  



    typedef unsigned int size_t;    
#line 57 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



   



      typedef unsigned short wchar_t;  
#line 82 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



    




   




  typedef long double max_align_t;









#line 114 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



 

#line 34 "..\\FreeRTOS\\include\\FreeRTOS.h"













 
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






 
#line 49 "..\\FreeRTOS\\include\\FreeRTOS.h"

 



 

 
#line 1 "..\\FreeRTOS\\include\\FreeRTOSConfig.h"

























 















 

 
#line 47 "..\\FreeRTOS\\include\\FreeRTOSConfig.h"
	extern uint32_t SystemCoreClock;


extern uint32_t FreeRTOSRunTimeTicks; 

#line 71 "..\\FreeRTOS\\include\\FreeRTOSConfig.h"

 




 



 



 






 
#line 100 "..\\FreeRTOS\\include\\FreeRTOSConfig.h"

 
#line 108 "..\\FreeRTOS\\include\\FreeRTOSConfig.h"


 





 
 



 


 

	

 

	

 






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
		"	mov %0, %1												\n"			"	msr basepri, %0											\n" 		"	isb														\n" 		"	dsb														\n" 		:"=r" (ulNewBASEPRI) : "i" ( ( 6 << (8 - 4) ) ) : "memory"




	);
}

 

inline __attribute__(( always_inline)) static uint32_t ulPortRaiseBASEPRI( void )
{
uint32_t ulOriginalBASEPRI, ulNewBASEPRI;

	__asm volatile
	(
		"	mrs %0, basepri											\n" 		"	mov %1, %2												\n"			"	msr basepri, %1											\n" 		"	isb														\n" 		"	dsb														\n" 		:"=r" (ulOriginalBASEPRI), "=r" (ulNewBASEPRI) : "i" ( ( 6 << (8 - 4) ) ) : "memory"





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

 



 

#line 34 "..\\FreeRTOS\\portable\\RVDS\\ARM_CM4F\\port.c"
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


 



 
#line 35 "..\\FreeRTOS\\portable\\RVDS\\ARM_CM4F\\port.c"

