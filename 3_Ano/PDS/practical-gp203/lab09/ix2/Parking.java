package ix2;

import java.util.List;

public class Parking {
    public String[] allow(List<Employee> employees, double avgSalary){
        String[] parkingPerms = new String[employees.size()];
        for(int i = 0; i<employees.size();i++){
            if(employees.get(i).getSalary() > avgSalary){
                parkingPerms[i] = "[" + employees.get(i).getName() + " IS allowed to park]\n";
            }
            else{
                parkingPerms[i] = "[" + employees.get(i).getName() + " IS NOT allowed to park]\n";
            }
        }
        return parkingPerms;
    }
}
