public class DatetimeMethodsDemo {
    public void calculateAgeInMonths(){
        date birthDate = date.newInstance(1991, 5, 18);
        date todayDate = date.today();

        // age in months using monthsBetween
        integer ageInMonths = birthDate.monthsBetween(todayDate);
        system.debug('Buruk age in months is ==> ' +ageInMonths);

        integer ageInDays = birthDate.daysBetween(todayDate);
        system.debug('Buruk age in days ==> ' +ageInDays);
    }


    public void printSubscriptionEndDate(){
        date subStartDate = date.today();

        date subEndDate = subStartDate.addDays(1000);
        system.debug('susbscription end date is ' +subEndDate);

        // year
        integer endDateYear = subEndDate.year();
        system.debug('subscription end date year is ' + endDateYear);

        // month
        integer endDateMonth = subEndDate.month();
        system.debug('subscription end date month is ' + endDateMonth);
    }

    public void printOfferEndDate(){
        datetime offerStart = datetime.now();
        datetime offerEnd = offerstart.addHours(51);
        system.debug('offer end datetime is ' +offerEnd);

        // just the DATE component of offerEnd
        date offerEndDate = offerEnd.date();
        system.debug('offer enddate is '+ offerEndDate);

    }

    public void birthDateInMS(){
        datetime birthDT = datetime.newInstanceGmt(1991, 5, 18, 8, 45, 00);
        long birthDateMS= birthDT.getTime();
        system.debug('Buruk birth ddatetime in milisconds ==> '+birthDateMS);
    }
}