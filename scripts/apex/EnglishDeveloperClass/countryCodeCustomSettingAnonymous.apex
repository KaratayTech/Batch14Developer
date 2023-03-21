// list type custom setting
map<string, Country_code__c> countryCodes = Country_code__c.getAll();
system.debug('countryCode map '+ countryCodes);

// print --> country is United States, its code is USA.
for(string eachName : countryCodes.keyset()){
    Country_code__c eachRecord = countryCodes.get(eachName);
    system.debug('country is '+ eachName + ', its code is '+ eachrecord.code__c);
}

// if we want to get JUST one value directly
country_code__c ccIndia = country_code__c.getInstance('India');
system.debug(ccIndia);
system.debug('ccIndia code '+ ccIndia.code__c);