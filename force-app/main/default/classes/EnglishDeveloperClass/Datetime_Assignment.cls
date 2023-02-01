public class Datetime_Assignment {
    public void diffofDate(){
        date varTomorrowDate = date.newInstance(2023, 1, 15);
        system.debug('Tomorrow\'s date is '+varTomorrowDate);

        date varTodaysDate = date.newInstance(2023, 1, 14);
        system.debug('Today\'s date is '+ varTodaysDate);

        integer daysDifference = varTodaysDate.daysBetween(varTomorrowDate);
        system.debug('The difference of ' +varTomorrowDate + ' and '+varTodaysDate + ' ==> ' +daysDifference);
    }

    public void Timecheck(){
        datetime varTomorrowDatetime = datetime.newInstanceGmt(2023, 1, 15, 7, 00, 00);
        system.debug('Tomorrow\'s datetime is '+varTomorrowDatetime);

        datetime var10DaysDatetime = datetime.newInstanceGmt(2023, 1, 24, 9, 00, 00);
        system.debug('Ten days later from today ==> ' +var10DaysDatetime);

        long varDatetimeLong = 12339874361L;
        system.debug('varDatetimeLong ==> ' +var10DaysDatetime);

        datetime addSevenDays = varTomorrowDatetime.addDays(7);
        system.debug('Seven days after tomorrow ==> '+addSevenDays);

        datetime addTenDays = var10DaysDatetime.addDays(10);
        system.debug('Ten days after var10DaysDatetime ==> '+addTenDays);

    }

}