public class AccountStatusForContactAssginment {
    public static void catchForStatusOnContact(list<account> accTriggerNew, list<account> accTriggerOld, map<id, account> accTriggerNewMap, map<id, account> accTriggerOldMap){

        try{
          List<Contact> conList = new list<contact>();
          for(account eachAcc : accTriggerNew){
            contact cn =new contact();
            cn.lastname = 'Test for Catch';
            cn.AccountId = eachAcc.Id;
            conList.add(cn);
          }
          insert conList;
    
        }catch(Exception ex){
          for(account each : accTriggerNew){
            each.addError('An error occurred. Status field cannot be blank. Please contact administrator.');
          }
        }
      }
}