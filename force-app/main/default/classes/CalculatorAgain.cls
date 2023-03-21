public with sharing class CalculatorAgain {
    public void welcomeMessage(){
        system.debug('welcome to apex calc, update');
        // this is how we can call the different method in another method, in the same class.
        printNewMessage('welcome welcome');
    }


     private void printNewMessage(string msg){
        system.debug(msg);
    }

    // New topic
    // return type = string
    // parameter type = string(but only 1)
    public string printAndReturnMessage(string m){
        string returnStr = '';
        system.debug('Message is ' + m);
        returnStr = m + ' ...OK Cool';
        return returnStr;
    
    }

    // another example with some ingeter

    public integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
    }

    // We CAN have two or more methods with the same name.Under some conditions : 
    // It must have different type of parameters or 
    // It must have different datatype of parameters.

    public integer add(integer x, integer y, integer z){
        integer sum = x + y + z;
        return sum;
    }


    public boolean leapYearCheck(date dt){
        integer year = dt.year(); /*returns year component*/
        boolean lp = date.isLeapYear(year); /*checks if year is leap year or not, and it gives answer as true or false*/
        return lp;
    }



    // Just another examplet to make you understand how this private method is called kin public method. We wil write some messages and we will see how they'll work
    public void myPublicMessage(){
        system.debug('public method called'); /*we will call the public method*/
        system.debug('calling the private method');
        myPrivateMessage();
        system.debug('called private method');
    }

    // so I will call this private method in public method, which I called it on the myPublicMessage() method area.
    private void myPrivateMessage(){
        system.debug('private method called');
    }

}