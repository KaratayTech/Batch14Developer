@isTest 
public class DML_AssignTest {
    @isTest 
    private static void testInsertDML(){
        DML_Assign.insert_DML();
        list<Account> accList = [select id, name from account where Name like '%Buruk Assignment'];

        system.assertEquals(1, accList.size());
        system.assertEquals('Buruk Assignment', accList[0].Name);
    }

    @isTest 
    private static void testUpdateDML(){
        Account acc = new Account();
        acc.Name = 'Test Assingment';
        insert acc;

        DML_Assign.updating_DML();

        Account updateAcc = [select id, name from account where name like '%Account Updated'];
        system.assertEquals('Account Updated', updateAcc.Name);
        assert.areEqual('Account Updated', updateAcc.Name);
        
    }
}