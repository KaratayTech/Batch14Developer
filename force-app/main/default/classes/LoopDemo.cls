public class LoopDemo {
   public void print_int_while(){
       integer count = 1;
       while (count <=25) {
           system.debug(count);
           count++;
        }
   }
   public void print_N_Numbers(integer n){
    for (Integer i = 0; i < n ; i++) {
        system.debug(i);
    }
   }

   public void print_N_Odd_numbers(integer startInt, integer endInt){
    if (startInt > endInt) {
        system.debug('start int cannot be bigger than edn int');
    }else{
        for (Integer i = startInt; i < endInt; i++) {
            integer remainderI = math.mod(i,2);
            if(remainderI == 1){
                system.debug(i);
            }
    }
    
    }
   }
}