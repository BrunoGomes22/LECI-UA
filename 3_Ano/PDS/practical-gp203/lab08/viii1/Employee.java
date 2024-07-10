package viii1;

public class Employee implements EmployeeInt{
    private String name;

    public Employee(String name){
        this.name = name;
    }

    public void start(String data){
        System.out.printf("%s começou a trabalhar dia %s\n", this.name, data);
    }

    public void terminate(String data){
        System.out.printf("%s terminou de trabalhar dia %s\n", this.name, data);
    }

    public void work(){
        System.out.printf("%s está a trabalhar\n", this.name);
    }

    public String getName(){
        return this.name;
    }
}
