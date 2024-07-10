public class Colleague {

    private ChatMediator mediator;
    private String name;
    private UserType type;

    public Colleague(ChatMediator mediator, String name, UserType type) {
        this.mediator = mediator;
        this.name = name;
        this.type = type;
    }

    public void sendMessage(Message message) {
        System.out.println("[" + name + "] sent a message through the mediator");
        mediator.sendMessage(this, message);
    }

    public void receiveMessage() {
        System.out.println("[" + name + "] received a message");
    }

    public String getName() {
        return name;
    }

    public UserType getType() {
        return type;
    }

}