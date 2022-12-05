public class Calculator {
    //void --> return type. 
    //() --> parameters.
   public void welcomeMessage(){
        system.debug('welcome to apex calc');
        welcomePrivateMessage();
   }

   //by default a method is private. If we don't write anything.
   private void welcomePrivateMessage(){
        system.debug('this is private msg');
   }

   public void printNewMessage(string msg){
        //msg = variable => is used INSIDE the method.
        system.debug(msg);
   }
   //return string, append '...ok cool' to parameter
   public string printAndReturnMessage(string msg){
        string returnString = msg + '...OK cool.';
        return returnString;
   }

   public static integer add(integer a, integer b){
        integer sum = a + b;
        return sum;
   }

   public static integer add(integer x, integer y, integer z){
        integer sum = x + y + z;
        return sum;
   }

   //parameter is DATE
   //return type is boolean
   public boolean leapYearCheck(date dt){
        integer year = dt.year(); //use built-in method. CLEAR?
        boolean lp = date.isLeapYear(year);
        return lp;
   }
}
