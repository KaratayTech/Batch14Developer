// trigger ContactTriggerAssignment on Contact (before insert, before update) {

//     system.debug('--------Trigger Start--------');

//     if(Trigger.isBefore && Trigger.isInsert){
//         system.debug('Here we are in BEFORE INSERT trigger');
//         for(Contact newCnt : Trigger.new){
//             system.debug('Name : '+ newCnt.Name);
//             system.debug('Account Name : '+ newCnt.AccountId);
//             system.debug('Phone : '+ newCnt.Phone);
//             system.debug('Email : '+ newCnt.Email);
//         }
//     }

//     if(Trigger.isBefore && Trigger.isUpdate){
//         system.debug('Here we are in BEFORE UPDATE trigger');
//         for(Contact newCnt : Trigger.new){
//             system.debug('Name : '+ newCnt.Name);
//             system.debug('Account Name : '+ newCnt.AccountId);
//             system.debug('Phone : '+ newCnt.Phone);
//             system.debug('Email : '+ newCnt.Email);  
//         }
//     }

//     system.debug('--------Trigger End--------');

// }