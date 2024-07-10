package Cake;

public class SpongeCakeBuilder implements CakeBuilder{
    private Cake cake;

    public void setCakeShape(Shape shape){
        this.cake.setCakeShape(shape);
    }

    public void addCakeLayer(){
        this.cake.addCakeLayer();
    }

    public void addCreamLayer(){
        this.cake.addCreamLayer(Cream.STRAWBERRY);
    }

    public void addTopLayer(){
        this.cake.addTopLayer(Cream.MINT);
    }

    public void addTopping(){
        this.cake.addTopping(Topping.GANACHE);
    }

    public void addMessage(String m){
        this.cake.addMessage(m);
    }

    public void createCake(){
        this.cake = new Cake("Sponge");
    }

    public Cake getCake(){
        return this.cake;
    }
}
