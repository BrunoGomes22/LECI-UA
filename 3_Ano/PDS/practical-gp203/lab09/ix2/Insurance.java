package ix2;

import java.util.ArrayList;
import java.util.List;

public class Insurance {
    private List<Person> InsuranceReg;

    public Insurance(){
        this.InsuranceReg = new ArrayList<Person>();
    }
    
    public void regist(Person person){
        InsuranceReg.add(person);
    }
}
