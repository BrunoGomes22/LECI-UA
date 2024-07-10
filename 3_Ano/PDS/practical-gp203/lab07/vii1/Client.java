package vii1;

public class Client {
    public static void main(String[] args) {
        Database sweetsDB = new Database();
        Registos registos = new Registos();

        SweetsDatabaseAdapter sweetsAdapter = new SweetsDatabaseAdapter(sweetsDB);
        PetiscosRegistosAdapter petiscosAdapter = new PetiscosRegistosAdapter(registos);

        Employee employee1 = new Employee("Maria Fernanda", 123456789L, 50000.0);
        Employee employee2 = new Employee("Rui Costa", 987654321L, 60000.0);

        sweetsAdapter.addNewEmployee(employee1);
        petiscosAdapter.addNewEmployee(employee2);

        boolean exists = sweetsAdapter.verifyEmployee(employee1.getEmpNum());
        System.out.println("Employee 1 exists in SweetsDB: " + exists);

        exists = petiscosAdapter.verifyEmployee(employee2.getEmpNum());
        System.out.println("Employee 2 exists in PetiscosRegistos: " + exists);

        sweetsAdapter.removeEmployee(employee1.getEmpNum());
        petiscosAdapter.removeEmployee(employee2.getEmpNum());

        exists = sweetsAdapter.verifyEmployee(employee1.getEmpNum());
        System.out.println("Employee 1 exists in SweetsDB: " + exists);

        exists = petiscosAdapter.verifyEmployee(employee2.getEmpNum());
        System.out.println("Employee 2 exists in PetiscosRegistos: " + exists);
    }
}
