/*
 * FreeRTOS Kernel V10.4.1
 * Copyright (C) 2020 Amazon.com, Inc. or its affiliates.  All Rights Reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software without restriction, including without limitation the rights to
 * use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 * the Software, and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 * FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 * COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 * IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *
 * http://www.FreeRTOS.org
 * http://aws.amazon.com/freertos
 *
 * 1 tab == 4 spaces!
 */


#ifndef FREERTOS_CONFIG_H
#define FREERTOS_CONFIG_H

/*-----------------------------------------------------------
 * Application specific definitions.
 *
 * These definitions should be adjusted for your particular hardware and
 * application requirements.
 *
 * THESE PARAMETERS ARE DESCRIBED WITHIN THE 'CONFIGURATION' SECTION OF THE
 * FreeRTOS API DOCUMENTATION AVAILABLE ON THE FreeRTOS.org WEB SITE.
 *
 * See http://www.freertos.org/a00110.html
 *----------------------------------------------------------*/

/* Ensure stdint is only used by the compiler, and not the assembler. */
#if defined (__ICCARM__) || defined(__CC_ARM) || defined(__GNUC__)
	#include <stdint.h>
	extern uint32_t SystemCoreClock;
#endif

extern uint32_t FreeRTOSRunTimeTicks; //FreeRtos����״̬����

#define configUSE_PREEMPTION			1/*����������ģʽ��0��ʱ��1��ռ��2Эͬ*/
#define configUSE_IDLE_HOOK				0/*���Ӻ�������Ҫ���������ں�������չ���û����Ը����Լ�����Ҫ�����������صĲ��Ժ���*/
#define configUSE_TICK_HOOK				0/*���õδ�ʱ���ж�����ִ�еĹ��Ӻ���*/
#define configCPU_CLOCK_HZ				( SystemCoreClock )/*cpuʱ��Ƶ��*/
#define configTICK_RATE_HZ				( ( TickType_t ) 1000 )/*ϵͳʱ�ӽ���*/
#define configMAX_PRIORITIES			( 10 )/*����RTOS�������ȼ����Ϊ10(0-9)�����ֵ��Ҫ����32*/
#define configMINIMAL_STACK_SIZE		( ( unsigned short ) 512 )/*130,��ջ��С����GUI����*/
#define configTOTAL_HEAP_SIZE			( ( size_t ) ( 85 * 1024 ) )/*OS�����ڴ��СΪ75K*/
#define configMAX_TASK_NAME_LEN			( 15 )/*�����������ַ�����*/
#define configUSE_TRACE_FACILITY		1/*ʹ�ܴ����ý���Ӷ���Ľṹ���Ա�ͺ������Դ���Э�����ӻ��͸��٣���ʹ��IAR�е�FreeRTOS���ʱҪʹ��������ã������޷���ʾ����ջ��ʹ�����*/
#define configUSE_16_BIT_TICKS			0/*ϵͳʱ�ӽ��ĵļ�����������Ticktype_t*/
#define configIDLE_SHOULD_YIELD			0/*�������������ͬ�����ȼ�����������Ϊ*/
#define configUSE_MUTEXES				1/*ʹ�ܻ�����*/
#define configQUEUE_REGISTRY_SIZE		8/*ͨ���˶��������ÿ���ע����ź�������Ϣ���и���*/
#define configCHECK_FOR_STACK_OVERFLOW	0/*��ͬ�ĳ�����ʹ�ò�ͬ��ջ���������*/
#define configUSE_RECURSIVE_MUTEXES		1/*ʹ�ܵݹ黥����*/
#define configUSE_MALLOC_FAILED_HOOK	0/*�����������ź���������Ϣ����ʱ��FreeRTOS ͨ������ pvPortMalloc()���붯̬�ڴ�*/
#define configUSE_APPLICATION_TASK_TAG	0/*Ϊ��������ǩֵ*/
#define configUSE_COUNTING_SEMAPHORES	1/*ʹ�ܼ����ź���*/

/*****************************************������****************************************/
#define configGENERATE_RUN_TIME_STATS	1/*������������״̬����ͳ��*/
#define portCONFIGURE_TIMER_FOR_RUN_TIME_STATS()  ConfigureTimerForRunTimeStats()
#define portGET_RUN_TIME_COUNTER_VALUE()	FreeRTOSRunTimeTicks/*��timer.c��ʹ��*/
#define configUSE_STATS_FORMATTING_FUNCTIONS	1
/*****************************************������****************************************/

