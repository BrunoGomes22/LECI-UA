import java.util.ArrayList;

public class ChatMediator {

    private ArrayList<Colleague> colleagues = new ArrayList<>();

    public void addColleague(Colleague colleague) {
        System.out.println("[" + colleague.getName() + "] joined the chat");
        colleagues.add(colleague);
    }

    public void sendMessage(Colleague sender) {
        for (Colleague colleague : colleagues) {
            if (colleague != sender) {
                colleague.receiveMessage();
            }
        }
    }

}