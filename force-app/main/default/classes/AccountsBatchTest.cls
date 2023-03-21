@isTest 
public class AccountsBatchTest {
    @isTest 
    private static void testBatch1(){
        // First prepare data
        list<account> listAcc = new list<account>();
        for(integer i=0; i<900; i++){
            account a = new account();
            a.Name = 'batch test ' +i;
            a.Description ='test';
            a.Active__c = 'Yes';
            listAcc.add(a);
        }
        insert listAcc;
        // end of prepare data

        //Second-> invoke batch apex, in between start test, stopTest
        Test.startTest();
        AccountsBatch  ab = new AccountsBatch();
        Database.executeBatch(ab,950);
        // or it can be Database.executeBatch(ab, listAcc.size());
        Test.stopTest();
        // end of Second.

        // assert
        list<account>allAccounts = [select id, description from account];
        for(account eachAccount : allAccounts){
            assert.isTrue(eachAccount.Description.contains('batch'));
        }
    }
}