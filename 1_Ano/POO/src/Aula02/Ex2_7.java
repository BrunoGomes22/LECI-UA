package Aula02;
import java.util.Scanner;
import java.lang.Math;

public class Ex2_7 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        System.out.print("Ponto xA? ");
        int xA = sc.nextInt();
        System.out.print("Ponto yA? ");
        int yA = sc.nextInt();

        System.out.print("Ponto xB? ");
        int xB = sc.nextInt();
        System.out.print("Ponto yB? ");
        int yB = sc.nextInt();

        double distance = Math.sqrt(Math.pow((xB-xA), 2)+Math.pow((yB-yA), 2));

        System.out.printf("A distância entre o ponto A e B é %2.1f\n",distance);

        sc.close();
    }
} 
