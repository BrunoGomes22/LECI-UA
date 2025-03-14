package ix1.b;
import java.util.*;

class Company {
    public static User user;
    private List<Employee> emps = new ArrayList<>();

    public void admitEmployee(Person person, double salary) {
        Employee e = new Employee(person, salary);
        emps.add(e);
    }

    public void paySalaries(int month) {
        for (Employee e : emps) {
            e.depositSalary();
        }
    }

    public List<Employee> employees() {
        return Collections.unmodifiableList(emps);
    }
}
