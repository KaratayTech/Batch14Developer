public class Collections {
    public static string listAssignment(integer i) {
        List<string> lstMonth = new List<string>();
        string output_month;
        lstMonth.add('January');
        lstMonth.add('February');
        lstMonth.add('March');
        lstMonth.add('April');
        lstMonth.add('May');
        lstMonth.add('June');
        lstMonth.add('July');
        lstMonth.add('August');
        lstMonth.add('September');
        lstMonth.add('October');
        lstMonth.add('November');
        lstMonth.add('December');

        if (i>=0 && i< lstMonth.size()) {
            output_month = lstMonth[i-1];
        }else{
            output_month = 'This is not a valid month, try again...';
        }
        return output_month;
    }
    }
    
    
    
    
