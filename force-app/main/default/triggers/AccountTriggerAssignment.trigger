trigger AccountTriggerAssignment on Account (before insert,after insert, before update, after update) {

    system.debug('--------Trigger Start--------');

    if(Trigger.isBefore && Trigger.isInsert){
        system.debug('Here we are in BEFORE INSERT trigger');
        for(Account rec : Trigger.new){
            system.debug('Account Name : '+ rec.Name);
            system.debug('Rating : '+ rec.Rating);
            system.debug('Description : '+ rec.Description);
            system.debug('BillingCity : '+ rec.BillingCity);
        }
    }

    if(Trigger.isAfter && Trigger.isInsert){
        system.debug('Here we are in AFTER INSERT trigger');
        for(Account rec : Trigger.new){
            system.debug('Account Name : '+ rec.Name);
            system.debug('Rating : '+ rec.Rating);
            system.debug('Description : '+ rec.Description);
            system.debug('BillingCity : '+ rec.BillingCity);
        }
    }

    if(Trigger.isBefore && Trigger.isUpdate){
        system.debug('Here we are in BEFORE UPDATE trigger');
        for(Account rec : Trigger.new){
            system.debug('Account Name : '+ rec.Name);
            system.debug('Rating : '+ rec.Rating);
            system.debug('Description : '+ rec.Description);
            system.debug('BillingCity : '+ rec.BillingCity);
        }
    }

    if(Trigger.isAfter && Trigger.isUpdate){
        system.debug('Here we are in AFTER UPDATE trigger');
        for(Account rec : Trigger.new){
            system.debug('Account Name : '+ rec.Name);
            system.debug('Rating : '+ rec.Rating);
            system.debug('Description : '+ rec.Description);
            system.debug('BillingCity : '+ rec.BillingCity);
        }
    }

    system.debug('--------Trigger End--------');

}