package x2;
public class BurgerChef extends Chef{
    @Override
    protected boolean canHandle(String request) {
        return request.toLowerCase().contains("burger");
    }
}