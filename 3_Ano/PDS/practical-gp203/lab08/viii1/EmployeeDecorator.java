package viii1;

public class EmployeeDecorator implements EmployeeInt{
    protected EmployeeInt wrappee;

    public EmployeeDecorator(EmployeeInt wrappee){
        this.wrappee = wrappee;
    }

    public void start(String data){
        System.out.printf("%s começou a trabalhar dia %s\n", wrappee.getName(), data);
    }

    public void terminate(String data){
        System.out.printf("%s terminou de trabalhar dia %s\n", wrappee.getName(), data);
    }

    public void work(){
        System.out.printf("%s está a trabalhar\n", wrappee.getName());
    }

    @Override
    public String getName(){
        return wrappee.getName();
    }

}
