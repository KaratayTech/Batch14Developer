@isTest 
public class AccountsQueueableTest {
    // prepare data
    private testmethod static void testQueueable1(){
        list<account> listAcc = new list<account>();
        for(integer i=0; i<200; i++){
            account a = new account();
            a.Name = 'queue test ' +i;
            a.Description = 'test';
            a.Active__c ='Yes';
            listAcc.add(a);
        }
        insert listAcc;

        // enqueue job
        Test.startTest();
        // AccountsQueueable qa = new AccountsQueueable(listAcc);
        system.enqueueJob(new AccountsQueueable(listAcc));
        Test.stopTest();

        // assertion
        integer countSI = [select count() from account where name like '%--SI'];
        assert.areEqual(200, countSI);
   }
}
   
    
