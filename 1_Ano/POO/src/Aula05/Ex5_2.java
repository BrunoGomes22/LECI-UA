package Aula05;
import java.util.Scanner;

public class Ex5_2 {
    public static Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        int ano = 0;
        Calendar calendario = null;
        while(true){
            System.out.println("Date operations:");
            System.out.println("1 - create new calendar");
            System.out.println("2 - print calendar month");
            System.out.println("3 - print calendar");
            System.out.println("0 - exit");

            System.out.print("Selecione uma opção: ");
            int option = sc.nextInt();
            switch(option){
                case 1:
                    System.out.println("(create new calendar)");
                    System.out.print("Ano: ");
                    ano = sc.nextInt();
                    System.out.print("Dia da semana (1-7): ");
                    int dia = sc.nextInt();
                    calendario = new Calendar(ano,dia);
                    break;
                    
                case 2:
                    if(calendario == null){
                        System.out.print("Calendário não existente!");
                        System.exit(1);
                    }
                    else{
                        System.out.println("(Print calendar month)");
                        System.out.print("Introduza um mês: ");
                        int month = sc.nextInt();
                        System.out.print(calendario.printMonthYear(ano, month));
                        calendario.printMonth(month);
                
                    }
                    break;
                case 3:
                    System.out.println("(Print calendar)");
                    calendario.printCalendarYear();
                    break;
                case 0:
                    System.exit(0);
                
            }
            
        }
    }
    
}