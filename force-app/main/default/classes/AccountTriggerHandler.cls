public  class AccountTriggerHandler {
  public static void updateDescription(List<account> accTriggerNew, List<account> accTriggerOld, Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){

    for (Account eachAccount : accTriggerNew) {
        boolean updateDesc = false;
        if(trigger.isInsert && eachAccount.active__c == 'Yes'){
            //update descrption field
            //how to update description?
                //set the value
            // eachAccount.Description = 'Account is active now. Enjoy buddy!';
            updateDesc = true;
           
        }

        if(trigger.isupdate){
            // check if active field is changed from No or --None-- to Yes
            // how to check if active field is changed?
            // old and new value is not same


           // new active field
           string newActive = eachAccount.Active__c;
            // old active field
           Account oldAccount = accTriggerOldMap.get(eachAccount.Id);
           string oldActive = oldAccount.Active__c;
           if(newActive != oldActive && newActive == 'Yes'){
            // eachAccount.Description = 'Account is active now. Enjoy, enjoy!!';
            updateDesc = true;
           }
        }

        if(updateDesc){
          eachAccount.Description = 'Account is active now. Enjoy enjoy enjoy!!!!';
        }
    }

  }







  public static void updateVIPforContacts(List<account> accTriggerNew, List<account> accTriggerOld, Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){
    // set of account ids where VIP is changed
    set<id> accIds = new set<id>();
    for(account eachAccount : accTriggerNew){
      // how to check if VIP is changed?
      // old vip != new vip
      if (eachAccount.VIP__c != accTriggerOldMap.get(eachAccount.Id).VIP__c){
        accIds.add(eachAccount.id);
      }

    // run soql query and update and everything ONLY IF we have at least one acc id.
    } if(!accIds.isEmpty()){
      // get contacts for all accounts where vip is changed.
    // how to do that? We will use SOQL...
    list<contact> listContacts = [select id, vip__c, accountid from contact where accountid in : accIds];

    for(contact eachContact : listContacts){
      // update VIP field of eachContact same as its account's VIP field.
      // first we get here account's VIP filed value
      Account newAcc = accTriggerNewMap.get(eachContact.accountId);
      boolean accVIP = newAcc.vip__c;

      eachContact.vip__c = accVIP;
    }
    if(!listContacts.isEmpty()){
      update listContacts;
    }

    }
     
  }


// this was home assignment I willput this in other class later on...
  // public static void updateBillingCityContacts(List<account> accTriggerNew, List<account> accTriggerOld, Map<id, account> accTriggerNewMap, Map<id, account> accTriggerOldMap){
  //   // set of account ids where BillingCity is changed
  //   set<id> accId = new set<id>();
  //   for(account eachAccount : accTriggerNew){
  //     if (eachAccount.BillingCity != accTriggerOldMap.get(eachAccount.Id).BillingCity){
  //       accId.add(eachAccount.id);
  //     }

  //   }
  //   // get contacts for all accounts where BillingCity is changed.
  //   list<contact> listOfContacts = [SELECT id, MailingCity, accountid FROM contact WHERE accountid IN : accId];

  //   for(contact eachCnt : listOfContacts){
  //     // update MailingCity field of eachCnt same as its account's BillingCity field.
  //     eachCnt.MailingCity = accTriggerNewMap.get(eachCnt.accountId).BillingCity;
  //   }
  //   if(!listOfContacts.isEmpty()){
  //     update listOfContacts;
  //   }

  // }


}