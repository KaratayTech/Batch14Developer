public class SetDemo {
    public static void countrySet(){
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('Tokyo');
        cities.add('BERLIN');//This will print because apex is string case 
                            // sensitive
        cities.add('Nairobi');//this Nairobi won't be printed because sets 
                             // won't allow you to add same element more 
                            // than once.

        system.debug('city set: '+cities);

    }

    public static void randomIntegerSet() {
        set<integer> intSet = new set<integer>();
        intSet.add(10);
        intSet.add(15);
        intSet.add(21);
        intSet.add(15);//As you see it won't add this 15 more than once.
        intSet.add(15);//As you see it won't add this 15 more than once.
        intSet.add(15);//As you see it won't add this 15 more than once.
        system.debug('set of integer '+intSet);

    }

    // create a method, which accepts a list<integer>
    // we will return set<integer>
    // list might habe duplicate values.
    // when we return set<integer> duplicates will be removed

    public static set<integer> setFromList(list<integer> listInt) {
        // create empty set to add all the elements of list
        set<integer> returnSet = new set<integer>();
        // use . addAll(list_or_set) method to add all the elements from 
        // list to set
        returnSet.addAll(listInt);
        return returnSet;

    }

    // we will create a method to convert set to uppercase
    // our method will accept set<string>
    // return set<string> by converting each element to upperCse

    public static set<string> upperCaseSet(set<string> setStr){
        // prepare emty set in which we will add uppercase strings
        set<string> upperSet = new set<string>();
        // for each loop of set
        for(string eachStr : setStr){
            string tempStr = eachStr.toUpperCase();
            upperSet.add(tempStr);
        }

        return upperSet;

    }
}