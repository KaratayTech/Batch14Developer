public class Calculator {
    public void welcomeMessage(){
        system.debug('welcome to apex calc, update');
        // this is how we can call the different method in another method, in the same class.
        printNewMessage('welcome welcome');
    }

    // if it was something like this ==> void printNewMessage(string msg){
    //     system.debug(msg);
    // }
    // then default would be private void printNewMessage(string mg){
    //     system.debug(msg);

    // } because when you take public out and leave it without that, then default is set as PRIVATE. Even the class name starts with public doesn't matter.
    // if you try to call this method outside of the class like on system.debug like executing, it won't work. You will get the error as method is 'not visible'
    // You can only work with it, call it inside the class.

    // I am going to do something on the welcomeMessage() method, I will try to call the private method in there, so I will delete the public part on the printNewMessage()
    // Method and we'll see how will it work. Of course it will work from there, so this is how you can reach the private methods. During in the same class, if one method
    // is private and the other method is public, then you can call the method inside the public one like this ==> c.welcomeMessage(); and print it on the developer console page by executing.
    // Check the one called c.welcomeMessage(); on the calcAnonymous.apex sheet. This how you can call the private method. But first you have to write it inside the public method which in this example is
    // public void welcomeMessage(){
    //     system.debug('welcome to apex calc, update');
    //     printNewMessage('welcome welcome');
    // }

    // Then you can do the executing that c.welcomeMessage('this could take any parameter, but you should check the method itself first, if there is a parameter that you can place); on the calcAnonymous.apex page.

    // public --> I am commenting this part out of the method.

    // So let's review again.
    // default access modifier ==> private, or you can type as private void printnewMessage(){etc...} or void printnewMessage(){etc...} they are the same..
    // private ==> is accessible only inside the class, not OUTSIDE...
    // You can call directly the private method on the another method , by typing method name. You don't have to create a new instance.Just call the method and pass the parameter inside.
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

    // here is another different example. This time it will start with integer, but we will use string variable, let's see how can we use it.

    // public integer add(string a, string b){
    //     return (a.length() + b.length());
    // }                                           
    // ..well don't mind this example now, might be little bit confusing.

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


