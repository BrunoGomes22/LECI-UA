import java.util.ArrayList;

public class Vector extends Value{
    private ArrayList<Double> vectorList;

    public Vector(){
        setVector(true);
        this.vectorList = new ArrayList<>();
    }

    public Vector(ArrayList<Double> vec){
        setVector(true);
        this.vectorList = vec;
    }

    public Vector sum(Value val){
        Vector v1 = (Vector) val;
        if(vectorList.size() != v1.vectorList.size()){
            System.err.printf("Vector sizes do not match!");
            System.exit(1);
        }

        for(int i = 0; i<vectorList.size(); i++){
            vectorList.set(i, vectorList.get(i) + v1.vectorList.get(i));
        }
        return this;
    }

    
    public Vector sub(Value val){
        Vector v1 = (Vector) val;
        if(vectorList.size() != v1.vectorList.size()){
            System.err.printf("Vector sizes do not match!");
            System.exit(1);
        }

        for(int i = 0; i<vectorList.size(); i++){
            vectorList.set(i, vectorList.get(i) - v1.vectorList.get(i));
        }
        return this;
    }
        

    public Vector symmetricVector(){
        for(int i = 0 ; i<vectorList.size(); i++){
            vectorList.set(i,vectorList.get(i)*-1); 
        }
        Vector newVec = new Vector(vectorList);
        return newVec;
    }

    public Vector multiply(Scalar val){
        for(int i = 0; i< this.vectorList.size(); i++){
            if(val.getDouble() == 0){
                this.vectorList.set(i, this.vectorList.get(i)*val.getInt());
            }
            else{
                this.vectorList.set(i, this.vectorList.get(i)*val.getDouble());
            }

        }
        return this;
    }


    @Override
    public String toString(){
        String tmp = "[";
        for(Double d : vectorList){
            tmp += d + ",";
        }
        tmp = tmp + "]";
        tmp = tmp.replace(",]", "]");
        return tmp;
    }
}
