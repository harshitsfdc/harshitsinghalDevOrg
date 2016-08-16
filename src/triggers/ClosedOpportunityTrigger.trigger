trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {
    List<Opportunity> oppList=Trigger.new;
    List<Task> taskList=new List<Task>();
    for(Opportunity opp:oppList){
        if(opp.StageName=='Closed Won')
        {
            Task newTask = new Task(WhatId=opp.Id,Subject='Follow Up Test Task');
            taskList.add(newTask);
        }
    }
    if(taskList.size()>0)
        insert taskList;
}