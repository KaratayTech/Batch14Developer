@isTest
public class AccountTriggerHandlerTest {
    @isTest 
    private static void testUpdateDescription1(){
        // insert data
        // which calls trigger --> which calls handler's method 'UpdateDescription'
        Account acc1 = new Account();
        acc1.Name = 'test 1';
        acc1.Industry = 'Energy';
        acc1.Active__c ='Yes';

        Account acc2 = new Account();
        acc2.Name = 'test 2';
        acc2.Industry = 'Energy';
        acc2.Active__c ='Yes';

        Account acc3 = new Account();
        acc3.Name = 'test 3';
        acc3.Industry = 'Banking';
        acc3.Active__c = 'No';
        
        list<account> listAcc = new list<account>{acc1, acc2, acc3};
        insert listAcc;

        // assertion or verification
        // soql to get lastest account
        list<account> allAccounts =[select Id, Description, Active__c from account];
        for(account eachAcc :allAccounts){
            if(eachAcc.Active__c =='Yes'){
                // we want to assert that description has 'Enjoy' word in it.
                assert.isTrue(eachAcc.Description.contains('Enjoy'));
            }else{
                // check description is null
                assert.isTrue(eachAcc.Description == null);

            }
        }

    }

    @isTest
    private static void testUpdateDescription2(){
        // insert data
        // which calls trigger --> which calls handler's method 'UpdateDescription'
        Account acc1 = new Account();
        acc1.Name = 'test 1';
        acc1.Industry = 'Energy';

        Account acc2 = new Account();
        acc2.Name = 'test 2';
        acc2.Industry = 'Energy';

        Account acc3 = new Account();
        acc3.Name = 'test 3';
        acc3.Industry = 'Banking';
        acc3.Active__c = 'No';
        
        list<account> listAcc = new list<account>{acc1, acc2, acc3};
        insert listAcc;
        // update active for all accounts
        for(account a : listAcc){
            a.Active__c = 'yes';
        }
        update listAcc;

        // assertion or verification
        // soql to get lastest account
        list<account> allAccounts =[select Id, Description, Active__c from account];
        for(account eachAcc :allAccounts){
            if(eachAcc.Active__c =='Yes'){
                // we want to assert that description has 'Enjoy' word in it.
                assert.isTrue(eachAcc.Description.contains('Enjoy'));
            }else{
                // check description is null
                assert.isTrue(eachAcc.Description == null);

            }
        }
    }

    @isTest 
    private static void testVIPUpdate(){
        //create accounts
        
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

        //create contacts for those accounts
        list<contact> listCon = new list<contact>();
        for(integer i=0; i<300; i++){
            contact c = new contact();
            c.LastName = 'anything '+ i;

            if(i < 100){
                c.AccountId = listAcc[0].id;
            }else if(i < 200){
                c.AccountId = listAcc[1].id;
            }else {
                c.AccountId = listAcc[2].id;
            }
            listCon.add(c);
        }

        insert listCon;

        // update accounts' VIP field
        // this will fire trigger--handler--vipupdate method
        // update all account contact's VIP field
        for(account eachAccount : listAcc){
            eachAccount.vip__c = true;
        }
        update listAcc;


        // assert that VIP is updated in all contacts
        list<contact> allContacts = [select id, accountId, vip__c from contact];
        for(contact eachContact : allContacts){
            assert.areEqual(true, eachContact.vip__c);
        }
    }
}