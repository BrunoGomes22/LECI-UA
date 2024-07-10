package xI3;

abstract class Country {
    protected UnitedNations mediator;

    public Country(UnitedNations mediator) {
        this.mediator = mediator;
    }

    public abstract void sendMessage(String message);
    public abstract void recieveMessage(String message);
}
