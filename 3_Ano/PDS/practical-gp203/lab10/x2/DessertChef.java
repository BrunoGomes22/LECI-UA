package x2;

public class DessertChef extends Chef {
    @Override
    protected boolean canHandle(String request) {
        return request.toLowerCase().contains("dessert");
    }
}