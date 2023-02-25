// trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {

//     // to do some operation on before insert and before update we can write following if conditions
//     if(Trigger.isBefore){
//         // this will be true for BEFORE INSERT and BEFORE UPDATE
//         system.debug('We are in BEFORE Trigger.');
//         if(Trigger.isInsert){
//             system.debug('before insert trigger');
//         }
//         if(Trigger.isUpdate){
//             system.debug('before update trigger');
//         }
//     }

//     if(Trigger.isAfter){
//         // this will be true for AFTER INSERT and AFTER UPDATE
//         system.debug('We are in AFTER Trigger.');
//         if(Trigger.isInsert){
//             system.debug('after insert trigger');
//         }
//         if(Trigger.isUpdate){
//             system.debug('after update trigger');
//         }
//     }

// }



trigger ContactTrigger on Contact (before insert, after insert, before update, after update, after delete, after undelete) {

   if(Trigger.isBefore && Trigger.isUpdate){
    // call validation method of handler
   //  ContactTriggerHandler.contactUpdateValidation1(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap); We commented out this to try something else...
    ContactTriggerHandler.contactUpdateValidation2(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);

   }

   if(Trigger.isAfter){
      // call method to update rollUpSummary field
      ContactTriggerHandler.rollUpSummaryUpdate(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
   }


}

