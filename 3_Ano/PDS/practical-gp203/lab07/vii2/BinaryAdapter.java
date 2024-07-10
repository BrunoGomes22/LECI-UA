package vii2;
import java.util.*;
import java.io.*;

public class BinaryAdapter implements ContactsStorageInterface {
    private String filename;

    public BinaryAdapter(String filename) {
        this.filename = "vii2/" + filename;
    }

    @Override
    public List<Contact> loadContacts() {
        List<Contact> contacts = new ArrayList<>();
        try {
            FileInputStream fis = new FileInputStream(filename);
            DataInputStream dis = new DataInputStream(fis);
            while(dis.available() > 0) {
                int id = dis.readInt();
                String name = dis.readUTF();
                String phone = dis.readUTF();
                contacts.add(new Contact(id, name, phone));
            }
            dis.close();
            fis.close();
        } catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
        return contacts;
    }

    @Override
    public boolean saveContacts(List<Contact> list) {
        try {
            FileOutputStream fos = new FileOutputStream(filename);
            DataOutputStream dos = new DataOutputStream(fos);
            for (Contact contact : list) {
                dos.writeInt(contact.getId());
                dos.writeUTF(contact.getName());
                dos.writeUTF(contact.getPhone());
            }
            dos.close();
            fos.close();
            System.out.println("Successfully wrote to the file.");
        } catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }
        return true;
    }
}