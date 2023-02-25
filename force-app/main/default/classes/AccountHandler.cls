public class AccountHandler {
    public static void createContact(List<Account> accounts) {
        List<Contact> newCntInsert = new List<Contact>();
        
        for(Account eachAcc : accounts) {
            Contact cnt = new Contact();
            cnt.AccountId = eachAcc.Id;
            cnt.FirstName = 'Account\'s';
            cnt.LastName = 'Contact'; 
            
            newCntInsert.add(cnt);
        }
        
        if(!newCntInsert.isEmpty()) {
            insert newCntInsert;
        }
    }
}