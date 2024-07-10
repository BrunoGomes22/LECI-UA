package vii2;
import java.util.*;
import java.io.*;
import java.util.ArrayList;import java.io.IOException;

public class CsvAdapter implements ContactsStorageInterface {
    private String filename;

    public CsvAdapter(String filename) {
        this.filename = "vii2/" + filename;
    }

    @Override
    public List<Contact> loadContacts() {
        List<Contact> contacts = new ArrayList<>();
        try {
            File file = new File(filename);
            Scanner myReader = new Scanner(file);
            while (myReader.hasNextLine()) {
                String line = myReader.nextLine();
                String[] parts = line.split(",|;");
                contacts.add(new Contact(Integer.parseInt(parts[0]), parts[1], parts[2]));
            }
            myReader.close();
        } catch (FileNotFoundException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
        return contacts;
    }

    @Override
    public boolean saveContacts(List<Contact> list) {
        try {
            FileWriter writer = new FileWriter(filename);
            for (Contact contact : list) {
                writer.write(contact.getId() + "," + contact.getName() + "," + contact.getPhone() + "\n");
            }
            writer.close();
            System.out.println("Successfully wrote to the file.");
        } catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
        return true;
    }
}