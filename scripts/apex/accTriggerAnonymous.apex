   list<account> listAccount = new list<account>();
        account acc1 = new account();
        acc1.Name = 'trg acc1';
        acc1.ShippingCity = 'New York';
        acc1.Active__c = 'No';
        listAccount.add(acc1);

        account acc2 = new account();
        acc2.Name = 'trg acc2';
        acc2.ShippingCity = 'New York';
        acc2.Active__c = 'No';
        listAccount.add(acc2);

        account acc3 = new account();
        acc3.Name = 'trg acc3';
        acc3.ShippingCity = 'New York';
        acc3.Active__c = 'No';
        listAccount.add(acc3);
        // insert the list
        insert listAccount;


        // do not do this ever again...Teacher showed this as an error to warn us not to do this...
        // for (integer i =0; i<15; i++){
        //     account a = new account();
        //     a.Name = 'softinnovas '+ i;
        //     insert a;
        // }