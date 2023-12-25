package Aula02;
import java.util.Scanner;

public class Ex2_2 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduza a temperatura em graus: ");
        double celsius = sc.nextDouble();

        double fahrenheit = 1.8*celsius + 32;

        System.out.printf(" %2.2f graus Celsius -> %2.2f Fahrenheit \n", celsius,fahrenheit);

        sc.close();
    }
}
