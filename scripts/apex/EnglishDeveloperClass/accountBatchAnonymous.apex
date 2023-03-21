AccountsBatch ab = new AccountsBatch();
// we can pass the new instance of only that class, which IMPLEMENTS batchable
Database.executeBatch(ab,50);
// Database.executeBatch(ab);//default number of record is 200.
