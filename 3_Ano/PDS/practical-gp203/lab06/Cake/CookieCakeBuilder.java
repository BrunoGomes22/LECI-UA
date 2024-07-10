package Cake;

public class CookieCakeBuilder implements CakeBuilder{
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
        this.cake.addTopLayer(Cream.WHIPPED_CREAM);
    }

    public void addTopping(){
        this.cake.addTopping(Topping.NUTS);
    }

    public void addMessage(String m){
        this.cake.addMessage(m);
    }

    public void createCake(){
        this.cake = new Cake("Cookie");
    }

    public Cake getCake(){
        return cake;
    }
}
