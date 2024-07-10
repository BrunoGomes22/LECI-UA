package xI3;

public class USA extends Country{
    public USA(UnitedNations mediator){
        super(mediator);
    }

    public void sendMessage(String message){
        mediator.declare(this, message);
    }

    public void recieveMessage(String message){
        System.out.println("USA recieved: " + message);
    }
}
