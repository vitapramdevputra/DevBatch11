trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert) {
    if (Trigger.isAfter && Trigger.isInsert) {
         //call trigger handler to CREATE salesforce ticket.
         SalesforceProjectTriggerHandler.createDefaultTicket(Trigger.New);
    }
   
}