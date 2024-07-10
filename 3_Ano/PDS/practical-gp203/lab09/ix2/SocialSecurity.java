package ix2;

import java.util.ArrayList;
import java.util.List;

public class SocialSecurity {
    private List<Person> socialSecReg;

    public SocialSecurity(){
        this.socialSecReg = new ArrayList<Person>();
    }
    
    public void regist(Person person){
        socialSecReg.add(person);
    }
}
