public class Colleague {

    private ChatMediator mediator;
    private String name;

    public Colleague(ChatMediator mediator, String name) {
        this.mediator = mediator;
        this.name = name;
    }

    public void sendMessage() {
        System.out.println("[" + name + "] sent a message by the mediator");
        mediator.sendMessage(this);
    }

    public void receiveMessage() {
        System.out.println("[" + name + "] received a message");
    }

    public String getName() {
        return name;
    }

}