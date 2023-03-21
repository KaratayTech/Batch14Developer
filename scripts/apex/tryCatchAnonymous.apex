try {
    account a = new account();
    insert a;
}catch (DmlException dmlex){ // if it's specific exception then it should be on the top
    system.debug('dml went wrong buddy');
    system.debug('dml ex message '+dmlex.getDmlMessage(0));
    system.debug('ex message '+ dmlex.getMessage());
    // send email to admin and devs
    // log in error object
} catch (Exception ex){
    system.debug('something went wrong');
    system.debug('ex message '+ ex.getMessage());
    // log in error object
} 

system.debug('Apex is SIMPLE');