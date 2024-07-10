package x2;
public class PastaChef extends Chef{
    @Override
    protected boolean canHandle(String request) {
        return request.toLowerCase().contains("pasta");
    }
}