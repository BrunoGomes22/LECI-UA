package xI3;

public class Russia extends Country{
    public Russia(UnitedNations mediator){
        super(mediator);
    }

    public void sendMessage(String message){
        mediator.declare(this, message);
    }

    public void recieveMessage(String message){
        System.out.println("Russia recieved: " + message);
    }
}
