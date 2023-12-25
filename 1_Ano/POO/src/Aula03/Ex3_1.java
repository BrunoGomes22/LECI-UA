package Aula03;
import java.util.Scanner;
import java.lang.Math;

public class Ex3_1 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        System.out.print("Introduza a nota da componente teórica: ");

        double notaT = sc.nextDouble();
        notaT = Math.round(notaT);

        System.out.print("Introduza a nota da componente prática: ");

        double notaP = sc.nextDouble();
        notaP = Math.round(notaP);

        if((notaT>20 || notaT<0) || (notaP>20 || notaP<0)){
            System.out.println("Introduza valores válidos!");
            System.exit(1);
        }

        if(notaP<7.0 || notaT<7.0){
            System.out.println("66, reprovado por nota mínima.");
        }
        else{
            double notaF = 0.4*notaT + 0.6*notaP;
            notaF = Math.round(notaF);
            System.out.printf("A nota final é de %2.0f valores \n",notaF);
        }

        sc.close();
    }
}
