package classes;

public class BooleanType extends SetLangType {
    private boolean value;

    public BooleanType(boolean value) {
        this.value = value;
    }

    public boolean getValue() {
        return value;
    }

    @Override
    public String getTypeName() {
        return "boolean";
    }

    @Override
    public String toString() {
        return Boolean.toString(value);
    }
}
