#include "transaction.h"

/*StateTransform *findTranss(StateMachine* pSM, const EventID evtid){
//ͨ������ǰ���úõ�����״̬stateTran[]�����е�ǰ״̬���¼�����ѯ�Ƚϣ��ҵ���ǰ�¼���Ӧ��״̬���¼��ţ��Ӷ�ȷ��������� 
  for (int i = 0; i < pSM->transNum; i++) { 
    if ((pSM->transform[i].curState == pSM->state) && (pSM->transform[i].eventId == evtid)) {
    	//cout<<&pSM->transform[i];
      return &pSM->transform[i];//״̬��Ӧ�������¼�����ͬ���򷵻ص�ǰ�¼����ַ 
    }
  }
  return NULL;
}

void runStateMachine(StateMachine* pSM, EventID evtid) {
  StateTransform* pTrans;
  
  pTrans = findTranss(pSM, evtid);
  if (pTrans == NULL)//��ǰ�����¼���״̬���¼���������״̬�������� 
  {
   cout<<"(��ǰ״̬)CurState="<<pSM->state<<" ��Ӧ���¼�:event"<<evtid<<"������Ч������Χ�ڣ�"<<endl;
   //printf( "CurState= %s Do not process enent: %s\r\n", pSM->state,evt);
    return;
  }
  pSM->state = pTrans->nextState; //��Ϊ��һ��״̬ 
  //Event_Action act =pTrans->action;//ԭ��д��
  
  if (pTrans->action == NULL) { //һ��״̬����һ��״̬�����ڲ������� 
  	cout<<"(״̬�л�Ϊ)change state to "<<pSM->state<<" ��Ӧ���¼�:event"<<evtid<<"������ִ�ж�����"<<endl;
    //printf( "change state to %s. No action\r\n",pSM->state);
    return;
  }
   pTrans->action(&evtid);//ִ����Ӧ����[����ص�����] 
  //act(&evtid); //ԭ��д�� 
}


int event_handle(){ //���Ʊ�����[stateMachine.state] 
  StateMachine stateMachine;
  stateMachine.state = state_1;//Ĭ��״̬Ϊstate1 
  
  StateTransform stateTran[] = {
    {state_1,event_3,state_2,action1}, //�¼�3��״̬1����״̬2��ִ�ж���action1 
    {state_1,event_4,state_2,NULL}, 
    {state_2,event_1,state_3,action3},  
    {state_2,event_4,state_2,action4},  
    {state_3,event_2,state_1,action5},  
    {state_3,event_3,state_2,action6},  
    {state_3,event_5,state_3,action7}    
  };
  
  stateMachine.transNum = sizeof(stateTran)/sizeof(StateTransform);//7���л�״̬ 
  
  stateMachine.transform = stateTran; //ָ���һ��״̬ 

//ģ��һ���л��������� [��ֲʹ�ý�����Ҫ�ṩstateMachine.state��EventID]
  EventID inputEvent[15] ={
    event_1, event_2, event_3, event_4, event_5,
    event_1, event_2, event_3, event_4, event_5,
    event_1, event_2, event_3, event_4, event_5 
	};

  for(int i = 0; i < 15; i++) {
    runStateMachine(&stateMachine, inputEvent[i]);
  }
  return 0;
}*/




