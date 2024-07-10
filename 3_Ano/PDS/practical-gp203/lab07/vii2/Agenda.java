package vii2;
import java.util.List;
import java.util.ArrayList;

public class Agenda implements ContactsInterface {
    private ContactsStorageInterface storage;
    private List<Contact> contacts;

    public Agenda() {
        this.contacts = new ArrayList<>();
    }

    @Override
    public void openAndLoad(ContactsStorageInterface store) {
        this.storage = store;
        this.contacts = store.loadContacts();
    }

    @Override
    public void saveAndClose() {
        if (storage != null) {
            storage.saveContacts(contacts);
        }
    }

    @Override
    public void saveAndClose(ContactsStorageInterface store) {
        store.saveContacts(contacts);
    }

    @Override
    public boolean exist(Contact contact) {
        return contacts.contains(contact);
    }

    @Override
    public Contact getByName(String name) {
        for (Contact contact : contacts) {
            if (contact.getName().equals(name)) {
                return contact;
            }
        }
        return null;
    }

    @Override
    public boolean add(Contact contact) {
        return contacts.add(contact);
    }

    @Override
    public boolean remove(Contact contact) {
        return contacts.remove(contact);
    }
}