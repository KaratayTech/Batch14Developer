public class DML_Demo {
    public static void dmlDemoInstert_stndObj1() {
        // create new instance of account object
        Account acc = new account();
        // set all field values
        acc.Name = 'Softinnovas';
        // then do the action
        insert acc;// this will create a new record.

    }

    public static void dmlDemoInsert_cstmObj(){
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Learn dml';
        sp.Description__c = 'learn dml batch14';
        sp.Status__c = 'New';

        insert sp;
    }

    public static void dmlUpdateDemo_stndObj1(){
        Account ac = new Account();
        ac.Name = 'Salesforce';
        system.debug('Before insterting ac' +ac);
        insert ac;
        system.debug('Record is insterted now '+ac);

        // we now have ID in account's instance 'ac'
        // we need ID if we want to update the record
        ac.Name = 'Salesforce Inc.';
        // update
        update ac;

    }

    public static void dmlUpdateDemo_stndObj2(){
          Account acc = [select id, name from account where name like 'SoftInnovas%' limit 1]; 
        //   now set new filed value
        acc.name = 'SoftInnovas Inc.';
        acc.Phone = '899686959';
        update acc;
        system.debug('acc '+acc);
    }

    public static void dmlInsertDemo_stndObjc2(){
        Account acc = [select id, name from account where name like 'SoftInnovas%' limit 1]; 
        //create contact instance
        contact c = new contact();
        c.LastName = 'Biden';
        // setting relationship
        c.AccountId = acc.Id;
        insert c;
    }
    
}