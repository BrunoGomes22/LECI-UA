package xI3;

public class China extends Country{
    public China(UnitedNations mediator){
        super(mediator);
    }

    public void sendMessage(String message){
        mediator.declare(this, message);
    }

    public void recieveMessage(String message){
        System.out.println("China recieved: " + message);
    }
}
