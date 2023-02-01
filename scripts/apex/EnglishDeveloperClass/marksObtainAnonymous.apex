map<string, integer> marksObtainInMaths = new map<string,integer>();
// In the first submission, I din't know that we were supposed to use these in assingment so I fixed it.
marksObtainInMaths.put('0111CE112',40);
marksObtainInMaths.put('0111CE102',19);
marksObtainInMaths.put('0111CE100',33);
marksObtainInMaths.put('0111CE098',40);
system.debug('Students with their marks obtained ==> '+marksObtainInMaths);


marksObtainInMaths.put('011CE114',49);
marksObtainInMaths.put('011CE115',35);
marksObtainInMaths.put('011CE116',19);
marksObtainInMaths.put('011CE117',36);
marksObtainInMaths.put('011CE118',46);
marksObtainInMaths.put('011CE119',13);
marksObtainInMaths.put('011CE120',27);
system.debug('New added students with their marks obtained ==> '+marksObtainInMaths);



set<string> studentRollNum = marksObtainInMaths.keySet();
system.debug('All students with their enrolled numbers ==> ' + studentRollNum);
list<integer> studentObtainedMarks = marksObtainInMaths.values();
system.debug('All enrolled students\' marks obtained ==> ' +studentObtainedMarks);

set<string> uniqueRollNumberSet = new set< string >(studentRollNum);
system.debug(uniqueRollNumberSet);

list<integer>marksObtainList = new list<integer>(studentObtainedMarks);
system.debug(marksObtainList);


for(string eachKey : uniqueRollNumberSet){
    string newSet = 'Student is ' + eachKey;
     if(marksObtainInMaths.get(eachKey)< 20){
        system.debug(eachKey +' is not qualified for next class because thier mark is ' +marksObtainInMaths.get(eachKey));
    }else{
        integer eachMarks = marksObtainInMaths.get(eachKey);
        system.debug(newSet + ', thier obtained mark is '+eachMarks);
}
    }

    










