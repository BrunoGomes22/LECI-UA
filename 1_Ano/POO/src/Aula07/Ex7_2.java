package Aula07;
import java.util.Scanner;

public class Ex7_2 {
    public static Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        Date data = null;
        DateND dataNd = null;
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
                    System.out.print("YMD? ou ND? ");
                    String formato = sc.next();
                    if(formato.equals("YMD")){
                        System.out.print("Dia: ");
                        int dia = sc.nextInt();
                        System.out.print("Mês: ");
                        int mes = sc.nextInt();
                        System.out.print("Ano: ");
                        int ano = sc.nextInt();
                        data = new DateYMD(dia, mes, ano);
                    }
                    
                    if(formato.equals("ND")){
                        System.out.print("Introduza um número de dias: ");
                        int nDias = sc.nextInt();
                        dataNd = new DateND(nDias);
                    }

                    break;
                    
                case 2:
                    if(data == null && dataNd == null){
                        System.out.print("Data não existente!");
                        System.exit(1);
                    }
                    else{
                        System.out.println("(Show current date)");
                        if(dataNd == null){
                            System.out.println(data);
                        }
                        else{
                            System.out.println(dataNd);
                        }
                        
                    }
                    break;
                case 3:
                    System.out.println("(increment date)");
                    if(dataNd == null){
                        data.increment();
                        System.out.println(data);
                    }
                    else{
                        dataNd.increment();
                        System.out.println(dataNd);
                    }
                    
                    break;
                case 4:
                    System.out.println("(decrement date)");
                    if(dataNd == null){
                        data.decrement();
                        System.out.println(data);
                    }
                    else{
                        dataNd.decrement();
                        System.out.println(dataNd);
                    }
                    break;
                case 0:
                    System.exit(0);
                
            }
            
        }
    }
    
}