string c2 = ListDemo.candidateList(2);
system.debug('c2 is => '+c2);
// string c5 =ListDemo.candidateList(5);
// system.debug('c5 is =='+c5); it will give us error. because there is no 6th. element in our list.

// ListDemo.candidateList(); this one is from the earlier example which i commented out.

// in here we fixed that error by using if conditions, so instead of giving error, it will print an error message.
string c5 = ListDemo.candidateList(5);
system.debug('c5 is => '+c5);
string c_4 = ListDemo.candidateList(-4);
system.debug('c-4 is => '+c_4);
string c3 = ListDemo.candidateList(3);
system.debug('c3 is => '+c3);

ListDemo.randomIntegerList();

ListDemo.allCats();

ListDemo.iteratelist();