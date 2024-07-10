package ix2;

import java.util.List;

public class EmpCard {
    private List<Employee> emps;

    public EmpCard(List<Employee> companyEmps){
        this.emps = companyEmps;
    }

    public String[] createEmpCards(List<Employee> emps){
        String[] cards = new String[emps.size()];
        for(int i = 0; i<emps.size(); i++){
            cards[i] = "[Nome:" + emps.get(i).getName() + "; Salário:" + emps.get(i).getSalary() + "]\n";
        }
        return cards;
    }

    public List<Employee> getEmps(){
        return this.emps;
    }
    

}
