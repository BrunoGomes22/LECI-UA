package Strategy;

public class DivideOperation implements Operation {
    @Override
    public int performOperation(int num1, int num2) {
        if (num2 != 0) {
            return num1 / num2;
        } else {
            throw new IllegalArgumentException("Division by zero is not allowed.");
        }
    }
}