package xii3;
interface BookState {
    void register(Book book);
    void request(Book book);
    void returnBook(Book book);
    void reserve(Book book);
    void cancel(Book book);
}
