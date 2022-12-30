public class AccountsBatch implements Database.Batchable<sObject>, Database.stateful{
    integer count = 0;
    integer countRecords = 0;
  
    //soql query.
    //get all the records we want to process
    public Database.QueryLocator start(Database.BatchableContext bc){
        //query.
        Database.QueryLocator q1 = Database.getQueryLocator([select id, name, description, Active__c from account]);
        // 100 records
        //return CHUNK of it.
        return q1;
   }
   public void execute(Database.BatchableContext bc, List<account> scope){
        count++;
        system.debug('execute method start');
        List<account> updateAcc = new list<account>();
        for (account eachAcc : scope) {
            if (eachAcc.Active__c != 'No') {
                eachAcc.Description += '...updated via batch apex';
                updateAcc.add(eachAcc);
                countRecords++;
            }
        }
        if (!updateAcc.isEmpty()) {
            update updateAcc;
        }
        system.debug('Execute method count: ' + count);
        system.debug('number of records proccessed count: ' + countRecords);
        system.debug('execute method done');
   }

   public void finish(Database.BatchableContext bc){
        system.debug('finish method called. Enjoy.');
        system.debug('FINISH Execute method count: ' + count);
        system.debug('FINISH number of records proccessed count: ' + countRecords);
   }
}
