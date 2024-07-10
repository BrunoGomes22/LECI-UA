package Builder;

public class Order {
    private String dough;
    private String topping;
    private String sauce;

    public Order(String dough, String topping, String sauce){
        this.dough = dough;
        this.topping = topping;
        this.sauce = sauce;
    }

    public String getDough(){
        return dough;
    }

    public String getTopping(){
        return topping;
    }

    public String getSauce(){
        return sauce;
    }

    public void setSauce(String sauce){
        this.sauce = sauce;
    }

    public void setTopping(String topping){
        this.topping = topping;
    }

    public void setDough(String dough){
        this.dough = dough;
    }

}
