package viii1;

public class Client {
    public static void main(String[] args){
        Employee e1 = new Employee("José Felgueiras");
        e1.start("16-04-2024");
        e1.work();
       
        TeamMember e2 = new TeamMember(e1);
        e2.colaborate();

        TeamLeader e3 = new TeamLeader(e2);
        e3.plan();

        Manager e4 = new Manager(e3);
        e4.manage();

        e1.terminate("20-04-2024");
    }
}
