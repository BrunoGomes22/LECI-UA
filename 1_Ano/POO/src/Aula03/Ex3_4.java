package Aula03;
import java.util.Scanner;

public class Ex3_4 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduza um número: ");
        double primeiroN = sc.nextDouble();
        double proximoN = 0.0;
        double max = 0.0;
        double min = primeiroN;
        int count = 1;
        double total = primeiroN;
        do{
            System.out.print("Introduza um número: ");
            proximoN = sc.nextDouble();
            count++;
            total += proximoN;
            if(max<proximoN){
                max = proximoN;
            }

            if(proximoN<min){
                min = proximoN;
            }
            
        }while(primeiroN!=proximoN);

        double avg = total/count;

        System.out.println("-----------------------");

        System.out.printf("O numero maior é %2.1f\n",max);

        System.out.printf("O menor número é %2.1f\n",min);

        System.out.printf("%d números lidos\n",count);

        System.out.printf("A média é %2.1f\n",avg);

        sc.close();
        
    }
}
