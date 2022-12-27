@isTest
public class SPTriggerHandlerTest {
    @isTest
   private static void testSPUpdateDescription() {
        Salesforce_Project__c sp1 = new Salesforce_Project__c();
        sp1.Project_Name__c = 'SP Test 1';

        Salesforce_Project__c sp2 = new Salesforce_Project__c();
        sp2.Project_Name__c = 'SP Test 2';

        List<Salesforce_Project__c> listSP = new List<Salesforce_Project__c>{sp1, sp2};
        insert listSP;

        set<id> setSPId = new set<id>{sp1.Id, sp2.Id};

        Test.startTest();
        SalesforceProjectTriggerHandler.spUpdateDescription(setSPId);
        Test.stopTest();

        List<Salesforce_Project__c> allSP = [select id, description__c from Salesforce_Project__c];
        system.assert(allSP[0].Description__c.contains('future'));
   }
}
