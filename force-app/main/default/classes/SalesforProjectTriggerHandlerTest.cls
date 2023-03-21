@isTest 
public class SalesforProjectTriggerHandlerTest {
    @isTest 
    public static void testFutureMethod1(){
        // prepare the data
        Salesforce_Project__c sp1 = new Salesforce_Project__c();
        sp1.Project_Name__c = 'learn test';
        sp1.Description__c = 'learn dml batch14';
        sp1.Status__c = 'New';

        Salesforce_Project__c sp2 = new Salesforce_Project__c();
        sp2.Project_Name__c = 'learn test';
        sp2.Description__c = 'learn dml batch14';
        sp2.Status__c = 'New';

        List<Salesforce_Project__c> listSP = new List<Salesforce_Project__c>{sp1, sp2};
        insert listSP;

        set<id> spIds = new set<id>{sp1.id, sp2.id};

        Test.startTest();
        // call future method
        SalesforceProjectTriggerHandler.updateProjectDescription(spIds);
        Test.stopTest();

        // assert
        List<Salesforce_Project__c> allSP = [select id, description__c from Salesforce_Project__c ];
        for(Salesforce_Project__c s : allSP){
            assert.isTrue(s.Description__c.contains('future'));
        }
    }
    
}