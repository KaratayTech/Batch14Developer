public class SOQLParentChildRelationship {
    public static void childToParent(){
        List<Contact> listContact = [select id, name, account.id, account.name from contact];
        for(contact cntEachOf :listContact){
            system.debug('Account name => ' +cntEachOf.account.name + ', and the id => : '+cntEachOf.account.id);
        }
    }

    public static void parentToChild(){
        List<Account> lstAccount = [select id, name, (select id, name from contacts) from account];
        for(account accEachOf : lstAccount){
            List<Contact> EachContact = accEachOf.Contacts;
            for(contact eachCnt : EachContact){
                system.debug('Contact id ==> ' +eachCnt.id + ', and the name ==> '+eachCnt.name);
            }
        }
    }
}
