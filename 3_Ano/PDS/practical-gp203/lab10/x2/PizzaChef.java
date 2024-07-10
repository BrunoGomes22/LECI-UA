package x2;
public class PizzaChef extends Chef{
    @Override
    protected boolean canHandle(String request) {
        return request.toLowerCase().contains("pizza");
    }
}