import java.util.ArrayList;

public class ChatMediator {

    private ArrayList<Colleague> colleagues = new ArrayList<>();

    public void addColleague(Colleague colleague) {
        System.out.println("[" + colleague.getName() + "] joined the chat");
        colleagues.add(colleague);
    }

    public void sendMessage(Colleague sender, Message message) {
        if (sender.getType() == UserType.STUDENT && message.getType() == UserType.ALL) {
            System.out.println("[" + sender.getName() + "] is not allowed to send messages to all");
            return;
        }

        for (Colleague colleague : colleagues) {
            if ((colleague != sender && colleague.getType() == message.getType()) || (colleague != sender && message.getType() == UserType.ALL)) {
                colleague.receiveMessage();
            }
        }
    }

}