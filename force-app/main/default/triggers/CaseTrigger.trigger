trigger CaseTrigger on Case (before update) {
    if (trigger.isUpdate) {
        system.debug('before update trigger called');
        CaseTriggerHandler.countTriggerExecution++;
        system.debug('# of times trigger ran: ' + CaseTriggerHandler.countTriggerExecution);
        integer size = trigger.size;
        CaseTriggerHandler.countTriggerRecords += size;
        system.debug('# of records updated => ' + CaseTriggerHandler.countTriggerRecords);
    }
   
}