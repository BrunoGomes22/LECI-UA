package Aula02;
import java.util.Scanner;
import java.lang.Math;

public class Ex2_8 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        System.out.print("Introduza o comprimento do cateto A: ");
        double catetoA = sc.nextDouble();
        System.out.print("Introduza o comprimento do cateto B: ");
        double catetoB = sc.nextDouble();

        double hipotenusa = Math.sqrt(Math.pow(catetoA, 2.0) + Math.pow(catetoB, 2.0));

        System.out.printf("O comprimento da hipotenusa é %2.1f.\n",hipotenusa);
        
        double angulo = Math.toDegrees(Math.acos(catetoA/hipotenusa));

        System.out.printf("O ângulo entre o cateto A e a hipotenusa é %2.1f graus.\n",angulo);

        sc.close();
    }
}
