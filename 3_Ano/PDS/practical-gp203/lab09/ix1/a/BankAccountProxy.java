package ix1.a;

class BankAccountProxy implements BankAccount {
    private BankAccount bankAccount;
    private User user;

    BankAccountProxy(BankAccount bankAccount) {
        this.bankAccount = bankAccount;
        this.user = Company.user;
    }

    @Override
    public void deposit(double amount) {
        bankAccount.deposit(amount);
    }

    @Override
    public boolean withdraw(double amount) {
        if (user == User.OWNER) {
            return bankAccount.withdraw(amount);
        } else {
            throw new UnsupportedOperationException("Unauthorized operation");
        }
    }

    @Override
    public double balance() {
        if (user == User.OWNER) {
            return bankAccount.balance();
        } else {
            throw new UnsupportedOperationException("Unauthorized operation");
        }
    }
}