package Aula03;
import java.util.Scanner;

public class Ex3_2 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduza um número: ");
        int n = sc.nextInt(); 

        for(int i = n;i>=0;i--){
            System.out.println(i);
        }
        sc.close();
    }
}
