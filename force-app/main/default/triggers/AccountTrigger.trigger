// trigger AccountTrigger on Account (before insert, after insert) {
    // this will print 2 of each on this exaple, because before insert part will print 2 system debugs, after insert part wil print 2 system debugs.
    // system.debug('Before insert trigger called.');
    // system.debug('After insert trigger called.');



    // lets fix this..
    /*system.debug('------trigger start---');
    system.debug('Trigger.isBefore --> '+Trigger.isBefore);
    system.debug('Trigger.isAfter --> ' +Trigger.isAfter);

    if(Trigger.isBefore){
        system.debug('Before insert trigger called.');
    }

    if(Trigger.isAfter){
        system.debug('After insert trigger called.');
    }

    system.debug('=====trigger end====='); 
    */


//    Let's do something else

// }


// trigger AccountTrigger on Account (before insert, before update){

// system.debug('------trigger start---');

// // in this example, if you create a new record on account abject it will print 2 system debugs which is for before insert. If you update that record let's say by chaning name or any field in that record, then it will print 2 system debugs which will be for before update part.But it won't print at the same time, both of them would print separately.
// system.debug('before insert trigger called.');
// system.debug('before update trigger called.');

// system.debug('=====trigger end=====');

// let's fix this one too.So we would see the difference before insert and before update

//   system.debug('------trigger start---');

// //   insert will be true when TRIGGER is running while INSERTing
//   system.debug('trigger.isInsert -->' + Trigger.isInsert);
//   if(Trigger.isInsert){
//     system.debug('Before insert trigger called.');
//   }

//   system.debug('trigger.isUpdate -->' + Trigger.isUpdate);
//   if(Trigger.isUpdate){
//     system.debug('before update trigger called.');
//   }

//   system.debug('=====trigger end=====');


// }

// trigger AccountTrigger on Account (before insert, before update, after insert, after update){

//     system.debug('------trigger start -----');

//     // will be true for BEFORE INSERT
//     if(Trigger.isBefore && Trigger.isInsert){
//         system.debug('before insert trigger called.');
//     }

//     // will be true for AFTER INSERT
//     if(Trigger.isAfter && Trigger.isInsert){
//         system.debug('after insert trigger called.');
//     }

//     // will be true for BEFORE UPDATE
//     if(Trigger.isBefore && Trigger.isUpdate){
//         system.debug('before update trigger called.');
//     }

//     // will be true for AFTER UPDATE
//     if(Trigger.isAfter && Trigger.isUpdate){
//         system.debug('after update trigger called.');
//     }

//     system.debug('=====trigger end=====');
// }


// trigger AccountTrigger on Account (before insert, before update, after insert, after update){

//     system.debug('------trigger start -----');

//     if(Trigger.isAfter){
//         system.debug('after insert/update new records : ' + trigger.new);
//     }
//     system.debug('=====trigger end=====');


// }



// now let's make it with the list ...
// trigger AccountTrigger on Account (before insert, before update, after insert, after update){

//     system.debug('------trigger start -----');

//     List<Account> newAccounts = Trigger.new;
//     if(Trigger.isAfter){
//         system.debug('after insert/update new records : ' + newAccounts);
//         system.debug('Number of records inserted/updated : ' +newAccounts.size());
//     }
//     system.debug('=====trigger end=====');


// }


// now let's add list's fields in it
// trigger AccountTrigger on Account (before insert, before update, after insert, after update){

//     system.debug('------trigger start -----');

//     List<Account> newAccounts = Trigger.new;
//     if(Trigger.isAfter){
//         system.debug('after insert/update new records : ' + newAccounts);
//         system.debug('Number of records inserted/updated : ' +newAccounts.size());

//         for(Account eachAcc : newAccounts){
//             system.debug('new acc id is '+eachAcc.Id + ', new acc name is '+ eachAcc.Name);
//         }
//     }
//     system.debug('=====trigger end=====');


// }



// trigger AccountTrigger on Account (before insert, before update, after insert, after update){

//     system.debug('------trigger start -----');

//     if(Trigger.isBefore && Trigger.isInsert){
//         system.debug('trigger.new in BEFORE INSERT --> '+ trigger.new);//.new is present, ID is null. Created date, created by, modified by are null.
//     }

//     if(Trigger.isAfter && Trigger.isInsert){
//         system.debug('trigger.new in AFTER INSERT --> '+ trigger.new);//.new is present, ID is present. Created date, created by, modified by are present
//     }

//     if(Trigger.isBefore && Trigger.isUpdate){
//         system.debug('trigger.new in BEFORE UPDATE --> '+ trigger.new);//.new is present, ID is present. Last modified date will be older.
//     }

//     if(Trigger.isAfter && Trigger.isUpdate){
//         system.debug('trigger.new in AFTER UPDATE --> '+ trigger.new);//.new is present, ID is present. Last modified date will be new updated one.
//     }

//     system.debug('=====trigger end=====');


// }



