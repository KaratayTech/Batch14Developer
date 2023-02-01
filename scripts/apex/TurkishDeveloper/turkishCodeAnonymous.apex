datetime myBirthDate = datetime.newInstanceGmt(1991, 5, 18, 7, 45, 00);
system.debug('My birth date is '+myBirthDate);
Integer bDay = myBirthDate.day();
Integer bMonth = myBirthDate.month();
Integer bYear = myBirthDate.year();
Integer totalBD= bDay + bMonth + bYear;
system.debug('18 + 5 + 1991 = '+ totalBD);