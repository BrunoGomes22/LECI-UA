package xii3;

public class Available implements BookState {
    public void register(Book book){
        System.out.println("Operaçao nao disponível");
    }

    public void request(Book book){
        book.setState(new Borrowed());
    }

    public void returnBook(Book book){
        System.out.println("Operaçao nao disponível");
    }

    public void reserve(Book book){
        book.setState(new Reserved());
    }

    public void cancel(Book book){
        System.out.println("Operaçao nao disponível");
    }

    @Override
    public String toString() {
        return "Disponível";
    }
    
}
