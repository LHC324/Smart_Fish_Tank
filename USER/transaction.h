#ifndef _TRANSACTION_H_
#define _TRANSACTION_H_

#include "sys.h"

typedef enum { //�¼���
	RGB_LIGHT =1,
	TEMPERARUR,
	WATER_LEVEL,
	FEED,
	NULL_EVENT //���¼�����ʾ�����ƴ����������������ߴ�������״̬
}event_group;

typedef enum { //�Զ�λ״̬����
	auto_disenable,
	auto_enable
}auto_bits;

typedef enum { //����λ״̬����
	allow_disenable,
	allow_enable
}allow_bits;

typedef void (*action)(void);

typedef struct { //�����¼�
	event_group event_id; //ĳһ�¼�
	auto_bits auto_state; //�Զ�����λ��״̬
	allow_bits allow_state; //�������λ��״̬
	action action_trans; //��Ӧ�Ĵ������
}Transaction;

typedef struct { //�ٴη�װ������������¼��ǰ�¼���¼��������ѯ����
	uint8_t trans_number; //�������
	auto_bits auto_cur_state; //��ǰ״̬
	allow_bits allow_cur_state;
	Transaction *transaction; //ָ�򵥸��¼��ṹ��
}cur_Transaction;


#endif
