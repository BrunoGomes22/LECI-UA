package vii1;

public class Ex1 {
    public static void main(String[] args){
        // Registos Testing
        System.out.println("<----------------------------------Registos Testing---------------------------------->");
        Registos compReg = new Registos();
        Empregado empregado1 = new Empregado("Bruno", "Gomes", 1007, 500);
        Empregado empregado2 = new Empregado("José", "Gomes", 1008, 1500);
        Empregado empregado3 = new Empregado("Frederico", "Varandas", 1009, 1700);
        Empregado empregado4 = new Empregado("Paulo", "Bento", 1010, 1800);

        compReg.insere(empregado1);
        compReg.insere(empregado2);
        compReg.insere(empregado3);
        compReg.insere(empregado4);

        System.out.println(compReg.listaDeEmpregados());

        compReg.remove(1009);
        compReg.remove(1008);
        compReg.remove(1007);

        System.out.println(compReg.listaDeEmpregados());
        System.out.println(compReg.isEmpregado(1007));
        System.out.println(compReg.isEmpregado(1000));
        System.out.println(compReg.isEmpregado(1010));

        //Database Testing
        System.out.println("<----------------------------------Database Testing---------------------------------->");
        Database db = new Database();

        Employee e1 = new Employee("Francisco Paiva", 4005, 2100);
        Employee e2 = new Employee("António Morgado", 5001, 1100);
        Employee e3 = new Employee("João Marques", 4000, 800);
        Employee e4 = new Employee("Sebastião Bugalho", 2300, 4100);

        db.addEmployee(e1);
        db.addEmployee(e2);
        db.addEmployee(e3);
        db.addEmployee(e4);

        Employee[] employees = db.getAllEmployees();
        for(Employee employee : employees){
            System.out.println(employee);
        }

        db.deleteEmployee(4000);

        System.out.println("Remove employee number 4000.");
        Employee[] employees1 = db.getAllEmployees();
        for(Employee employee : employees1){
            System.out.println(employee);
        }


    }
}
