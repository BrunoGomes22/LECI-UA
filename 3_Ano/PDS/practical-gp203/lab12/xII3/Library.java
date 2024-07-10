package xii3;
import java.util.*;
public class Library {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        List<Book> books = new ArrayList<Book>();
        books.add(new Book(1,"Java-Anti-Stress", "Omodionah"));
        books.add(new Book(2,"A Guerra dos Padroes", "Jorge Omel"));
        books.add(new Book(3,"A Procura da Luz", "Khumaltkli"));
        while(true){
            System.out.println("***Biblioteca***");
            for(int i = 0; i < books.size(); i++){
                System.out.println(books.get(i));
            }
            System.out.println("<livro>, <operacao: (1)regista; (2)requisita; (3)devolve; 4(reserva); (5)cancela");
            String a = sc.nextLine();
            String[] op = a.split(",");
            int bookId =Integer.parseInt(op[0]);
            int operation = Integer.parseInt(op[1]);
            if(operation == 0){
                break;
            }
            switch(operation) {
                case 1:
                    books.get(bookId-1).register();
                    break;
                case 2:
                    books.get(bookId-1).request();
                    break;
                case 3:
                    books.get(bookId-1).returnBook();
                    break;
                case 4:
                    books.get(bookId-1).reserve();
                    break;
                case 5:
                    books.get(bookId-1).cancel();
                    break;
                default:
                    System.out.println("Operação inválida");
                    break;
            }
        }
        sc.close();
    }
}
