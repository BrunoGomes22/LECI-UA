public class Fraction{
    private int num;
    private int den;

    public Fraction(int num, int den){
        this.num = num;
        this.den = den;
    }

    public Fraction(int num){
        this.num = num;
        this.den = 1;
    }

    public int getNum(){
        return this.num;
    }

    public int getDen(){
        return this.den;
    }

    public void setNum(int num){
        this.num = num;
    }

    public void setDen(int den){
        this.den = den;
    }

    @Override
    public String toString(){
        if(den == 1){
            return String.format("%d",num);
        }
        else{
            return String.format("%d/%d",num,den);
        }
    }
}