public class UpdateTicketHandler {
     //  1.Write trigger on Salesforce Project Object. 
     
     public static void newStatusUpdateBoth(List<Salesforce_Project__c> ProjectTriggerNew, List<Salesforce_Project__c> ProjectOldTrigger, Map<Id,Salesforce_Project__c> ProjectNewTriggerMap,Map<id, Salesforce_Project__c> ProjectOldTriggerMap ){
        List<Salesforce_Ticket__c> ticketsToUpdate = new List<Salesforce_Ticket__c>();
        
        //  2.When Salesforce Project status is completed then  
        //  query all salesforce  tickets which is not completed(status). 
          for (Salesforce_Project__c project : ProjectTriggerNew) {
              if (project.Status__c == 'Completed' && ProjectOldTriggerMap.get(project.Id).Status__c != 'Completed') {
                  ticketsToUpdate.addAll([SELECT Id, Status__c FROM Salesforce_Ticket__c WHERE Salesforce_Project__c = :project.Id AND Status__c != 'Completed'
                  ]);
              }
          }
          //  3.Make Salesforce Ticket status completed
          if (!ticketsToUpdate.isEmpty()) {
              for (Salesforce_Ticket__c eachTicket : ticketsToUpdate) {
                  eachTicket.Status__c = 'Completed';
              }
              update ticketsToUpdate;
          }
        }   
}