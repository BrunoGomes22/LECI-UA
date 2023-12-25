package Aula02;
import java.util.Scanner;

public class Ex2_3 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        System.out.print("Introduza a quantidade de água (em Kg): ");

        double qAgua = sc.nextDouble();

        System.out.print("Temperatura inicial da água? ");

        double tInicial = sc.nextDouble();

        System.out.print("Temperatura final da água? ");

        double tFinal = sc.nextDouble();

        double energia = qAgua * (tFinal-tInicial) * 4184;

        System.out.printf("A energia necessária para aquecer %2.1f Kg de água é de %2.2f Joules\n",qAgua,energia);

        sc.close();

    }
}
