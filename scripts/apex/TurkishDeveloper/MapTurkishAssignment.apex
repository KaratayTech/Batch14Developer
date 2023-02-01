map<integer, string> platesOfCities = new map<integer, string>();
platesOfCities.put(34,'Istanbul');
platesOfCities.put(16,'Bursa');
platesOfCities.put(35,'Izmir');
platesOfCities.put(42,'Konya');
platesOfCities.put(27,'Gaziantep');

system.debug(platesOfCities);

system.debug('Let\'s see if our map includes 34(Istanbul) ==> '+platesOfCities.containsKey(34));
system.debug('Let\'s see if our map includes 61(Trabzon) ==> '+platesOfCities.containsKey(61));

platesOfCities.remove(16);
system.debug(platesOfCities);

set<integer> plateSet = platesOfCities.keySet();
system.debug(plateSet);

list<string> cityList = platesOfCities.values();
system.debug(cityList);

for(integer eachKey : plateSet){
    string newSet = eachKey + ' plate numbered ';
    string eachCity = platesOfCities.get(eachKey);
    newSet += ', city is ' + eachCity;
    system.debug(newSet);
}

