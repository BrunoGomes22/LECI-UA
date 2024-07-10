package Builder;

public class PizzaBuilder {
    
    public Pizza setPizzaIngridients(Order order){

        return new Pizza(order.getDough(), order.getSauce(), order.getTopping());
    }
}
