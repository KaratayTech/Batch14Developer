public class ContactTriggerHandler {
    public static void contactUpdateValidation1(list<contact> conTriggerNew, list<contact> conTriggerOld, Map<id, contact> conTriggerNewMap, map<id, contact> conTriggerOldMap){
        for(contact eachContact : conTriggerNew){
            // get oldContact using oldMap
            contact oldContact = conTriggerOldMap.get(eachContact.id);
            if(oldContact.leadsource =='Partner Referral'){
                // addError to validate (or throw error)
                eachContact.addError('Cannot update Partner Referral contact.');
            }
        }
    }

    // there was no cutom label error message before when we created this validation method.
    // we used to write this manually, but we wanted to this dinamic.
    // so, in this example we added, custom label message to adderror part. 3/7/2023 class.
    public static void contactUpdateValidation2(list<contact> conTriggerNew, list<contact> conTriggerOld, Map<id, contact> conTriggerNewMap, map<id, contact> conTriggerOldMap){
        string errorMessage = system.label.ContactValidation2;
        for(contact eachContact : conTriggerNew){
            if(eachContact.LeadSource != conTriggerOldMap.get(eachContact.Id).LeadSource){
                // throw error on LEADSOURCE field
                eachContact.LeadSource.AddError(errorMessage);
    
            }
        }

    }

    public static void rollUpSummaryUpdate(list<contact> conTriggerNew, list<contact> conTriggerOld, Map<id, contact> conTriggerNewMap, map<id, contact> conTriggerOldMap){

        // Contact created with related Account --> INCREASE count of 'Number of Contacts' for that new account.
        // Contact update, account field changed --> INCREASE count for NEW ACCOUNT
        //                                       --> DECREASE count for OLD ACCOUNT
        // Contact Deleted                       --> DECREASE count for OLD ACCOUNT
        // Contact UnDeleted                     --> INCREASE Count for NEW ACCOUNT
        set<id> accountIds = new set<id>();

        if(Trigger.isInsert || Trigger.isUpdate || Trigger.isUndelete ){
            // for increase we use trigger NEW
            for(Contact eachCon : conTriggerNew){
                if(eachCon.AccountId != null){
                    accountIds.add(eachCon.AccountId);
                }
            }
        }
        if(Trigger.isDelete || Trigger.isUpdate){
            // OLD account for Decrease 
            for(contact eachCon : conTriggerOld){
                if(eachCon.AccountId != null){
                    accountIds.add(eachCon.AccountId);
                }
            }
        }

        if(!accountIds.isEmpty()){
            list<account> listAcc = [SELECT id, number_of_contacts__c, (SELECT id from contacts) from account where id in : accountIds ];
            for(account eachAcc : listAcc) {
                integer numOfContacts = 0;
                if(eachAcc.contacts != null){
                    numOfContacts = eachAcc.contacts.size();
                }
                // set number of contacts field on account record
                eachAcc.number_of_contacts__c = numOfContacts;
            }
            if(!listAcc.isEmpty()){
                update listAcc;
            }
        }
    }


}