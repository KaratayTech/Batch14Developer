Calculator c = new Calculator();
c.myPublicMessage();


system.debug('today is in leap year??? '+c.leapYearCheck(date.today())); /*if you want to do this like that, which is fine */

date dtt = date.today();
boolean dttCheck = c.leapYearCheck(dtt);
system.debug('today is in LEAP year ==> '+dttCheck); /*it is little bit longer version but it is very correct, you can do whichever is fine for you*/


system.debug(c.add(7,8,9)); /*I could've done this by defining some integers outside like the ones in the other examples
                             if you check the down areas you will see. But I used short version.*/

integer x = 10;
integer y = 5;
integer sum1 = c.add(x,y);
system.debug(sum1); /*first way*/

integer sum2 = c.add(15,20);
system.debug('the second result is '+sum2);/*second way*/

system.debug('the result is ' +c.add(5,10));/*third way*/


// c.printAndReturnMessage('print this for batch 14'); /*this will work. We are NOT storing in any variable.*/
string result = c.printAndReturnMessage('print this for batch 14');/*this will also work. We ARE storing in one variable. Then we can print it by system.debug()*/
system.debug(result);
string message = 'some new message to print';
string messageResult = c.printAndReturnMessage(message);
system.debug(messageResult);


string m = 'print this now';
c.welcomeMessage();
c.printNewMessage(m);
string msg = 'print this now too';
c.printNewMessage(msg);
c.printNewMessage('print this too buddy');