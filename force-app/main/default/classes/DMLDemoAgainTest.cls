 @isTest
public class DMLDemoAgainTest {
    @isTest
    private static void testInsertStndObj(){
        // SOQL -- cannot fetch or get ANY record from ORG
        // DML  -- will not INSERT/UPDATE any record in ORG
        DMLDemoAgain.dmlDemoInstert_stndObj1();
        // verify
        // SOQL
        list<account> accs = [select id, name from account where name = 'Softinnovas'];
        // assert
        system.assertEquals(1, accs.size());
        system.assertEquals('Softinnovas', accs[0].name);

    }

    @isTest
    private static void testInsertCstmObj(){
         DMLDemoAgain.dmlDemoInsert_cstmObj();// it will insert record in test world
        
         // to verfiy we do SOQL and get the record here
        list<Salesforce_Project__c> sp = [select id, Project_Name__c from Salesforce_Project__c where Project_Name__c = 'Learn dml' ];
        system.assertEquals('Learn dml', sp[0].Project_Name__c);
        system.assertEquals(1, sp.size());
        
    }

    @isTest
    private static void testUpdateStndObj2(){
        // Prepare data
        Account acc = new account();
        acc.Name = 'SoftInnovas';
        insert acc;

        // this method NEEDs one account with name 'Softinnovas'
        DMLDemoAgain.dmlUpdateDemo_stndObj2();

        // verify
        // soql
        Account updatedAcc = [select id, name,phone from account];
        // assert
        system.assertEquals('SoftInnovas Inc.', updatedAcc.Name);
        assert.areEqual('SoftInnovas Inc.', updatedAcc.Name);

    }

    @isTest
    private static void testInsertStndObj2(){
        Account acc = new Account();
        acc.Name = 'SoftInnovas';
        insert acc;
        DMLDemoAgain.dmlInsertDemo_stndObjc2();
        // assert
        // verify that contact is created
        // soql
        contact con = [select lastname, accountId from contact where LastName= 'Biden' limit 1];

        system.assertEquals(acc.Id, con.accountId);
        assert.areEqual(acc.Id, con.accountId);
    }

    @isTest 
    private static void testInsertCstmObj2(){
        // prepare data
        // create project
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'test project';
        insert sp; //5 seconds cpu is consumed here

        // call method
        // to actually test this method we now have only 5 seconds cpu time available
        Test.startTest();
        //RESET governer limit. We will again have 10 seconds of cpu time available
        DMLDemoAgain.dmlDemoInsert_cstmObj2();
        Test.stopTest();
        // continue with previous governer limit 5 seconds cpu time for rest of the code.

        // verify
        // soql
        Salesforce_Ticket__c sst = [select subject__c, priority__c,status__c, salesforce_project__c from Salesforce_Ticket__c where subject__c ='created related record via apex'];
        assert.areEqual(sp.Id, sst.Salesforce_Project__c);
        assert.areEqual('High', sst.Priority__c);
   
    }

    @isTest 
    private static void testMultipleInsertRight1(){
        list<account> insertAcc = new list<account>();
        Account acc1 = new Account();
        acc1.Name = 'Bulk';
        insertAcc.add(acc1);

        Account acc2 = new Account();
        acc2.Name = 'Bulk';
        insertAcc.add(acc2);

        Account acc3 = new Account();
        acc3.Name = 'Bulk';
        insertAcc.add(acc3);

        insert insertAcc;
        Test.startTest();
        DMLDemoAgain.dmlMultipleInsert_right1();
        Test.stopTest();

        list<account> acnts = [select id, name from account where name like 'Bulk%' order by createddate desc limit 3];
        system.assertEquals(3, acnts.size());
    }


    // @isTest 
    // private static void ttestMultipleInsertRight2(){
    //     list<account> insertAcc2 = new list<account>();

    // } i'll return this later on...
   
}