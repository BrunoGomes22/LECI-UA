package classes;
public class RealType extends SetLangType{
    private double value;

    public RealType(double value){
        this.value = value;
    }

    public double getValue(){
        return value;
    }

    @Override
    public String getTypeName(){
        return "real";
    }

    @Override
    public String toString(){
        return Double.toString(value);
    }
}