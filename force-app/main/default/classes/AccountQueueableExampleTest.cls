@isTest
public class AccountQueueableExampleTest {
    @isTest
   private static void testQueueable1() {
        //1. prepare data
         List<account> listAcc = new list<account>();

         for (Integer i = 0; i < 200; i++) {
             account a = new account();
             a.Name = 'Pi account ' + i;
             a.Active__c = 'Yes';
             listAcc.add(a);
         }
         insert listAcc;

         //2. 
         Test.startTest();
         AccountQueueableExample aq = new accountQueueableExample(listAcc);
         system.enqueueJob(aq);
         Test.stopTest();

         //3. assert
         list<account> getAccounts = [select id, name from account];
         system.assert(getAccounts[0].Name.contains('-- SI'));
   }
}
