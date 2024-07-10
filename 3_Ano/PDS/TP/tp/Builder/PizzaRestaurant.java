package Builder;

public class PizzaRestaurant {
    
    public static void main(String[] args) {
        Waiter waiter = new Waiter();
        Order order = new Order("massa fina", "tomate", "queijo");
        PizzaBuilder pizzaBuilder = new PizzaBuilder();
        Pizza pizza = pizzaBuilder.setPizzaIngridients(waiter.takeOrder(order));
        System.out.println("Pizza: " + pizza.getDough() + ", " + pizza.getSauce() + ", " + pizza.getTopping());
    }

}
