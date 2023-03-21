trigger UpdateTickectForCompletedProject on Salesforce_Project__c (before insert, after insert, before update, after update) {
    if(Trigger.isAfter && Trigger.isUpdate){
        UpdateTicketHandler.newStatusUpdateBoth(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);

    }

}