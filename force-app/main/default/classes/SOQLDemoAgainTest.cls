@isTest 
public class SOQLDemoAgainTest {
    @TestSetup
    static void makeData(){
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
    private static void testChildParent1(){
        // prepare data
        // 3 accounts
       List<account> allAccs = [select id from account];
        // 300 contacts but 100 contacts for each account

        list<contact> listCon = new list<contact>();
        for(integer i=0; i<300; i++){
            contact c = new contact();
            c.LastName = 'anything '+ i;

            if(i < 100){
                c.AccountId = allAccs[0].id;
            }else if(i < 200){
                c.AccountId = allAccs[1].id;
            }else {
                c.AccountId = allAccs[2].id;
            }
            listCon.add(c);
        }

        insert listCon;

        // start test
        Test.startTest();
        SOQLDemoAgain.childToParent_SOQL1();
        Test.stopTest();
        // stop test
        // no assertion required because our method is NPT doing anything.

        
    }


    @isTest 
    private static void testParentChild1(){
        // 3 account
        List<Account> allAccs = [select id, type from account];
        for(account eachAcc : allAccs){
            eachAcc.type = 'Customer - Direct';
        }
        update allAccs;

        // 300 opportunity
        List<Opportunity> listOpps = new List<Opportunity>();
        for(integer i =0; i<300; i++){
            Opportunity o = new Opportunity();
            o.StageName = 'Closed Won';
            o.Name = 'test opp';
            o.CloseDate = date.today();
            if(i <100){
                o.accountId = allAccs[0].id;
            }else if(i<200){
                o.accountid = allAccs[1].id;
            }else{
                o.AccountId = allAccs[2].id;
                }
            listOpps.add(o);
        }
        insert listOpps;
        SOQLDemoAgain.parentToChild_SOQL1();
    }
}

        // call method
       