#define configSUPPORT_DYNAMIC_ALLOCATION 1/*֧�ֶ�̬�ڴ�����[���������ʱ�����뿪]*/

/* Co-routine definitions. */
#define configUSE_CO_ROUTINES 		0 /*������Э��*/
#define configMAX_CO_ROUTINE_PRIORITIES ( 2 )

/* Software timer definitions. */
#define configUSE_TIMERS				1/*���������ʱ��*/
#define configTIMER_TASK_PRIORITY		( 2 )/*�����ʱ�����ȼ�*/
#define configTIMER_QUEUE_LENGTH		10/*���������ʱ��������еĳ���*/
#define configTIMER_TASK_STACK_DEPTH	( configMINIMAL_STACK_SIZE * 2 )/*���������ʱ�������ջ�ռ��С��λΪ4B(��)*/

/* Set the following definitions to 1 to include the API function, or zero
to exclude the API function. */
#define INCLUDE_vTaskPrioritySet		1
#define INCLUDE_uxTaskPriorityGet		1
#define INCLUDE_vTaskDelete				1
#define INCLUDE_vTaskCleanUpResources	1
#define INCLUDE_vTaskSuspend			1
#define INCLUDE_vTaskDelayUntil			1
#define INCLUDE_vTaskDelay				1

/* Cortex-M specific definitions. */
#ifdef __NVIC_PRIO_BITS
	/* __BVIC_PRIO_BITS will be specified when CMSIS is being used. */
	#define configPRIO_BITS       		__NVIC_PRIO_BITS
#else
	#define configPRIO_BITS       		4        /* 15 priority levels�˴���STM32NVIC����4ƥ��*/
#endif

/* The lowest interrupt priority that can be used in a call to a "set priority"
function. */
#define configLIBRARY_LOWEST_INTERRUPT_PRIORITY			0xf/*�������NVIC���ȼ���Ϊ15*/

/* The highest interrupt priority that can be used by any interrupt service
routine that makes calls to interrupt safe FreeRTOS API functions.  DO NOT CALL
INTERRUPT SAFE FREERTOS API FUNCTIONS FROM ANY INTERRUPT THAT HAS A HIGHER
PRIORITY THAN THIS! (higher priorities are lower numeric values. */
/*С�ڸ����������ж����ȼ�����RTOSȫ���жϹ���Χ�£�����ʵʱ�ԣ�������Ϊִ���ں˽����ж��ӳ٣����ǽ�ֹ����RTOS��API����*/
#define configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY	6/*>=�������������ȼ�������Զ༶�ж�Ƕ�ס��ɵ���FromISR��β��API����*/

/* Interrupt priorities used by the kernel port layer itself.  These are generic
to all Cortex-M ports, and do not rely on any particular library functions. */
#define configKERNEL_INTERRUPT_PRIORITY 		( configLIBRARY_LOWEST_INTERRUPT_PRIORITY << (8 - configPRIO_BITS) )/*STM32NVIC������Чλ�ڸ���λ*/
/* !!!! configMAX_SYSCALL_INTERRUPT_PRIORITY must not be set to zero !!!!
See http://www.FreeRTOS.org/RTOS-Cortex-M3-M4.html. */
#define configMAX_SYSCALL_INTERRUPT_PRIORITY 	( configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY << (8 - configPRIO_BITS) )/*��#define configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY��Ч����*/
	
/* Normal assert() semantics without relying on the provision of an assert.h
header file. */
#define configASSERT( x ) if( ( x ) == 0 ) { taskDISABLE_INTERRUPTS(); for( ;; ); }	
	
/* Definitions that map the FreeRTOS port interrupt handlers to their CMSIS
standard names. */
#define vPortSVCHandler SVC_Handler/*������ַ0xE000_ED20��ƴ��32bit��ַ;�����θ�8bit*/
#define xPortPendSVHandler PendSV_Handler/*���8bit*/
//#define xPortSysTickHandler SysTick_Handler

#endif /* FREERTOS_CONFIG_H */

