package xii3;

public class Inventory implements BookState{
    public void register(Book book){
        book.setState(new Available());
    }

    public void request(Book book){
        System.out.println("Operaçao nao disponível");
    }

    public void returnBook(Book book){
        System.out.println("Operaçao nao disponível");
    }

    public void reserve(Book book){
        System.out.println("Operaçao nao disponível");
    }

    public void cancel(Book book){
        System.out.println("Operaçao nao disponível");
    }

    @Override
    public String toString() {
        return "Inventário";
    }
}
