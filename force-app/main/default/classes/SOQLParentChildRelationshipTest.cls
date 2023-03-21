@isTest 
public class SOQLParentChildRelationshipTest {
   @TestSetup
   static void makeData(){
    //prepare data
    Account acc1 = new Account();
    acc1.Name = 'test 1';

    Account acc2 = new Account();
    acc2.Name = 'test 2';

    Account acc3 = new Account();
    acc3.Name = 'test 3';

    Account acc4 = new Account();
    acc4.Name = 'test 4';
    
    list<account> listAcc = new list<account>{acc1, acc2, acc3, acc4};
    insert listAcc;
   }

   @isTest 
   private static void testChildParentRlt(){
    List<account> allAccs = [select id from account];
    List<Contact> listCon = new List<Contact>();
    for(integer i=0; i<40; i++){
        Contact c = new Contact();
        c.LastName = 'child '+ i;

        if(i<10){
            c.AccountId = allAccs[0].id;
        }else if(i<20){
            c.AccountId = allAccs[1].id;
        }else if(i<30){
            c.AccountId = allAccs[2].id;
        }else {
            c.AccountId = allAccs[3].id;
        }
        listCon.add(c);
    }
    insert listCon;

    // start test
    Test.startTest();
    SOQLParentChildRelationship.childToParent();
    Test.stopTest();

   }

   @isTest 
   private static void testParentChildRlt(){
    List<Account> allAccs = [select id, type from account];
    for(Account eachAcc : allAccs){
        eachAcc.Name = 'Test Account';
    }
    update allAccs;
    List<Contact> listCon = new List<Contact>();
    for(integer i=0; i<40; i++){
        Contact con = new Contact();
        con.LastName = 'Test child ' +i;
        if(i<10){
            con.AccountId = allAccs[0].id;
        }else if(i<20){
            con.AccountId = allAccs[1].id;
        }else if(i<40){
            con.AccountId = allAccs[2].id;
        }else {
            con.AccountId = allAccs[3].id;
        }
       listCon.add(con);
    }
    insert listCon;

    Test.startTest();
    SOQLParentChildRelationship.parentToChild();
    Test.stopTest();
   }
   
}