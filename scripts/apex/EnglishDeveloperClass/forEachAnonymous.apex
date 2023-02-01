list<string> listStr = new list<string>();
listStr.add('out of bound');
listStr.add('yes');
listStr.add('alright');
listStr.add('yes sir');
listStr.add('🙌');

// || out of bound || yes || alright 
string concateStr = '';

// for each lopp
// left: create or define a new variable to be used inside the for loop
// right: we use list variable name
for(string eachStr: listStr){
    concateStr += ' ||' + eachStr;
}

system.debug(concateStr);