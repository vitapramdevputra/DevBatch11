public class LoopDemo {
   public void print_int_while(){
        integer count = 1;
        while (count <=25) {
            system.debug(count);
            count++;
        }
   }

   public void print_N_numbers(integer n){
                          //9 < 9
        for (Integer i = 0; i < n; i++) {
            system.debug(i);
        }
   }

   public void print_N_odd_numbers(integer startInt, integer endInt){
        //if startInt is bigger than endInt -> print. NOT ALLOWED Bro.
        if (startInt > endInt) {
            system.debug('NOT ALLOWED !!!!!\'');
        } else {
            for (Integer i = startInt; i < endInt; i++) {
                system.debug('i is ' + i);
                integer remainder = math.mod(i, 2); 
                //modI == 1 then, odd number
                if (remainder == 1) {
                    system.debug(i + ' is ODD');
                }
            }
        }
        
   }
}