// let's see what will happen when the previous data when we update it as in trigger.old version.
// trigger AccountTrigger on Account (before insert, before update, after insert, after update){

//     system.debug('------trigger start -----');

//     if(Trigger.isBefore && Trigger.isInsert){
//         system.debug('trigger.old in BEFORE INSERT --> '+ trigger.old);// trigger.old is null because we just created a data...
//     }

//     if(Trigger.isAfter && Trigger.isInsert){
//         system.debug('trigger.old in AFTER INSERT --> '+ trigger.old);// trigger.old is null because we just created a data...
//     }

//     if(Trigger.isBefore && Trigger.isUpdate){
//         system.debug('trigger.old in BEFORE UPDATE --> '+ trigger.old);// trigger.old is present and the previous information of data it has
//     }

//     if(Trigger.isAfter && Trigger.isUpdate){
//         system.debug('trigger.old in AFTER UPDATE--> '+ trigger.old);// trigger.old is present and the previous information of data it has
//     }



//     system.debug('=====trigger end=====');


// }


//in here we will see old and the new version of data fields...
// trigger AccountTrigger on Account (before insert, before update, after insert, after update){

//     system.debug('------trigger start -----');

//     if(Trigger.isAfter && Trigger.isUpdate){
//         // print old and new ID and Names
//         List<Account> newAccounts = trigger.new;
//         List<Account> oldAccounts = trigger.old;
        
//         for(Account oldAcc : oldAccounts){
//             system.debug('old acc is '+ oldAcc.Id + ', old name is '+ oldAcc.Name);
//         }

//         for(Account newAcc : newAccounts){
//             system.debug('old acc is '+ newAcc.Id + ', old name is '+ newAcc.Name);
//         }
//     }

//     system.debug('=====trigger end=====');


// }




// trigger AccountTrigger on Account (before insert, before update, after insert, after update){

//     system.debug('------trigger start -----');
//     Map<Id, Account> trgNewMap = Trigger.newMap;
//     Map<Id,Account> trgOldMap = Trigger.oldMap;

//     if(Trigger.isBefore && Trigger.isInsert){
//     system.debug('=====BEFORE INSERT=====');
//     system.debug('trigger.newMap --> ' + trgNewMap); // ID is null, so newMap is NULL
//     system.debug('trigger.oldMap --> ' + trgOldMap); // Old is null. So oldMap is NULL
//     }

    
//     if(Trigger.isAfter && Trigger.isInsert){
//         system.debug('=====AFTER INSERT=====');
//         system.debug('trigger.newMap --> ' + trgNewMap); // ID is present, so newMap is present
//         system.debug('trigger.oldMap --> ' + trgOldMap); // Old is null. So oldMap is NULL
//     }

     
//     if(Trigger.isBefore && Trigger.isUpdate){
//         system.debug('=====BEFORE UPDATE=====');
//         system.debug('trigger.newMap --> ' + trgNewMap); // ID is present, newMap is present
//         system.debug('trigger.oldMap --> ' + trgOldMap); // Old is present, oldMap is present
//     }

     
//     if(Trigger.isAfter && Trigger.isUpdate){
//         system.debug('=====AFTER UPDATE=====');
//         system.debug('trigger.newMap --> ' + trgNewMap); // ID is present, newMap is present
//         system.debug('trigger.oldMap --> ' + trgOldMap); // Old is present, oldMap is present
//     }

// }




// trigger AccountTrigger on Account (before insert, before update, after insert, after update){

//     system.debug('------trigger start -----');
//     Map<Id, Account> trgNewMap = Trigger.newMap;
//     // trigger.new --> list<account> list of account records
//     // ID --> record as value
//     Map<Id,Account> trgOldMap = Trigger.oldMap;
//     list<account> accTriggerNew = trigger.new;
    
//    if(Trigger.isAfter && Trigger.isUpdate){
    
//     for(Id eachId : setIds){
//         // get NEW Account from eachID (key)
//         Account newAcc = trgnewMap.get(eachId);
//         Account oldAcc = trgOldMap.get(eachId);

//         string newName = newAcc.Name;
//         string oldName = oldAcc.Name;

//         system.debug('New Account name is '+ newName + ', old Account name was '+ oldName);
//         system.debug('New Account name is v2 '+trigger.newMap.get(eachId).Name);
//         // also we can use this one as same as the other trigger.oldmap.get(eachID).name;
//         // I mean this system.debug('Old Account name v '+ trigger.oldmap.get(eachID).name);
//     }
//    }

//    system.debug('=====trigger end=====');

// }



// trigger AccountTrigger on Account (before insert, before update, after insert, after update){

//     system.debug('------trigger start -----');
//     Map<Id, Account> trgNewMap = Trigger.newMap;
//     // trigger.new --> list<account> list of account records
//     // ID --> record as value
//     Map<Id,Account> trgOldMap = Trigger.oldMap;
//     list<account> accTriggerNew = trigger.new;
    
//    if(Trigger.isAfter && Trigger.isUpdate){
//     set<id> setIds = trgNewMap.keySet();
    
