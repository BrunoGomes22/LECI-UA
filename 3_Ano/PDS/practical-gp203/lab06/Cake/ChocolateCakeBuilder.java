package Cake;

public class ChocolateCakeBuilder implements CakeBuilder{
    private Cake cake;

    public void setCakeShape(Shape shape){
        this.cake.setCakeShape(shape);
    }

    public void addCakeLayer(){
        this.cake.addCakeLayer();
    }

    public void addCreamLayer(){
        this.cake.addCreamLayer(Cream.VANILLA);
    }

    public void addTopLayer(){
        this.cake.addTopLayer(Cream.HAZEL);
    }

    public void addTopping(){
        this.cake.addTopping(Topping.CARAMEL);
    }

    public void addMessage(String m){
        this.cake.addMessage(m);
    }

    public void createCake(){
        this.cake = new Cake("Chocolate");
    }

    public Cake getCake(){
        return cake;
    }

}
