public class DML_Assign1 {
    public void insertRecords(){
        list<Account> insertAccount = new List<Account>();
        // create 20 account records
        for(integer a=0; a<20; a++ ){
            account newAcc = new account();
            // append name with created
            newAcc.Name = 'Test Account Created ' +a;
            // insert
            insertAccount.add(newAcc);
        }
        // check if the list is not empty
        if(!insertAccount.isEmpty()){
            insert insertAccount;
        }
    }

    public void updateRecords(){
        // query created 20 records
        List<Account> updateAccount = [select id, name from account order by createddate desc limit 20];
        for(account eachNew : updateAccount){
            // append name with Updated
            eachNew.Name += ' Updated';
        }
        // update
        update updateAccount;
        
        // check if the list is not empty
        if(!updateAccount.isEmpty()){
            update updateAccount;
        }

    }
}
