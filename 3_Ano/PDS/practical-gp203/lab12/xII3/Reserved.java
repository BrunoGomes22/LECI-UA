package xii3;

public class Reserved implements BookState{
    public void register(Book book){
        System.out.println("Operaçao nao disponível");
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
        book.setState(new Available());
    }

    @Override
    public String toString() {
        return "Reservado";
    }
}
