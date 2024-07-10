package Cake;

public class Cake {
    private Shape shape;
    private String cakeLayer;
    private int numCakeLayers;
    private Cream midLayerCream;
    private Cream topLayerCream;
    private Topping topping;
    private String message;

    public Cake(String cakeLayer){
        this.cakeLayer = cakeLayer; // cakelayer defines the cake that we want
        this.numCakeLayers = 0;
    }

    public void setCakeShape(Shape shape){
        this.shape = shape;
    }

    public void addCakeLayer(){
        this.numCakeLayers += 1;
    }

    public void addCreamLayer(Cream cream){
        this.midLayerCream = cream;
    }
    
    public void addTopLayer(Cream topLayerCream){
        this.topLayerCream = topLayerCream;
    }

    public void addTopping(Topping topping){
        this.topping = topping;
    }

    public void addMessage(String m){
        this.message = m;
    }

    @Override
    public String toString(){
        return String.format("\nShape: %s\nCake Layer: %s\nNumber of layers: %d\nMid layer: %s\nTop layer: %s\nTopping: %s\n%s",shape, cakeLayer, numCakeLayers, midLayerCream, topLayerCream,topping, message);
    }

}
