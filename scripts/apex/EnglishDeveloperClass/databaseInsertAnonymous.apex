list<account> listAccounts = new list<account>();

account a1 = new account();
a1.Name = 'test account 1';
listAccounts.add(a1);

account a2 = new account();
a2.Name = 'test account 1';
listAccounts.add(a2);

account a3 = new account();
listAccounts.add(a3);

account a4 = new account();
listAccounts.add(a4);

// insert listAccounts; how many accounts will be inserted with this DML? Answer is 0... it will throw error

// parameter 1 : list of accounts to insert
// parameter 2 : list all records or NONE  of them even if any record has error
// Database.insert(listAccounts, true);

// paramater 1: list of accounts to insert
// paramater 2 : insert good records and it will NOT insert bad ones.
List<Database.SaveResult> listResult = Database.insert(listAccounts, false);
// database.saveresult one rcord for each account.
// we are inserting 4 account records,so listResult will have 4 records in it.
// .isSuccess -> true if successfully inserted. Else returns false.
for(Database.SaveResult eachResult : listResult){
    if(eachResult.isSuccess()){
        system.debug('account record inserted successfully, account record id is '+ eachResult.getId());
    }else {
        system.debug('account insert FAILED. Error is ' + eachResult.getErrors());
    }
}

// USE database.insert(list,false) wherever possible
