package EP1;

public abstract class Servico {
    private String id;
    private static int numIncr = 1001;

    public Servico(String id){
        this.id = id;
        numIncr++;
    }

    public String getId(){
        return this.id;
    }

    public static int getNumIncr(){
        return numIncr;
    }

    public void setId(String id){
        this.id = id;
    }
}
