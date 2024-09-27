package classes;
public class IntegerType extends SetLangType{
    private int value;

    public IntegerType(int value){
        this.value = value;
    }

    public int getValue(){
        return value;
    }

    @Override
    public String getTypeName(){
        return "integer";
    }

    @Override
    public String toString(){
        return Integer.toString(value);
    }
}