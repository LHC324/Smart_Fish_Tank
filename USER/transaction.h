#ifndef _TRANSACTION_H_
#define _TRANSACTION_H_

#include "sys.h"

typedef enum { //事件组
	RGB_LIGHT =1,
	TEMPERARUR,
	WATER_LEVEL,
	FEED,
	NULL_EVENT //空事件，表示机智云处理其他操作，或者处于其他状态
}event_group;

typedef enum { //自动位状态种类
	auto_disenable,
	auto_enable
}auto_bits;

typedef enum { //允许位状态种类
	allow_disenable,
	allow_enable
}allow_bits;

typedef void (*action)(void);

typedef struct { //单个事件
	event_group event_id; //某一事件
	auto_bits auto_state; //自动控制位的状态
	allow_bits allow_state; //允许控制位的状态
	action action_trans; //对应的处理过程
}Transaction;

typedef struct { //再次封装，用于主动记录当前事件记录，便于轮询处理
	uint8_t trans_number; //事物个数
	auto_bits auto_cur_state; //当前状态
	allow_bits allow_cur_state;
	Transaction *transaction; //指向单个事件结构体
}cur_Transaction;


#endif
