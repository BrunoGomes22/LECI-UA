package Aula02;
import java.util.Scanner;


public class Ex2_4 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Introduza o investimento: ");
        double investimento = sc.nextDouble();

        System.out.print("Introduza a taxa de juro mensal: ");
        double taxa = sc.nextDouble();
        double juros;

        for(int i = 0; i<3;i++){
            juros = investimento * (taxa/100);
            investimento = investimento + juros;
        }

        System.out.printf("O valor total será %.3f euros\n",investimento);
        sc.close();
    }
}
/*
Um fundo de investimento fornece uma taxa de juros mensal fixa, que acumula com o saldo
anterior do investimento (juros rendem juros). Escreva um programa em Java que peça ao
utilizador o montante investido e a taxa de juro mensal. Indique o valor total ao final de 3
meses. (Por exemplo, para um investimento de 5000 euros e uma taxa de 1% o montante ao fim de 3
meses será de 5151.505 euros).
*/
