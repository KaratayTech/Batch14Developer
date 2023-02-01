public class Cat {
   
    public string name;
    public string color;
    public string gender;
    
// paramaterless constructor
// constructor names is same as class name
// does not return anything
    public Cat() {
        system.debug('cat constructor called. okay?');
    }

    // parameterized constructor
    public Cat(string n, string clr, string gn){
        name = n;
        color = clr;
        gender = gn;
        sleeping();
    }

    public Cat(string n){
        name = n;
    }

    public void sleeping(){
        system.debug(name + ' is sleeping');
    }

}