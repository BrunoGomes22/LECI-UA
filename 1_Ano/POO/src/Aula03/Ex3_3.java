package Aula03;
import java.util.Scanner;

public class Ex3_3 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int num;
        do{
            System.out.print("Introduza um número inteiro positivo: ");
            num = sc.nextInt();
            if(num==1){
                System.out.println(num + " não é número primo.");
                break;
            }

            else if(num>0){
                boolean flag = false;
                for (int i = 2; i <= num / 2; ++i) {
                    // condition for nonprime number
                    if (num % i == 0) {
                        flag = true;
                        break;
                    }
                }


                if (!flag){
                    System.out.println(num + " é número primo.");
                }
                else{
                    System.out.println(num + " não é número primo.");
                }

            }

            
        }while(num<0);
        sc.close();
    }
}
