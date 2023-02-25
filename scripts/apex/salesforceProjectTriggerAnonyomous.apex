List<Salesforce_Project__c> listSP = new list<Salesforce_Project__c>();

Salesforce_Project__c sp = new Salesforce_Project__c();
sp.Project_Name__c = 'Learn Trigger';
sp.Description__c = 'Learn Trigger batch14';
sp.Status__c = 'New';

listSP.add(sp);

Salesforce_Project__c sp2 = new Salesforce_Project__c();
sp2.Project_Name__c = 'Learn Trigger adv';
sp.Description__c = 'Learn Trigger adv batch14';
sp.Status__c = 'New';

listSP.add(sp2);
insert listSP;