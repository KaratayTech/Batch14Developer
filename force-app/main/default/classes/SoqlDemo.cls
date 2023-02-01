public class SoqlDemo {
   public static void account_SOQL_1(){
    list<account> listAcc = [select id, name, phone from account order by createddate desc];
    system.debug('list of accounts '+listAcc);
   }

   public static void account_SOQL_11(){
      account acc = [select id, name, phone from account order by createddate desc limit 1];
      system.debug('accounts acc '+ acc);
     }

   public static void account_SOQL_2(){
      account acc = [select id, name, phone, AccountNumber from account order by createddate desc limit 1];
      system.debug('accounts acc '+ acc);
      string aName = acc.name;
      string aPhone = acc.Phone;
      system.debug('account name is ' +aName + ', phone is ' +aPhone + ', account number is '+acc.AccountNumber );

      
   }

   public static void account_SOQL_3() {
      list<account> listAccount = [select id, name, phone, AccountNumber from account order by createddate desc];

      for(account eachAccount : listAccount){
         system.debug('---eachaccount loop start ----');
         system.debug('each account record : ' + eachAccount);
         string accName = eachAccount.name;
         string accPhone = eachAccount.phone;
         system.debug('account name is ' + accName + ', account phone is '+ accPhone + ', and account number is ' +eachAccount.AccountNumber);
         system.debug('----eachaccount loop end----');

      }
   }

   public static void accountFilter_SOQL(){
      string accountNameFilter = 'sforce';
      list<account> listAcc = [select id, name from account where name = :accountNameFilter];
      system.debug('list acc ' +listAcc);

   }

   public static void accountFilter_SOQL(string accountNameFilter){
      list<account> listAcc = [select id, name from account where name = :accountNameFilter];
      system.debug('list acc ' +listAcc);

   }

   public static void childToParent_SOQL1(){
      list<contact> listContact = [select id, name, phone, account.name, account.industry from contact where account.industry = 'energy'];
      for( contact eachContact : listContact){
         string cntName = eachContact.account.name;
         system.debug('contact name is '+ eachContact.name + ', its account is '+cntName);
      }

   }

   public static void parentToChild_SOQL1(){
      list<account> listAcc = [SELECT name, annualrevenue, (SELECT name, amount FROM opportunities WHERE stagename = 'Closed Won') FROM account WHERE type = 'Customer - direct'];

      for(account eachAcc : listAcc){
         system.debug('account name is '+ eachAcc.name + ', acc annual revenue is '+eachAcc.AnnualRevenue);
         List<Opportunity> eachAccOpp = eachAcc.Opportunities;
         system.debug('========');
         for(Opportunity eachOpp : eachAccOpp){
            system.debug('opp name '+eachOpp.name +', amount is '+ eachOpp.Amount);
         }
         system.debug('========');
      }
   }

   // projects, and its tickets
   // 2 requierements
   // 1- total tickets for each PROJECT
   // 2- high priority ticket for each PROJECT
   public static void parentToChild_SOQL2(){
      list<salesforce_project__c> listSP =[select name, project_name__c, (select subject__c, 
       priority__c from salesforce_tickets__r) from salesforce_project__c];
      // for each loop on project
      for(salesforce_project__c eachSP : listSP){
         // total ticket
         list<salesforce_ticket__c> listST = eachSP.salesforce_tickets__r;
         integer totalTickets = listST.size();
         integer highPriorityST = 0;
         // Check each ticket's priority field, if it is 'high' then increment
         for(salesforce_ticket__c eachST : listST){
            highPriorityST++;
         }
         system.debug('Project name '+eachSP.name + ', total tickets '+listST);

      }
   }

}
