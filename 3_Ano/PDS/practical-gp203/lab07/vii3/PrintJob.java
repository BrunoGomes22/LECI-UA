package vii3;
import java.util.Random;

public class PrintJob implements Runnable {
    private Document document;
    private final int Id;


    public Document getDocument() {
        return this.document;
    }

    public PrintJob(Document document, int id) {
        this.document = document;
        this.Id = id;
    }

    public int getId() {
        return Id;
    }

    public int generateRandomId() {
        Random random = new Random();
        int id = random.nextInt(10000); 
        return id;
    }

    @Override
    public void run() {
        String text = document.getText();
        String[] words = text.split("\\s+");
        String preview = "";
        for (int i = 0; i < Math.min(5, words.length); i++) {
            preview += words[i] + " ";
        }
        System.out.println("Finished Job " + Id + ": \"" + preview.trim() + "...\"");
    }
}
