map<string, string> mapCountryCurrency = new map<string,string>();
mapCountryCurrency.put('USA', 'Dollar');
mapCountryCurrency.put('France', 'Euro');
mapCountryCurrency.put('Poland', 'Euro');
mapCountryCurrency.put('India', 'Rupees');
mapCountryCurrency.put('India', 'Rupee');//This will be printed because the one before this will be updated.
mapCountryCurrency.put('Turkiye', 'Lira');
mapCountryCurrency.put('El Salvador', 'Bitcoin');
system.debug('map of country and its currency ==> '+mapCountryCurrency);

// get value using KEY from a map
string indiaCurrency = mapCountryCurrency.get('India');
string turkiyeCurrency = mapCountryCurrency.get('Turkiye');
system.debug('India currency is ==>' +indiaCurrency);
system.debug('Turkiye currency is ==>' +turkiyeCurrency);

// get all keys using keyset method
set<string> countrySet = mapCountryCurrency.keySet();
system.debug('countries are '+countrySet);

list<string> currencies = mapCountryCurrency.values();
system.debug('currencies are '+ currencies);


// for each loop of map start here
Set<String> countries = mapCountryCurrency.keySet();

// for each loop on country set

for(string eachKey : countrySet){
    // eachKey => USA (1)
    // eachKey => France (2)
    string printString = 'Country is ' + eachKey;
    // value of key from a map
    // get currency of key USA
    // mapCountryCurrency.get('USA'); ==>Dollar
    // mapCountryCurrency.get('France'); ==>Euro
    string eachValue = mapCountryCurrency.get(eachKey);
    printString += ', its currency is ' + eachValue;
    system.debug(printString);
}


