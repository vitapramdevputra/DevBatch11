try{
    Account ac = new account();
    insert ac; //error. so it goes back from this line.
} catch(exception ex){
    system.debug('something went wrong buddy');
    system.debug('ex -> ' + ex.getMessage());
    system.debug('ex line nmber : ' + ex.getLineNumber());
}


system.debug('Apex is SIMPLE');