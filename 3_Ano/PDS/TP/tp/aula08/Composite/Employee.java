package aula08;

public class Employee implements CompanyComponent{
    private String name;

    public Employee(String name) {
        this.name = name;
    }

    @Override
    public void showDetails() {
        System.out.println("Employee: " + name);
    }
}
