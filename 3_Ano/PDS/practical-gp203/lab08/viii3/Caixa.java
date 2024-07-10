package viii3;
import java.util.ArrayList;
import java.util.List;

public class Caixa implements Component{
    private String name;
    private double weight;
    private List<Component> children;
    private static String indent = "";

    public Caixa(String name, double weight){
        this.name = name;
        this.weight = weight;
        children = new ArrayList<Component>();
    }

    public String getName(){
        return this.name;
    }

    public double getWeight(){
        return this.weight;
    }


    public double getTotalWeight(){
        double total = this.weight;
        for(Component cmp : children){
            if(cmp instanceof Caixa) {
                Caixa caixa = (Caixa) cmp;
                total += caixa.getTotalWeight();
            }
            else{
                total += cmp.getWeight();
            }
        }
        return total;
    }
    
    public void add(Component cmp){
        children.add(cmp);
    }

    public void drawChildren(){
        for(Component cmp : children){
            if(cmp instanceof Caixa) { //check if the component is a box
                Caixa caixa = (Caixa) cmp;
                indent += "\t";
                caixa.draw();
                indent = indent.substring(0, indent.length() - 1);
            }
            else{
                System.out.print(indent + "\t" + cmp);  //print product info
            }
        }
    }

    public void draw(){
        System.out.print(indent + this); // print the info of the actual box
        this.drawChildren();
    }

    public String toString(){
        return String.format("* %s '%s' [ Weight: %.1f ; Total: %.1f]\n", this.getClass().getSimpleName(), this.name, this.weight, this.getTotalWeight());
    }
}
