package x2;

public class Restaurant {
    public static void main(String[] args) {
        Chef sushiChef = new SushiChef();
        Chef pastaChef = new PastaChef();
        Chef burgerChef = new BurgerChef();
        Chef pizzaChef = new PizzaChef();
        Chef dessertChef = new DessertChef();

        sushiChef.setNext(pastaChef);
        pastaChef.setNext(burgerChef);
        burgerChef.setNext(pizzaChef);
        pizzaChef.setNext(dessertChef);

        handleRequest(sushiChef, "veggie burger");
        handleRequest(sushiChef, "Pasta Carbonara");
        handleRequest(sushiChef, "PLAIN pizza, no toppings!");
        handleRequest(sushiChef, "sushi nigiri and sashimi");
        handleRequest(sushiChef, "salad with tuna");
        handleRequest(sushiChef, "strawberry ice cream and waffles dessert");
    }

    private static void handleRequest(Chef chef, String request) {
        System.out.println("Can I please get a " + request + "?");
        chef.handle(request);
        System.out.println();
    }
}
