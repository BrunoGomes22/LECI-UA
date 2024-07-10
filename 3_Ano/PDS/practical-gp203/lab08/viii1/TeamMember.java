package viii1;

public class TeamMember extends EmployeeDecorator{
    public TeamMember(EmployeeInt wrappee){
        super(wrappee);
    }

    public void colaborate(){
        System.out.printf("%s is now a Team Member\n", wrappee.getName());
    }
}
