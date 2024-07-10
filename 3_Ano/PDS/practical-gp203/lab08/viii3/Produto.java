package viii3;

public class Produto implements Component{
    private String name;
    private double weight;

    public Produto(String name, double weight){
        this.name = name;
        this.weight = weight;
    }

    public String getName(){
        return this.name;
    }

    public double getWeight(){
        return this.weight;
    }

    public String toString(){
        return String.format("%s '%s' - Weight %.1f\n", this.getClass().getSimpleName(), this.name,this.weight);
    }
}
