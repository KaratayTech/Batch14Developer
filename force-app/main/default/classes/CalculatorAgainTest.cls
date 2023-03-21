@isTest // @isTest annotate our class with @istest --> this makes it a TEST class.

public class CalculatorAgainTest {
    // create test methods.

    // it can be PUBLIC or PRIVATE
    // it must STATIC
    // it must return VOID
    // it should NOT include PARAMETERS--- NO PARAMETERS allowed in TEST method 
    //   a- but we can call other methods inside it which has parameters.
    // @isTest annotation for test method
    @isTest
    private static void testMethod1(){
        CalculatorAgain c = new CalculatorAgain();
        c.myPublicMessage();
        c.welcomeMessage();

    }
    
    @isTest
    private static void testAdd1(){
        CalculatorAgain c = new CalculatorAgain();
        integer sum = c.add(5,10);
        // we want to verify if sum is accurate or not
        // we call assertion, we will assert it here.
        system.assertEquals(15, sum);
    }

    @isTest
    private static void testAdd2(){
        CalculatorAgain c = new CalculatorAgain();
        integer sum = c.add(5,10, 10);
        // we want to verify if sum is accurate or not
        // we call assertion, we will assert it here.
        system.assertEquals(25, sum);
    }

   @isTest
   private static void returnMessage(){
        CalculatorAgain c = new CalculatorAgain();
        string msg = c.printAndReturnMessage('Done!');
        system.assertEquals('Done! ...OK Cool', msg);
   }
}