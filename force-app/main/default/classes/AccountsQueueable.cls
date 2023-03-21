public class AccountsQueueable implements Queueable{
    list<account> listAccount = new list<account>();
    // this is a paramaterless constructor
    public AccountsQueueable(list<account> accs) {
        listAccount = accs;

    }
    public void execute(QueueableContext qc){
        system.debug('inside execute method listAccount --> ' +listAccount);
        // update name of all acounts in listAccount.
        // append --SI in account name
        for(account eachAcc : listAccount){
            eachAcc.Name += '--SI';
            // string newName = eachAcc.Name.removeEnd('--SI'); 
            // eachAcc.Name = newName; //that's how we delete what we added to the names... but of course first we will comment out the eacAcc.Name += '--SI' part in the beginning we typed to add --SI.
        }
        update listAccount;
    }
}
