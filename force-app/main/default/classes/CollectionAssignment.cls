public class CollectionAssignment {

   public set<string> countriesSet = new set<string>{'India', 'USA', 'Russia', 'Germany', 'Singapore', 'Japan'};

   public void printLowerCase(){
    set<string> lowerCaseSet = new set<string>();
    for(string eachCountries : countriesSet) {
        string newSet = eachCountries.toLowerCase();
        lowerCaseSet.add(newSet);
    }
     system.debug(lowerCaseSet);
   }

   public void printUpperCase(){
    set<string> upperCaseSet = new set<string>();
    for(string eachOf : countriesSet){
        string newSet2 = eachOf.toUpperCase();
        upperCaseSet.add(newSet2);
    }
    system.debug(upperCaseSet);
   }

}