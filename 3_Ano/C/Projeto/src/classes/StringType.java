package classes;

public class StringType extends SetLangType {
    private String value;

    public StringType(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }

    @Override
    public String getTypeName() {
        return "text";
    }

    @Override
    public String toString() {
        return value;
    }
}