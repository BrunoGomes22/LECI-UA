package ix1.b;

class Employee {
    private Person person;
    private double salary;
    private BankAccount bankAccount;

    public Employee(Person person, double s) {
        this.person = person;
        salary = s;
        bankAccount = new BankAccountImpl("PeDeMeia", 0);
    }

    public double getSalary() {
        return bankAccount.balance();
    }

    public void depositSalary() {
        bankAccount.deposit(salary);
    }
    
    public Person getPerson() {
        return person;
    }
}