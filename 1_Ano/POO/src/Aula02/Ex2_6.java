package Aula02;
import java.util.Scanner;

public class Ex2_6 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        System.out.print("Introduza os segundos: ");
        int segundos = sc.nextInt();
        int p1 = segundos%60;
        int p2 = segundos/60;
        int p3 = p2%60;
        p2 = p2/60;
        System.out.print(p2 + ":" + p3 + ":" + p1);
        System.out.print("\n");

        sc.close();

    }
}
