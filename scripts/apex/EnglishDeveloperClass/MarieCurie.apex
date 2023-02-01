date todaysDate = date.newInstance(2023, 1, 14);
system.debug('Today\'s date is '+ todaysDate);

date marieCurieBD = date.newInstance(1867, 11, 7);
system.debug('Marie Curie\'s birth date is '+marieCurieBD);

Integer mcYear = marieCurieBD.year();
Integer findYear = todaysDate.year();
Integer differenceInYears = findYear - mcYear;
system.debug('The years between Marie Curie\'s birth date and today\'s date is '+differenceInYears);

integer monthsBetween = marieCurieBD.monthsBetween(todaysDate);
system.debug('Months between Marie Curie\'s birth date and today\'s is '+monthsBetween);
integer refByMonths = monthsBetween / 12;
system.debug('The years between Marie Curie\'s birth date and today\'s date referral by months is ' +refByMonths);

integer daysBetween = marieCurieBD.daysBetween(todaysDate);
system.debug('Days between Marie Curie\'s birth date and today\'s is ' +daysBetween);
integer refByDays = daysBetween / 365;
system.debug('The years between Marie Curie\'s birth date and today\'s date referral by days is ' +refByDays);

system.debug('is Marie Curie\'s birth date leap year:? ' +Date.isLeapYear(1867));



