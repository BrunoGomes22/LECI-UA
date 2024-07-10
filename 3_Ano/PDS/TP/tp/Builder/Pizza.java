package Builder;

public class Pizza{
    private String dough;
    private String sauce;
    private String topping;

    public Pizza(String dough, String sauce, String topping){
        this.dough = dough;
        this.sauce = sauce;
        this.topping = topping;
    }

    public String getDough(){
        return dough;
    }

    public String getSauce(){
        return sauce;
    }

    public String getTopping(){
        return topping;
    }
}