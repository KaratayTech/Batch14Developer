public class SOQL_Assignment {
    public static void soql_WhereClause(){
        List<Contact> lstContact = [select id, LastName from Contact where LastName like '%A%'];
        system.debug(lstContact);
        
        system.debug('============this one ends================');

    }

    public static void sqol_ForMethod(){
        List<Contact> lstContact = [select LastName, Phone from Contact ];
        system.debug(lstContact);

        for(Contact eachContact : lstContact){
            string cntLastN = eachContact.LastName;
            string cntPhone = eachContact.Phone;
            system.debug('The contact\'s last name is ' + cntLastN + ', and phone number is ' + cntPhone);

        }

    }
}