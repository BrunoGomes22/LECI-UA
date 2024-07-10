package vii2;

public class Main {
    public static void main(String[] args) {
        
        ContactsStorageInterface txtStorage = new TxtAdapter("contacts.txt");
        ContactsInterface txtAgenda = new Agenda();
        txtAgenda.openAndLoad(txtStorage);
        Contact john = new Contact(1, "John Doe", "1234567890");
        System.out.println("John Doe exists in TXT file: " + txtAgenda.exist(john));

        ContactsStorageInterface csvStorage = new CsvAdapter("Livro1.csv");
        ContactsInterface csvAgenda = new Agenda();
        csvAgenda.openAndLoad(csvStorage);
        System.out.println("John Doe exists in CSV file: " + csvAgenda.exist(john));

        ContactsStorageInterface binaryStorage = new BinaryAdapter("contacts.bin");
        ContactsInterface binaryAgenda = new Agenda();
        binaryAgenda.openAndLoad(binaryStorage);
        System.out.println("John Doe exists in binary file: " + binaryAgenda.exist(john));
    }
}