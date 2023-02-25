public class AccountUpdateHelper {
    @invocableMethod
    public static void updateAccountWebsite(list<id> accIds) {
        list<account> listAccount = [SELECT id, website FROM account WHERE id in: accIds];
        for(account eachAccount : listAccount){
            eachAccount.Website = 'www.softinnovas.com';
        }
        update listAccount;
        
    }
    
}