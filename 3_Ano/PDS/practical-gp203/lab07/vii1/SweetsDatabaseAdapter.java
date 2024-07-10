package vii1;

public class SweetsDatabaseAdapter implements IcommonDB{
    private Database sweetsDB;

    public SweetsDatabaseAdapter(Database db){
        this.sweetsDB = db;
    }

    @Override
    public void addNewEmployee(Employee employee){
        sweetsDB.addEmployee(employee);
    }

    @Override
    public void removeEmployee(long id){
        sweetsDB.deleteEmployee(id);
    }

    @Override
    public boolean verifyEmployee(long id){
        for(Employee employee : sweetsDB.getAllEmployees()){
            if(employee.getEmpNum() == id){
                return true;
            }
        }
        return false;
    }

    @Override
    public Employee[] listAllEmployees(){
        return sweetsDB.getAllEmployees();
    }

}
