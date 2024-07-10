package vii1;

import java.util.List;

public class PetiscosRegistosAdapter implements IcommonDB {
    private Registos petiscosRegistos;

    public PetiscosRegistosAdapter(Registos registos) {
        this.petiscosRegistos = registos;
    }

    @Override
    public void addNewEmployee(Employee employee) {
        int id = (int) employee.getEmpNum();
        String defaultApelido = ""; 
        Empregado empregado = new Empregado(employee.getName(), defaultApelido, id, employee.getSalary());
        petiscosRegistos.insere(empregado);
    }

    @Override
    public void removeEmployee(long id) {
        int newid = (int) id;
        petiscosRegistos.remove(newid);
    }

    @Override
    public boolean verifyEmployee(long id) {
        for (Empregado empregado : petiscosRegistos.listaDeEmpregados()) {
            if (empregado.codigo() == id) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Employee[] listAllEmployees() {
        List<Empregado> empregados = petiscosRegistos.listaDeEmpregados();
        Employee[] employees = new Employee[empregados.size()];
        for (int i = 0; i < empregados.size(); i++) {
            Empregado empregado = empregados.get(i);
            employees[i] = new Employee(empregado.nome() + empregado.apelido(), empregado.codigo(), empregado.salario());
        }
        return employees;
    }
}
