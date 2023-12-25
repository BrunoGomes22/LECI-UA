package Aula03;
import java.util.Scanner;

public class Ex3_5 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.println("Montante Investido ( positivo e multiplo de 1000): ");
        double investido = sc.nextDouble();
        if (investido < 0 || investido % 1000 != 0)
            System.exit(0);
        System.out.println("Taxa de Juro Mensal (entre [0%,5%])): ");
        double taxa = sc.nextDouble();
        if (taxa < 0 || taxa > 5)
            System.exit(0);
        for (int i = 1; i <= 12; i++) {
            investido = investido + (investido * (taxa / 100));
            System.out.printf("Valor mensal no Mes %d: %.2f ", i, investido);
            System.out.println("");

        }
        sc.close();
    }
}
