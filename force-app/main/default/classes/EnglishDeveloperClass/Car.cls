public class Car {
    public void switchOn(){
        system.debug('starting the car noww!!');
    }
//    go to classes (force-app-classes) folder > right click create apex class
// how to save this code to ORG
// -> ctrl + s
// to deploy -> right click -> Sfdx deploy this source to ORG

// What happens when we deploy? (we are not executing)
// it will take the code to the org, it will save the code to the org.



// variables created directly in class are class variables.
// class variables can have access modifiers.

   public string carColor = '';
// default is private, if you don't say anything in front of it.
   integer maxSpeed = 140;


   public string carName;

   public void drive(){
    system.debug('driving  '+carName); //will this work? Yes you can access the variable inside method of the class.
   }

   public void driveAtMaxSpeed(){
    // we can access public and private class variables inside public method of the class.
    string description = 'driving ' + carName + ' with car color ' + carColor + ' at ' + maxSpeed + 'km/h';
    system.debug(description);
   }



}

