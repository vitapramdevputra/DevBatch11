public class PrimitiveDataTypeDemo2 {
    public void printNewDate(){
        system.debug('Create new date instance');
                        //1. year, 2. month, 3. day
        Date newDate = Date.newInstance(1995, 2, 2);
        system.debug('new date\'s is ' + newDate);

        Date newDate2 = Date.newInstance(2022, 10, 10);
        system.debug('new date2 is ' + newDate2);

        Date todayDate = date.today();
        system.debug('today\'s date is ' + todayDate);
    }

    public void printTime(){
                        //1. hour, minute, second, milliseconds
        Time myTime = time.newInstance(1, 1, 15, 55);
        system.debug('mytime is ' + myTime);

        Time meTime = time.newInstance(16, 18, 45, 15);
        system.debug('meTime is ' + meTime);     
    }

    public void printNewDateTime(){
        Date newDate = date.today();
        Time newTime = time.newInstance(1, 1, 15, 55);

        //1. Create new DATETIME using DATE and TIME.
        Datetime dt1 = Datetime.newInstance(newDate, newTime);
        system.debug('dt1 is ' + dt1);

        //2. create new datetime using YEAR, MONTH, DAY
        //TIME will be USER's profile time zone MIDNIGHT.
        datetime dt2 = datetime.newInstance(2000, 5, 16);
        system.debug('dt2 is ' + dt2); //IT prints in GMT.
    }
}
