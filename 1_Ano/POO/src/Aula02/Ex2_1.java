package Aula02;
import java.util.Scanner;

public class Ex2_1 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduza quilometros: ");

        double kms = sc.nextDouble();

        double miles = kms / 1.609;

        System.out.printf(" %2.2f Quilometros -> %2.2f Milhas\n", kms, miles);

        sc.close();
    }
}
