trigger AccountTrigger on Account (before insert, before update) {
    //before insert
    system.debug('account before INSERT trigger called.'); //when will this code run?
    system.debug('account before UPDATE trigger called.');



    /*
    if (Trigger.isBefore) {
        system.debug('account before insert trigger called.');
    }
    if (Trigger.isAfter) {
        system.debug('account after insert trigger called');
    }
    */
    
}