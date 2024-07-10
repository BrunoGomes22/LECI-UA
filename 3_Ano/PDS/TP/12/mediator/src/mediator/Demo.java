public class Demo {

    public static void main(String[] args) {
        ChatMediator mediator = new ChatMediator();
        Colleague c1 = new Colleague(mediator, "João");
        Colleague c2 = new Colleague(mediator, "Pedro Pedro");
        Colleague c3 = new Colleague(mediator, "Maria");

        mediator.addColleague(c1);
        mediator.addColleague(c2);

        c1.sendMessage();
        c2.sendMessage();
        c1.sendMessage();
        c2.sendMessage();

        mediator.addColleague(c3);

        c3.sendMessage();
        c1.sendMessage();
    }

}