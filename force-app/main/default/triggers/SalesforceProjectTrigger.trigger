trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {
    if (Trigger.isAfter && Trigger.isInsert) {
         //call trigger handler to CREATE salesforce ticket.
         SalesforceProjectTriggerHandler.createDefaultTicket(Trigger.New);

         //call future method,
         system.debug('calling future method NOW.');
         Map<id, Salesforce_Project__c> spNewMap = trigger.newMap;
         SalesforceProjectTriggerHandler.spUpdateDescription(spNewMap.keySet());
         //we cannot know if future method ran successfully or not, because we don't have job id.
         system.debug('called future method. DONE.');

    }
    if (Trigger.isBefore && trigger.isUpdate) {
        //call validation method here.
        //SalesforceProjectTriggerHandler.completeSPvalidation(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        //a
        SalesforceProjectTriggerHandler.spStatusCompleted(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
   
}