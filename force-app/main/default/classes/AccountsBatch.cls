public class AccountsBatch implements database.batchable<sObject>, Database.stateful{
// there are 3 methods for this : start, execute, finish

    integer recordCount = 0;
    // first method is START and called only ONCE
    // we query here
    public database.QueryLocator start(Database.BatchableContext bc){
        // 500 records, let's say.
        database.QueryLocator db = database.getQueryLocator([select id, active__c, description from account]);
        system.debug('record count : START : '+ recordCount);
        return db;
    }

    // second method is EXECUTE, this will execute multiple times depending on the how many records we have in start method.
    // we got 500 records, and we are splitting in the CHUNK of 50 records.
    // so execute method will execute 10 times in this example.
    // let's say group #2 , #3 -> they failed for some reason
    // but group #1, #4, #5, #6, #7, #8, #9, #10 will pass. only that failed ones will be failed but the rest will pass.
    public void execute(Database.BatchableContext bc, List<account> scope){
        system.debug('inside execute method');
        system.debug('number of records to process is '+ scope.size());
        list<account>updateAccounts = new list<account>();
        for(account eachAcc : scope){
            if(eachAcc.Active__c !='No'){
                eachAcc.Description += '..updated VIA batch.';
                updateAccounts.add(eachAcc);
            }
            
        }
        if(!updateAccounts.isEmpty()){
            recordCount += updateAccounts.size();
            system.debug('record count : AFTER :' +recordCount);
            update scope;
        }

    }

    // third method is FINISH, it will execute AT THE END.
    public void finish(Database.BatchableContext bc){
        system.debug('Finish method called. All records are processed.');
        system.debug('record count: FINAL : '+recordCount);
        // send an email to admins.
    }  
}