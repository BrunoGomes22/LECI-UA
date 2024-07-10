package viii1;

public class TeamLeader extends EmployeeDecorator{
    public TeamLeader(EmployeeInt wrappee){
        super(wrappee);
    }

    public void plan(){
        System.out.printf("%s is now a Team Leader\n", wrappee.getName());
    }

}
