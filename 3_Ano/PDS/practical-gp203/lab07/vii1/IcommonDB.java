package vii1;

public interface IcommonDB {
    void addNewEmployee(Employee employee);
    void removeEmployee(long id);
    boolean verifyEmployee(long id);
    Employee[] listAllEmployees();
}
