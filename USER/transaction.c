#include "transaction.h"

/*StateTransform *findTranss(StateMachine* pSM, const EventID evtid){
//通过与提前设置好的有限状态stateTran[]中所有当前状态、事件号轮询比较，找到当前事件对应的状态、事件号，从而确定具体操作 
  for (int i = 0; i < pSM->transNum; i++) { 
    if ((pSM->transform[i].curState == pSM->state) && (pSM->transform[i].eventId == evtid)) {
    	//cout<<&pSM->transform[i];
      return &pSM->transform[i];//状态对应，并且事件号相同，则返回当前事件组地址 
    }
  }
  return NULL;
}

void runStateMachine(StateMachine* pSM, EventID evtid) {
  StateTransform* pTrans;
  
  pTrans = findTranss(pSM, evtid);
  if (pTrans == NULL)//当前产生事件的状态、事件号与有限状态机不符合 
  {
   cout<<"(当前状态)CurState="<<pSM->state<<" 对应的事件:event"<<evtid<<"不在有效工作范围内！"<<endl;
   //printf( "CurState= %s Do not process enent: %s\r\n", pSM->state,evt);
    return;
  }
  pSM->state = pTrans->nextState; //变为下一个状态 
  //Event_Action act =pTrans->action;//原来写法
  
  if (pTrans->action == NULL) { //一个状态到另一个状态不存在操作函数 
  	cout<<"(状态切换为)change state to "<<pSM->state<<" 对应的事件:event"<<evtid<<"不存在执行动作！"<<endl;
    //printf( "change state to %s. No action\r\n",pSM->state);
    return;
  }
   pTrans->action(&evtid);//执行相应动作[拉起回调函数] 
  //act(&evtid); //原来写法 
}


int event_handle(){ //控制变量法[stateMachine.state] 
  StateMachine stateMachine;
  stateMachine.state = state_1;//默认状态为state1 
  
  StateTransform stateTran[] = {
    {state_1,event_3,state_2,action1}, //事件3从状态1跳到状态2，执行动作action1 
    {state_1,event_4,state_2,NULL}, 
    {state_2,event_1,state_3,action3},  
    {state_2,event_4,state_2,action4},  
    {state_3,event_2,state_1,action5},  
    {state_3,event_3,state_2,action6},  
    {state_3,event_5,state_3,action7}    
  };
  
  stateMachine.transNum = sizeof(stateTran)/sizeof(StateTransform);//7个切换状态 
  
  stateMachine.transform = stateTran; //指向第一个状态 

//模拟一组切换条件数据 [移植使用仅仅需要提供stateMachine.state、EventID]
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




