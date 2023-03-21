public class DMLDemoAgain {
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

    public static void dmlDemoInsert_cstmObj2(){
        Salesforce_Project__c sp = [select id from Salesforce_Project__c order by CreatedDate desc limit 1];
        // create ticket instance
        Salesforce_Ticket__c newST= new Salesforce_Ticket__c();
        newST.Subject__c = 'created related record via apex';
        newST.Priority__c = 'High';
        newST.Requested_by_date__c = Date.today();
        // set relationship id
        newST.Salesforce_Project__c = sp.Id;
        // insert it now
        insert newST;
    }

    // public static void dmlyDemoInsert-wrong(){
    //     for(integer i = 0; i< 25; i++){
    //         account a = new account();
    //         a.name = 'softinnovas ' +i;
    //         insert a;
    //     }
    // } this is the wrong way to do it.never write soql or dml inside loops.
    // NEVER EVER DO THAT, the rason is limits there is a limit by 150. So dont do it...
    

    public static void dmlMultipleInsert_right1(){
        list<account> listAccount = new list<account>();
        account acc1 = new account();
        acc1.Name = 'Bulk acc1';
        acc1.ShippingCity = 'New York';
        acc1.Active__c = 'No';
        listAccount.add(acc1);

        account acc2 = new account();
        acc2.Name = 'Bulk acc2';
        acc2.ShippingCity = 'New York';
        acc2.Active__c = 'No';
        listAccount.add(acc2);

        account acc3 = new account();
        acc3.Name = 'Bulk acc3';
        acc3.ShippingCity = 'New York';
        acc3.Active__c = 'No';
        listAccount.add(acc3);

        insert listAccount;
    }

    public static void dmlMultipleInsert_right2(){
        list<account> insertAccountlist = new list<account>();
        for(integer i =0; i< 166; i++){
            account a = new account();
            a.Name= 'SoftInnovas v '+i;
            a.phone = '858594949 ' +i;
            a.AccountNumber = 'rt' +i;
            a.Active__c = 'Yes';
            // insert a; don't do this...
            insertAccountlist.add(a);
        }
        // check if list is not empty
        // .isEmpty() -> true when empty, false when NOT empty
        // !isEmpty() -> false when empty, true when NOT empty
        if(!insertAccountList.isEmpty()){
            insert insertAccountlist;
        }
    }
    
    // get the lastest created 50 accounts and update name
    // append 'B.0' to account name
    public static void dml_DemoMultipleUpdate_right1(){
        list<account> listAccount = [select id, name from account order by createddate desc limit 50];
        for(account eachAcc : listAccount){
            eachAcc.Name += ' B.0'; //achAcc.Name = eachAcc.Name + ' B.0'
        }
        update listAccount;
    }

    // we query all accounts

    // update name and append 'Yy' if active is 'Yes' --> 100
    // update name and append 'Nn' if active is 'Null' -->50
    
    public static void dml_DemoMultipleUpdate_right2(){
        list<account> listAccount = [select id, name,Active__c from account];
        list<account> updateAccountList = new list<account>();
        for(account eachAcc : listAccount){
            if(eachAcc.Active__c == 'Yes'){
                eachAcc.Name = eachAcc.Name + ' Yy';
                updateAccountList.add(eachAcc);
            }else if(eachAcc.Active__c == 'Null'){
                eachAcc.Name = eachAcc.Name + ' Nn';
                updateAccountList.add(eachAcc);
            }
        }
        if(!updateAccountList.isEmpty()){
            update updateAccountList;
        }
    }
    
}