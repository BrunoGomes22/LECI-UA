package ix2;

public class Test {
    public static void main(String[] args){
        Company Habiclima = new Company();
        SocialSecurity socialSecurity = new SocialSecurity();
        Insurance Fidelidade = new Insurance();

        Person p1 = new Person("José Figueiredo");
        Person p2 = new Person("Bruno Gomes");
        Person p3 = new Person("Paulo Martins");
        Person p4 = new Person("Ivo Silva");
        Person p5 = new Person("Bernardino Marques");
        Person p6 = new Person("Carlos Gomes");

        EmployeeAdmissionFacade eaf = new EmployeeAdmissionFacade(Habiclima, socialSecurity, Fidelidade);
        eaf.admitEmployee(p1, 1500);
        eaf.admitEmployee(p2, 1000);
        eaf.admitEmployee(p3, 1250);
        eaf.admitEmployee(p4, 2000);
        eaf.admitEmployee(p5, 4000);
        eaf.admitEmployee(p6, 6000);

        EmpCardFacade cards = new EmpCardFacade(Habiclima.employees());
        String[] empCards = cards.createEmpCards();

        System.out.println("<-----------Employees Cards----------->"); //show the card of each employee
        for (String card : empCards) {
            System.out.print(card);
        }

        ParkingFacade pf = new ParkingFacade(Habiclima.employees(), Habiclima.getAvgSalary());
        String[] parkingPerms = pf.getEmployeesAllowedToPark();

        System.out.println("<-----------Parking permissions----------->");
        for(String p : parkingPerms){
            System.out.print(p);
        }
    }
}
