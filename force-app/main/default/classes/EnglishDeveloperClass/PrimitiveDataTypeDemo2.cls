public  class PrimitiveDataTypeDemo2 {
    public void printNewDate(){
        system.debug('create new dates here');

        // year month day
        Date newDate = Date.newInstance(1995, 2, 15);
        system.debug('new date is ' + newDate);

        Date newDate2 = Date.newInstance(2022, 1, 9);
        system.debug('new date2 is '+ newDate2);

        Date todayDate = date.today();
        system.debug('today date is ' + todayDate);
    }

    public void printNewTime(){
        // .newInstance() method will show hour, minute, seconds, miliseconds

        Time myTime = time.newInstance(10,80,34,20);
        system.debug('my time is ' + myTime);

        Time myTime2 = time.newInstance(18,40,23,5);
        system.debug('my time2 is ' + myTime2);

    }

    public void printNewDateTime(){
        
        Date newDate = date.today();
        Time newTime = time.newInstance(14,57,45,17);
        //1. create new datetime using DATE and TIME
        Datetime dt1 = Datetime.newInstance(newDate, newTime);
        system.debug('dt1 ' + dt1);

        //2. new datetime usgin YEAR, MONTH, DAY
        // default time is midnight (000000) user's timezone
        // midnight in EST. print in GMT()
        Datetime dt2 = Datetime.newInstance(2021, 6,23);
        system.debug('dt2 is(PRINTS in GMT) ' + dt2);

        //3. create datetime using YEAR, MONTH, DAY, HOUR, MINUTE, SECOND

        Datetime dt3 = Datetime.newInstance(2020, 01, 21, 5, 45, 18);
        system.debug('dt3 is ' +dt3);

        // 4. create newInstance from  longtime
        // constract a new datetime using milliseconds since jan 1 1970 00:00:00 GMT.
        long longTime = 0;
        datetime dt4 = datetime.newInstance(longtime);
        system.debug('dt4 ' +dt4);

        long longTime2 = 1667384856748L;
        datetime dt4_1 = datetime.newInstance(longTime2);
        system.debug('dt4_1 =>'+ dt4_1);

        // 5. newI=instanceGMT
        datetime dt5 = datetime.newInstanceGmt(1998, 5, 18, 15, 15, 15);
        system.debug('dt5 ' +dt5);

        // 6. now
        datetime dt6 = datetime.now();
        system.debug('dt6 is ' +dt6);

    }
}