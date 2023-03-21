public class StatusTickectInvoke {
    @invocableMethod
    public static void newStatusUpdateBoth(List<Id> spProjectId){
        List<Salesforce_Ticket__c> ticketsToUpdate = new List<Salesforce_Ticket__c>();
        List<Salesforce_Ticket__c> ticketQuery= [SELECT Id, Status__c FROM Salesforce_Ticket__c WHERE Salesforce_Project__c =:spProjectId AND Status__c != 'Completed'];

        for (Salesforce_Ticket__c eachTicket : ticketQuery) {
            eachTicket.Status__c = 'Completed';
            ticketsToUpdate.add(eachTicket);
        }
          if (!ticketsToUpdate.isEmpty()) { 
              update ticketsToUpdate;
          }
        
    }  
}
