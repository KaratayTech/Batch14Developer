list<account> listAcc = [select id, name from account];
AccountsQueueable aq = new AccountsQueueable(listAcc);//you need to use it with parameter
// AccountsQueueable aq = new AccountsQueueable(); so this won't work, because there is no parameter
id jobId = system.enqueueJob(aq);//we can enqueue the class which implements queueable...

// we are going to remove the --SI we added, we are executing what we typed now.
list<account> listAcc2 = [select id, name from account where name like '%--SI'];
AccountsQueueable aq2 = new AccountsQueueable(listAcc2);
id jobId2 = system.enqueueJob(aq2);//we can enqueue the class which implements queueable...