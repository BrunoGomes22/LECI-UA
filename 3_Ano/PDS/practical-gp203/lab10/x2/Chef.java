package x2;

import java.util.Random;

public abstract class Chef implements IChef {
    protected Chef nextChef;
    private Random random = new Random();

    @Override
    public void setNext(IChef chef) {
        this.nextChef = (Chef) chef;
    }

    @Override
    public void handle(String request) {
        if (canHandle(request)) {
            System.out.println(getClass().getSimpleName() + ": Starting to cook " + request + ". Out in " + getCookingTime() + " minutes!");
        } else if (nextChef != null) {
            System.out.println(getClass().getSimpleName() + ": I can't cook that.");
            nextChef.handle(request);
        } else {
            System.out.println("We're sorry but that request can't be satisfied by our service!");
        }
    }

    protected abstract boolean canHandle(String request);

    protected int getCookingTime() {
        return random.nextInt(30);
    }
}