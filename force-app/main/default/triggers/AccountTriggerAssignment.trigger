// trigger AccountTriggerAssignment on Account (before insert,after insert, before update, after update) {

//     system.debug('--------Trigger Start--------');

//     if(Trigger.isBefore && Trigger.isInsert){
//         system.debug('Here we are in BEFORE INSERT trigger');
//         for(Account rec : Trigger.new){
//             system.debug('Account Name : '+ rec.Name);
//             system.debug('Rating : '+ rec.Rating);
//             system.debug('Description : '+ rec.Description);
//             system.debug('BillingCity : '+ rec.BillingCity);
//         }
//     }

//     if(Trigger.isAfter && Trigger.isInsert){
//         system.debug('Here we are in AFTER INSERT trigger');
//         for(Account rec : Trigger.new){
//             system.debug('Account Name : '+ rec.Name);
//             system.debug('Rating : '+ rec.Rating);
//             system.debug('Description : '+ rec.Description);
//             system.debug('BillingCity : '+ rec.BillingCity);
//         }
//     }

//     if(Trigger.isBefore && Trigger.isUpdate){
//         system.debug('Here we are in BEFORE UPDATE trigger');
//         for(Account rec : Trigger.new){
//             system.debug('Account Name : '+ rec.Name);
//             system.debug('Rating : '+ rec.Rating);
//             system.debug('Description : '+ rec.Description);
//             system.debug('BillingCity : '+ rec.BillingCity);
//         }
//     }

//     if(Trigger.isAfter && Trigger.isUpdate){
//         system.debug('Here we are in AFTER UPDATE trigger');
//         for(Account rec : Trigger.new){
//             system.debug('Account Name : '+ rec.Name);
//             system.debug('Rating : '+ rec.Rating);
//             system.debug('Description : '+ rec.Description);
//             system.debug('BillingCity : '+ rec.BillingCity);
//         }
//     }

//     system.debug('--------Trigger End--------');

// }



trigger AccountTriggerAssignment on Account (before insert, before update) {
    Map<Id,Account> trgOldMap = Trigger.oldMap;
    if(Trigger.isBefore && Trigger.isInsert){
        for(Account each : Trigger.new){
            if(each.Active__c =='Yes'){
                each.Description= 'Account is Active';
            }else if(each.Active__c == 'No'){
                each.Description ='Account is Inactive';
            }
            
        }
    }

    if(Trigger.isBefore && Trigger.isUpdate){
        for(Account each : Trigger.new){
            String newActive = each.Active__c;
            Account oldAccount = trgOldMap.get(each.Id);
            string oldActive = oldAccount.Active__c;
            if(newActive != oldActive && newActive == 'Yes'){
                each.Description = 'Account is Active';
            }else if(newActive != oldActive && newActive == 'No'){
                each.Description = 'Account is Inactive';
            }
            
        }
    }

}
