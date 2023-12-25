package Aula05;
import java.util.Scanner;

public class Ex5_1 {
    public static Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        Date data = null;
        while(true){
            System.out.println("Date operations:");
            System.out.println("1 - create new date");
            System.out.println("2 - show current date");
            System.out.println("3 - increment date");
            System.out.println("4 - decrement date");
            System.out.println("0 - exit");

            System.out.print("Selecione uma opção: ");
            int option = sc.nextInt();
        
            switch(option){
                case 1:
                    System.out.println("(create new date)");
                    System.out.print("Dia: ");
                    int dia = sc.nextInt();
                    System.out.print("Mês: ");
                    int mes = sc.nextInt();
                    System.out.print("Ano: ");
                    int ano = sc.nextInt();
                    data = new Date(dia, mes, ano);
                    break;
                    
                case 2:
                    if(data == null){
                        System.out.print("Data não existente!");
                        System.exit(1);
                    }
                    else{
                        System.out.println("(Show current date)");
                        System.out.println(data);
                    }
                    break;
                case 3:
                    System.out.println("(increment date)");
                    data.increment();
                    System.out.println(data);
                    break;
                case 4:
                    System.out.println("(decrement date)");
                    data.decrement();
                    System.out.println(data);
                    break;
                case 0:
                    System.exit(0);
                
            }
            
        }
    }
    
}
