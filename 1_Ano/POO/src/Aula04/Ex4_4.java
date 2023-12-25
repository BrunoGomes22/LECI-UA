package Aula04;
import java.util.Scanner;

public class Ex4_4 {
    public static Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        int ano = readInput("ano");
        int mes = readInput("mes");
        int dia = readInput("dia"); // segunda a sexta 1-7

        int diasDoMes = dayCounter(mes, ano); //numero de dias de um certo mes

        System.out.print(printMonthYear(ano,mes));

        printCalendar(diasDoMes, dia);
    }

    public static int readInput(String s){
        System.out.printf("Introduza o %s: ",s);
        return sc.nextInt();
    }

    public static String printMonthYear(int a, int m){
        String[] meses = {"Janeiro","Fevereiro","Março","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"};

        return String.format("  %s de %d \n",meses[m-1],a);

    }

    public static void printCalendar(int diasMes, int diasSemana){
        System.out.println(" Su Mo Tu We Th Fr Sa ");

        
        int k = 1; 
        int counter = diasSemana;

        while(k<diasSemana){
            System.out.print("   ");
            k++;
        }

        for(int i = 1; i<=diasMes;i++){
            System.out.printf(" %2d",i);

            if(counter%7 == 0){
                System.out.print("\n");
            }
            counter++;
        }

        System.out.print("\n");



    }

    public static int dayCounter(int month, int year){
        boolean bissexto;
        int dias;
        if((year%400==0) || ((year%4==0) && (year%100!=0))){
            bissexto = true;
        }
        else{
            bissexto = false;
        }
        
        if(bissexto){
            switch(month){
                case 4:
                case 6:
                case 9:
                case 11: dias = 30; break;
                case 2: dias = 29; break;
                default: dias = 31;
            }
        }
        else{
            switch(month){
                case 4:
                case 6:
                case 9:
                case 11: dias = 30; break;
                case 2: dias = 28; break;
                default: dias = 31;
            }
        }
        return dias;
    }
}

