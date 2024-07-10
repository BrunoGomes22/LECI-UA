package x2;

public interface IChef {
    void setNext(IChef Chef);
    void handle(String request);
}