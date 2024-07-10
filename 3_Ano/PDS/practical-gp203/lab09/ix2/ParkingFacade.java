package ix2;

import java.util.List;

public class ParkingFacade {
    private Parking parking;
    private List<Employee> employees;
    private double avgSalary;

    public ParkingFacade(List<Employee> employees, double avgSalary) {
        this.parking = new Parking();
        this.employees = employees;
        this.avgSalary = avgSalary;
    }

    public String[] getEmployeesAllowedToPark() {
        return this.parking.allow(employees,avgSalary);     
    }
}
