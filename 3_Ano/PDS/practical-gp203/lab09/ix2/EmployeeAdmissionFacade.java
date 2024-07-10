package ix2;

public class EmployeeAdmissionFacade {
    private Company company;
    private SocialSecurity socialSecurity;
    private Insurance insurance;

    public EmployeeAdmissionFacade(Company company, SocialSecurity socialSecurity, Insurance insurance){
        this.company = company;
        this.socialSecurity = socialSecurity;
        this.insurance = insurance;
    }

    public void admitEmployee(Person person, double salary){
        company.admitPerson(person.getName(), salary);
        socialSecurity.regist(person);
        insurance.regist(person);
    }

}
