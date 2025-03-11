public class Scalar extends Value{
    private int integerNum;
    private double doubleNum;

    public Scalar(int integerNum){
        setScalar(true);
        this.integerNum = integerNum;
        this.doubleNum = 0;
    }

    public Scalar(double doubleNum){
        setScalar(true);
        this.doubleNum = doubleNum;
        this.integerNum = 0;
    }

    public Scalar symmetricVector(){
        return null;
    }

    public double getDouble(){
        return this.doubleNum;
    }

    public int getInt(){
        return this.integerNum;
    }

    public Scalar sum(Value val){
        Scalar v1 = (Scalar) val;
        if(this.integerNum == 0){
            return new Scalar(this.doubleNum+v1.doubleNum);
        }
        else if(this.doubleNum == 0){
            return new Scalar(this.integerNum+v1.integerNum);
        }
        
        return null;
    }

    public Scalar sub(Value val){
        Scalar v1 = (Scalar) val;
        if(this.integerNum == 0){
            return new Scalar(this.doubleNum-v1.doubleNum);
        }
        else if(this.doubleNum == 0){
            return new Scalar(this.integerNum-v1.integerNum);
        }
        
        return null;
    }

    public Scalar multiply(Scalar s){
        if(s.getDouble() == 0){
            return new Scalar(integerNum*s.getInt());
        }
        else{
            return new Scalar(doubleNum*s.getDouble());
        }
    }

    @Override
    public String toString(){
        if(this.integerNum == 0){
            return String.format("%.1f", doubleNum);
        }
        else{
            return String.format("%d.0", integerNum);
        }
    }
}
