package viii1;

public class Manager extends EmployeeDecorator{
    public Manager(EmployeeInt wrappee){
        super(wrappee);
    }

    public void manage(){
        System.out.printf("%s is now a manager\n", wrappee.getName());
    }

}
