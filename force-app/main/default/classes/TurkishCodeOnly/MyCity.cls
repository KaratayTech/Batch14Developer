public class MyCity {
   public void cityInformation(){
      string city = 'Austin';
      string state = 'Texas';
      system.debug(city + ' is a city in ' + state + ' state. Which is where I live.');

      datetime whenFounded = datetime.newInstanceGmt(1776, 7, 4, 00, 00, 00);
      system.debug('United States of America is founded on '+whenFounded);

      time sunrise = time.newInstance(7,28,00,00);
      system.debug('Sunrise for Austin is ' + sunrise);

      datetime todaysDatetime = datetime.newInstanceGmt(2023, 1, 14, 12, 30, 00);
      datetime monthsBefore = todaysDatetime.addMonths(-36);
      system.debug('Today\'s date is ' +todaysDatetime + ' and 36 months before today\'s date is '+monthsBefore);


   }

   public void stringMethod(){
    string sentence = 'I am a salesforce Developer';
    system.debug(sentence);

    Boolean checkSentence = sentence.contains('force');
    system.debug('sentence includes force ... ' + checkSentence);

    Integer lengthOfSentence = sentence.length();
    system.debug('sentence length is '+ lengthOfSentence );

    String sentenceCapital = sentence.toUpperCase();
    system.debug('sentence to upper case ==> '+ sentenceCapital);

   }

   public void dateMethod(){
      date todaysDate = date.newInstance(2023, 1, 14);
      system.debug('Today\'s date is '+ todaysDate);

      datetime todaysDateTime = datetime.newInstanceGmt(2023, 1, 14, 12, 2, 00);
      system.debug('Today\'s exact date and time is ' +todaysDateTime);

      datetime addFiftyHours = todaysDateTime.addHours(50);
      system.debug('Fifty hours from now ==> ' +addFiftyHours);
   }

   public string favoriteCafe;
   public string favoritePark;
   public string favoriteMall;
   public string favoriteStore;

   public string myFavoriteLocations(string city){
     system.debug(city + ' is the city I live in. And my favorite cafe here is ' +favoriteCafe+ ' My favorite park to spend time is ' 
      +favoritePark + ' I always shop in my favorite mall '+favoriteMall+ ' The store I\'d like to shop the most in the mall is ' 
      +favoriteStore);
     return city;
   }


   public void printString(integer x){
      for(integer i = 1; i <= x; i++){
         system.debug('Hello, this is my practise 17. Works successfully!! ' + i);
      }
   }



}