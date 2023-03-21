@isTest 
public class AccountTriggerTest {
    @isTest 
    private static void testAccountInsert(){
        // how to test trigger?
        // create/update/delete/undelete records.
         // 3 account records here.
        // prepare data
        Account acc1 = new Account();
        acc1.Name = 'test 1';
        acc1.Industry = 'Energy';

        Account acc2 = new Account();
        acc2.Name = 'test 2';
        acc2.Industry = 'Energy';

        Account acc3 = new Account();
        acc3.Name = 'test 3';
        acc3.Industry = 'Banking';
        
        list<account> listAcc = new list<account>{acc1, acc2, acc3};
        insert listAcc;

    }

    @isTest 
    private static void testAccountUpdate(){
        Account acc1 = new Account();
        acc1.Name = 'test 1';
        acc1.Industry = 'Energy';

        Account acc2 = new Account();
        acc2.Name = 'test 2';
        acc2.Industry = 'Energy';

        Account acc3 = new Account();
        acc3.Name = 'test 3';
        acc3.Industry = 'Banking';
        
        list<account> listAcc = new list<account>{acc1, acc2, acc3};
        insert listAcc;

        for(account eachAcc : listAcc){
            eachAcc.Description ='Test update';
        }
        update listAcc;
    }

    
   
}