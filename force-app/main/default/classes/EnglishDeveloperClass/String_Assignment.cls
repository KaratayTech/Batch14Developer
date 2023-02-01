public class String_Assignment {
    public void assignmentSession(){
        String localString = 'Thanks for the session on the string';
        Integer localLength = localString.length();
        system.debug('localString variable\'s length is ' + localLength);

        String localCapital = localString.toUpperCase();
        system.debug('localString to upper case ==> ' + localCapital);

        Boolean checkLocal = localString.contains('session');
        system.debug('localString contains session?? ' + checkLocal);

        Boolean checkLocal2 = localString.contains('sessions');
        system.debug('localString contains sessions?? ' + checkLocal2);

        Boolean checkLocal3 = localString.contains('SESSION');
        system.debug('localString contains SESSION?? ' + checkLocal3);

    }
}