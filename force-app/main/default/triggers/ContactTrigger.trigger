trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {

    //I want to print when we are in BEFORE
    if (Trigger.isBefore) {
        system.debug('We are in BEFORE. Not Saved');
        if (Trigger.isInsert) {
            system.debug('we are in before insert trigger.');
        } 
        if (Trigger.isUpdate) {
            system.debug('we are in before update trigger.');
        }
    }
    if (Trigger.isAfter) {
        system.debug('We are in AFTER. SBNC.');
        if (Trigger.isInsert) {
            system.debug('we are in after insert trigger.');
        } 
        if (Trigger.isUpdate) {
            system.debug('we are in after update trigger.');
        }
    }
}