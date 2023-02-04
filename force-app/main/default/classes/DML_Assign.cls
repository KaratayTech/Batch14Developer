public class DML_Assign {
    public static void insert_DML(){
        Account acc1 = new Account();
        acc1.Name = 'Buruk Assignment';
        insert acc1;

    }

    public static void updating_DML(){
        Account acc2 = new Account();
        acc2.Name = 'Account Created';
        insert acc2;
        acc2.Name = 'Account Updated';
        update acc2;
    }

}