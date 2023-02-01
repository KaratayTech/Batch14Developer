public class Greetings {
   public string language;
   public string greetingHello(){
    string greet;
    if (language == 'Hindi') {
        greet = 'Namaste';
    }else if (language == 'Turkish') {
        greet = 'Merhaba';
    } else if (language == 'Russian'){
        greet = 'Privet';
    }else {
        greet = 'Hellooooo!!!';
    }
    return greet;
   }


//    public string greetingHello2(){
//     string greet;
//     switch on language {
//         when 'Hindi' {
//             greet = 'Namaste Namaste';
//         }
//         when 'Turkish'{
//             greet ='Merhaba Merhaba';
//         }
//         when 'Russian'{
//             greet ='Privet Privet';    
//         }
//         when else {
//             greet = 'Hello Hello';
//         }
//     }
//     return greet;
//    }



   public string greetingHello(integer n){
    // if (language == 'Hindi') {
    //     greet = 'Namaste';
    // }else if (language == 'Turkish') {
    //     greet = 'Merhaba';
    // } else if (language == 'Russian'){
    //     greet = 'Privet';
    // }else {
    //     greet = 'Hellooooo!!!';
    // }
    // Bu asagidaki gibi methodu kopyalayip yapistirabliriz sadece adini cagirmamiz yeterli, cunku method public.
    // Bu bize methoda baska method icerisinden rahatca ulasabilmemize yardimci oluyor.
    string greet = greetingHello();

    string finalreturnString = greet;
    for(integer i =0; i< n; i++){
        finalreturnString = finalreturnString + ' ' + greet;

    }
    return finalreturnString;
   }



 


}