public abstract class Value {
    private boolean isVector;
    private boolean isScalar;

    public abstract Value symmetricVector();

    public abstract Value sum(Value valToAdd);

    public abstract Value sub(Value valToSub);

    public boolean isScalar(){
        return isScalar;
    }

    public boolean isVector(){
        return isVector;
    }

    public void setVector(boolean isVector){
        this.isVector = isVector;
    }

    public void setScalar(boolean isScalar){
        this.isScalar = isScalar;
    }
}