//     for(Id eachId : setIds){
//         // get NEW Account from eachID (key)
//         Account newAcc = trgnewMap.get(eachId);
//         Account oldAcc = trgOldMap.get(eachId);

//         string newName = newAcc.Name;
//         string oldName = oldAcc.Name;

//         system.debug('New Account name is '+ newName + ', old Account name was '+ oldName);
//         system.debug('New Account name is v2 '+trigger.newMap.get(eachId).Name);
//         // also we can use this one as same as the other trigger.oldmap.get(eachID).name;
//         // I mean this system.debug('Old Account name v '+ trigger.oldmap.get(eachID).name);
//     }
//     // bu kisimdan curly paranthesis bitene kadar bu kismi kullanmadik, ayni sey zaten ama comment out yaptik.
//     // we didn't use this one in this example. Teacher showed we could use this one too but we all did comment out, this is perfectly working well too.
//     // for (Account eachNewAccount : accTriggerNew) {
//     //     string newAccName = eachNewAccount.Name;

//     //     Account oldAcc = trgOldMap.get(eachNewAccount.Id);
//     //     string oldAccName = oldAcc.Name;
//     //     system.debug('new acc name ' + newAccName + ', old acc name ' + oldAccName);
//     // }
//     // ekstra bilgi Tamer slack'te paylasmisti cok guzel bir ornek
//     // trgOldMap.get(eachNewAccount.Id).Name buradan da oldmap'ten field bilgisine ulasilabilir
//    }

//    system.debug('=====trigger end=====');

// }





// trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
//     system.debug('----- trigger start -----');
//     Map<id, account> trgNewMap = trigger.newMap;
//     //trigger.new --> list<account> list of account records
//     //ID --> Record as value 
//     Map<id, account> trgOldMap = trigger.oldMap;


//     if (Trigger.isBefore && Trigger.isUpdate ) {
//         for (Id eachId : trgNewMap.keySet() ) {
//             Account newAccount = trgNewMap.get(eachId);
//             Account oldAccount = trgOldMap.get(eachId);

//             system.debug('new account website field value ' + newAccount.Website);
//             system.debug('old account website field value ' + oldAccount.Website);
//             //check if website field is CHANGED. 
//                 //compare old and new value of website field.
//             if (newAccount.website != oldAccount.Website ) {
//                 system.debug('for account ' + newAccount.Name + ', new website is ' + newAccount.Website);
//             } 
//         }
//     }

//     system.debug('===== trigger end =====');


// }



// trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
//     system.debug('----- trigger start -----');
//     Map<id, account> trgNewMap = trigger.newMap;
//     //trigger.new --> list<account> list of account records
//     //ID --> Record as value 
//     Map<id, account> trgOldMap = trigger.oldMap;


//     if (Trigger.isBefore && Trigger.isUpdate ) {
//         integer countWebsiteChange = 0;
//         for (Id eachId : trgNewMap.keySet() ) {
//             Account newAccount = trgNewMap.get(eachId);
//             Account oldAccount = trgOldMap.get(eachId);

//             system.debug('new account website field value ' + newAccount.Website);
//             system.debug('old account website field value ' + oldAccount.Website);
//             //check if website field is CHANGED. 
//                 //compare old and new value of website field.
//             if (newAccount.website != oldAccount.Website ) {
//                 system.debug('for account ' + newAccount.Name + ', new website is ' + newAccount.Website);
//                 countWebsiteChange ++;
//                 system.debug('number of account website change is '+countWebsiteChange);
//             } 
//         }
//     }

//     system.debug('===== trigger end =====');


// }



// trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
//     system.debug('----- trigger start -----');

//     if(Trigger.isBefore){
//         for(Account eachAccount : trigger.new){
//             if(trigger.isInsert && eachAccount.active__c = 'Yes'){
//             // update descrption field
//             // how to update description?
//             // set the value
//             eachAccount.Description = 'Account is active now. Enjoy it, for now..:)';

//             }
//         }

//     }

//     system.debug('===== trigger end =====');


// }



// trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
//     system.debug('----- trigger start -----');
   
//     if (Trigger.isBefore) {
//         // call handler method
//         AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
//     }

//     if(Trigger.isAfter && Trigger.isUpdate){
//         // call handler method to update vip of all contacts...
//         AccountTriggerHandler.updateVIPforContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
//     }

//     if(Trigger.isAfter && Trigger.isUpdate){
//        // call handler method to update MailingCity of all contacts... 
//        AccountTriggerHandler.updateBillingCityContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
//     }


// }

trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('----- trigger start -----');
   
    if (Trigger.isBefore) {
        //call handler method
        AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
    }

    if (Trigger.isAfter && Trigger.isUpdate) {
        //call handler method to update vip of all contacts.
        AccountTriggerHandler.updateVIPforContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.Oldmap);
    }

    if(Trigger.isInsert && Trigger.isAfter) {
        AccountHandler.createContact(Trigger.new);
    }
}

    

    

