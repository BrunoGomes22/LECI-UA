public class Demo {

    public static void main(String[] args) {
        ChatMediator mediator = new ChatMediator();
        Colleague c1 = new Colleague(mediator, "João", UserType.TEACHER);
        Colleague c2 = new Colleague(mediator, "Francisco", UserType.TEACHER);
        Colleague c3 = new Colleague(mediator, "Pedro Pedro", UserType.STUDENT);
        Colleague c4 = new Colleague(mediator, "Maria", UserType.STUDENT);
        Colleague c5 = new Colleague(mediator, "Ana", UserType.STUDENT);

        mediator.addColleague(c1);
        mediator.addColleague(c2);
        mediator.addColleague(c3);
        mediator.addColleague(c4);
        mediator.addColleague(c5);

        System.out.println("\nSending message to students only");
        c1.sendMessage(new Message("Hello Students", UserType.STUDENT));

        System.out.println("\nSending message to teachers only");
        c2.sendMessage(new Message("Hello Teachers", UserType.TEACHER));

        System.out.println("\nSending message to all");
        c1.sendMessage(new Message("Hello Everyone", UserType.ALL));

        System.out.println("\nSending message to all from a student");
        c3.sendMessage(new Message("Hello Everyone", UserType.ALL));
    }

}