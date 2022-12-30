@isTest
public class AccountsBatchTest {
    @isTest
    private static void testBatch1() {
        //1. prepare data
        List<account> listAcc = new list<account>();

        for (Integer i = 0; i < 900; i++) {
            account a = new account();
            a.Name = 'Pi account ' + i;
            a.Active__c = 'Yes';
            listAcc.add(a);
        }
        insert listAcc;

        //start test
        Test.startTest();
        AccountsBatch ab = new AccountsBatch();
        Database.executeBatch(ab, 900);
        Test.stopTest();

        //3. assert
        List<account> getAcc = [select id, description from Account];
        system.assert(getAcc[0].Description.contains('batch'));
    }
}
