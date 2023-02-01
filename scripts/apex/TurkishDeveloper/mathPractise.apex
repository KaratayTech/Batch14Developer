MathPractice rec = new MathPractice();
system.debug('The average of the numbers 127 and 53 ==> '+ rec.practiseThree(127,53));
system.debug('The body mass index is '+ rec.practiseTwo(1.67, 62.5));
system.debug('The rectangular\'s perimeter is '+ rec.practiseOne(17.27, 52.15));

MathPractice cst = new MathPractice();

system.debug('4 breads cost ==> '+cst.practiceFive('Bread', 4));
system.debug('5 bagels cost ==> '+cst.practiceFive('Bagel', 5));
system.debug('7 cakes cost ==> '+cst.practiceFive('Cake', 7));


MathPractice bns = new MathPractice();
system.debug(bns.practiceFour(-50));
system.debug(bns.practiceFour(30));
system.debug(bns.practiceFour(100));
system.debug(bns.practiceFour(300));
system.debug(bns.practiceFour(750));
