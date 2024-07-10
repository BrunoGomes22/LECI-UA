package xii3;

public class Book {
    private BookState state;
    private String name;
    private String author;
    private int bookId;

    
    public Book(int bookId, String name, String author) {
        state = new Inventory();
        this.bookId = bookId;
        this.name = name;
        this.author = author;
        
    }   

    public void register(){
        state.register(this);
    }

    public void request(){
        state.request(this);
    }

    public void returnBook(){
        state.returnBook(this);
    }

    public void reserve(){
        state.reserve(this);
    }

    public void cancel(){
        state.cancel(this);
    }

    public void setState(BookState state) {
        this.state = state;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return String.format("%-20s %-20s %-20s [%s]",bookId, name, author, state);
    }

    


    
}
