package Cake;

public class YogurtCakeBuilder implements CakeBuilder{
    private Cake cake;

    public void setCakeShape(Shape shape){
        this.cake.setCakeShape(shape);
    }

    public void addCakeLayer(){
        this.cake.addCakeLayer();
    }

    public void addCreamLayer(){
        this.cake.addCreamLayer(Cream.CHOCOLATE);
    }

    public void addTopLayer(){
        this.cake.addTopLayer(Cream.MINT);
    }

    public void addTopping(){
        this.cake.addTopping(Topping.LEMON);
    }

    public void addMessage(String m){
        this.cake.addMessage(m);
    }

    public void createCake(){
        this.cake = new Cake("Yogurt");
    }

    public Cake getCake(){
        return cake;
    }
}
