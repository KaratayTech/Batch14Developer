string firstVariable = 'this is our first string variable';
system.debug(firstVariable);


// Be careful when you define number or string, because if you mean to define number, then you cannot use string in the beginning. But if you mean to define string then definetely use '' and out values in it.
string xy = '49';
system.debug(xy);

string again = 'false';
system.debug(again);

string firstName = 'Buruk';
string lastName = 'Karatay';
string fullName = firstName + ' ' + lastName;
system.debug(fullName);

// in this example it will show as a 'null' , because we didn't define anything. We just declared the string.
string declareString;
system.debug(declareString);


// in this example we defined string too, so it will show the output.
string defineString = 'this is a string';
system.debug(defineString);