public class AccountSchedule implements schedulable {
   public void execute(SchedulableContext sc){
    //we will execute batch 
    //any apex code.
    //any method of any class can be called.

    database.executeBatch(new AccountsBatch());
   }
}
