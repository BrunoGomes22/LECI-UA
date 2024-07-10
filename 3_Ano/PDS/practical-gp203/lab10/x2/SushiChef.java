package x2;

public class SushiChef extends Chef {
    @Override
    protected boolean canHandle(String request) {
        return request.toLowerCase().contains("sushi");
    }
}