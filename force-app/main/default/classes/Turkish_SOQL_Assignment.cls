public class Turkish_SOQL_Assignment {
    public static void findEducation(){
        List<Account> listAccount = [select id, name, industry from account where industry = 'Education'];
        system.debug(listAccount);
    }
}