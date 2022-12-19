public class SalesforceProjectTriggerHandler {
    public static void createDefaultTicket(List<salesforce_project__c> spTriggerNew) {
        List<Salesforce_Ticket__c>  listST = new List<Salesforce_Ticket__c>();

        for (salesforce_project__c eachSP : spTriggerNew) {
            Salesforce_Ticket__c newST = new Salesforce_Ticket__c();
            newST.Subject__c = 'Default ticket';
            newST.Salesforce_Project__c = eachSP.Id;
            listST.add(newST);
        }
        if (!listST.isEmpty()) {
            insert listST;
        }
    }

    public static void completeSPvalidation(List<salesforce_project__c> spTriggerNew, List<salesforce_project__c> spTriggerOld, 
    Map<id,salesforce_project__c> spTriggerNewMap, Map<id,salesforce_project__c> spTriggerOldMap) {
        
        set<id> spCompletedIds = new set<id>();
        for (salesforce_project__c eachSP : spTriggerNew) {
            if (eachSP.Status__c == 'Completed' && eachSP.Status__c != SpTriggerOldMap.get(eachSP.id).Status__c) {
                spCompletedIds.add(eachSP.Id);
            }
        }

        //get all tickets which are not compelted.
        List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c
                                            where Salesforce_Project__c in :spCompletedIds
                                            and status__c != 'Completed'];
        for (salesforce_ticket__c eachST : listST) {
            Salesforce_Project__c spNew = spTriggerNewMap.get(eachST.Salesforce_Project__c);
            spNew.addError(
                'Cannot complete project because all tickets are not completed. Go away.'
            );
        }
    }
}
