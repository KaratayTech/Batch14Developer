trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update,after update) {
    
    // get trgigger switch record for salesforce project
    TriggerSwitch__mdt ts = TriggerSwitch__mdt.getInstance('salesforce_project_c');//do not forget to use the triggerswitch name , not the label. otherwise it will give you error
    if(!ts.enabled__c){
        return;
    }

    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('Call method now...');
        
        SalesforceProjectTriggerHandler.updateProjectDescription(trigger.newMap.keySet());
        system.debug('Method just called...');
        //call handler method here.
        SalesforceProjectTriggerHandler.createDefaultTicket(Trigger.new);
    }

    if(Trigger.isBefore && Trigger.isUpdate){
        system.debug('before update project trigger');
        // validate status complete method
        // SalesforceProjectTriggerHandler.validateStatusCompletion(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }

    if(Trigger.isAfter && Trigger.isUpdate){
        // call method A
        SalesforceProjectTriggerHandler.projectStatusChange(Trigger.New,Trigger.Old, Trigger.newMap, Trigger.oldMap);
    }

}
