package ix2;

import java.util.List;

public class EmpCardFacade {
    private EmpCard empCard;

    public EmpCardFacade(List<Employee> companyEmps){
        this.empCard = new EmpCard(companyEmps);
    }

    public String[] createEmpCards(){
        return this.empCard.createEmpCards(this.empCard.getEmps());
    }
}
