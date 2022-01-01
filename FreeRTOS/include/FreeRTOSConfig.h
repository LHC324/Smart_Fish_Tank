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

extern uint32_t FreeRTOSRunTimeTicks; //FreeRtos运行状态心跳

#define configUSE_PREEMPTION			1/*调度器工作模式：0分时、1抢占、2协同*/
#define configUSE_IDLE_HOOK				0/*钩子函数的主要功能是用于函数的扩展，用户可以根据自己的需要往里面添加相关的测试函数*/
#define configUSE_TICK_HOOK				0/*禁用滴答定时器中断里面执行的钩子函数*/
#define configCPU_CLOCK_HZ				( SystemCoreClock )/*cpu时钟频率*/
#define configTICK_RATE_HZ				( ( TickType_t ) 1000 )/*系统时钟节拍*/
#define configMAX_PRIORITIES			( 10 )/*定义RTOS任务优先级最高为10(0-9)，最大值不要超过32*/
#define configMINIMAL_STACK_SIZE		( ( unsigned short ) 512 )/*130,堆栈过小导致GUI卡死*/
#define configTOTAL_HEAP_SIZE			( ( size_t ) ( 85 * 1024 ) )/*OS管理内存大小为75K*/
#define configMAX_TASK_NAME_LEN			( 15 )/*定义任务名字符长度*/
#define configUSE_TRACE_FACILITY		1/*使能此配置将添加额外的结构体成员和函数，以此来协助可视化和跟踪，在使用IAR中的FreeRTOS插件时要使能这个配置，否则无法显示任务栈的使用情况*/
#define configUSE_16_BIT_TICKS			0/*系统时钟节拍的计数数据类型Ticktype_t*/
#define configIDLE_SHOULD_YIELD			0/*定义与空闲任务同等优先级其他任务行为*/
#define configUSE_MUTEXES				1/*使能互斥锁*/
#define configQUEUE_REGISTRY_SIZE		8/*通过此定义来设置可以注册的信号量和消息队列个数*/
#define configCHECK_FOR_STACK_OVERFLOW	0/*不同的常量来使用不同堆栈溢出检测机制*/
#define configUSE_RECURSIVE_MUTEXES		1/*使能递归互斥锁*/
#define configUSE_MALLOC_FAILED_HOOK	0/*当创建任务，信号量或者消息队列时，FreeRTOS 通过函数 pvPortMalloc()申请动态内存*/
#define configUSE_APPLICATION_TASK_TAG	0/*为任务分配标签值*/
#define configUSE_COUNTING_SEMAPHORES	1/*使能计数信号量*/

/*****************************************调试用****************************************/
#define configGENERATE_RUN_TIME_STATS	1/*启用任务运行状态参数统计*/
#define portCONFIGURE_TIMER_FOR_RUN_TIME_STATS()  ConfigureTimerForRunTimeStats()
#define portGET_RUN_TIME_COUNTER_VALUE()	FreeRTOSRunTimeTicks/*在timer.c中使用*/
#define configUSE_STATS_FORMATTING_FUNCTIONS	1
/*****************************************调试用****************************************/

#define configSUPPORT_DYNAMIC_ALLOCATION 1/*支持动态内存申请[创建软件定时器必须开]*/

/* Co-routine definitions. */
#define configUSE_CO_ROUTINES 		0 /*不启用协程*/
#define configMAX_CO_ROUTINE_PRIORITIES ( 2 )

/* Software timer definitions. */
#define configUSE_TIMERS				1/*启用软件定时器*/
#define configTIMER_TASK_PRIORITY		( 2 )/*软件定时器优先级*/
#define configTIMER_QUEUE_LENGTH		10/*配置软件定时器命令队列的长度*/
#define configTIMER_TASK_STACK_DEPTH	( configMINIMAL_STACK_SIZE * 2 )/*配置软件定时器任务的栈空间大小单位为4B(字)*/

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
	#define configPRIO_BITS       		4        /* 15 priority levels此处与STM32NVIC分组4匹配*/
#endif

/* The lowest interrupt priority that can be used in a call to a "set priority"
function. */
#define configLIBRARY_LOWEST_INTERRUPT_PRIORITY			0xf/*设置最低NVIC优先级号为15*/

/* The highest interrupt priority that can be used by any interrupt service
routine that makes calls to interrupt safe FreeRTOS API functions.  DO NOT CALL
INTERRUPT SAFE FREERTOS API FUNCTIONS FROM ANY INTERRUPT THAT HAS A HIGHER
PRIORITY THAN THIS! (higher priorities are lower numeric values. */
/*小于该优先数的中断优先级不在RTOS全局中断管理范围下，保障实时性，不会因为执行内核降低中断延迟，但是禁止调用RTOS的API函数*/
#define configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY	6/*>=该优先数的优先级任务可以多级中断嵌套、可调用FromISR结尾的API函数*/

/* Interrupt priorities used by the kernel port layer itself.  These are generic
to all Cortex-M ports, and do not rely on any particular library functions. */
#define configKERNEL_INTERRUPT_PRIORITY 		( configLIBRARY_LOWEST_INTERRUPT_PRIORITY << (8 - configPRIO_BITS) )/*STM32NVIC分组有效位在高四位*/
/* !!!! configMAX_SYSCALL_INTERRUPT_PRIORITY must not be set to zero !!!!
See http://www.FreeRTOS.org/RTOS-Cortex-M3-M4.html. */
#define configMAX_SYSCALL_INTERRUPT_PRIORITY 	( configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY << (8 - configPRIO_BITS) )/*宏#define configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY有效配置*/
	
/* Normal assert() semantics without relying on the provision of an assert.h
header file. */
#define configASSERT( x ) if( ( x ) == 0 ) { taskDISABLE_INTERRUPTS(); for( ;; ); }	
	
/* Definitions that map the FreeRTOS port interrupt handlers to their CMSIS
standard names. */
#define vPortSVCHandler SVC_Handler/*操作地址0xE000_ED20的拼接32bit地址;操作次高8bit*/
#define xPortPendSVHandler PendSV_Handler/*最高8bit*/
//#define xPortSysTickHandler SysTick_Handler

#endif /* FREERTOS_CONFIG_H */

