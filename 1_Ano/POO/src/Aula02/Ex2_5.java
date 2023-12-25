package Aula02;
import java.util.Scanner;

public class Ex2_5 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Velocidade do primeiro trajeto? ");
        double v1 = sc.nextDouble();
        System.out.print("Distância percorrida no primeiro trajeto? ");
        double d1 = sc.nextDouble();

        System.out.print("Velocidade do segundo trajeto? ");
        double v2 = sc.nextDouble();
        System.out.print("Distância percorrida no segundo trajeto? ");
        double d2 = sc.nextDouble();

        double avgVelocity = (d1+d2)/((d1/v1)+(d2/v2));

        System.out.printf("A velocidade média do percurso é de %2.1f m/s.\n",avgVelocity);

        sc.close();
    }
}
