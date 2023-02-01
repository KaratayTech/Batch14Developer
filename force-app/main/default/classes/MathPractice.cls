public class MathPractice {
   public decimal practiseOne(decimal length, decimal width){
    decimal perimeter = ((length + width)*2);
    return perimeter;

   }

   public decimal practiseTwo(decimal height, decimal weight){
    decimal bmi = (weight / (height *height));
    return bmi;
   }

   public integer practiseThree(integer a, integer b){
    integer average = (a + b)/2;
    return average;
   }


   public decimal practiceFour(decimal amount){
      decimal bonus;
      if(amount <=0){
         bonus = 0; 
         system.debug('Amount cannot be lower than 0...');
      }else if(amount >0 && amount <= 49){
         bonus = 0;
         system.debug('You didn\'t get a bonus');
      }else if(amount >= 50 && amount <= 199){
         bonus = 10;
         system.debug('After ' +amount + '$ purchase you earned '+bonus + '$ bonus');
      }else if(amount >= 200 && amount <=499){
         bonus = 30;
         system.debug('After ' +amount + '$ purchase you earned '+bonus + '$ bonus');
      }else if(amount >=500){
         bonus = 50;
         system.debug('After ' +amount + '$ purchase you earned '+bonus + '$ bonus');
      }
      return bonus;

   }



   public decimal practiceFive(string order, integer quantity){
      decimal cost = 0;
      switch on order {
         when 'Bread' {
            cost = quantity *1;
         }
         when 'Bagel' {
            cost = quantity * 2;
         }
         when 'Cake'{
            cost = quantity * 3;
         }
      }
      return cost;
   }


   
}