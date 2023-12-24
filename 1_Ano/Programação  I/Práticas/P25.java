import java.util.Scanner;

public class P25
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Introduza a coordenadas do ponto P1:");
		double P1x = sc.nextDouble();
		double P1y = sc.nextDouble();
		System.out.print("Introduza a coordenadas do ponto P2:");
        double P2x = sc.nextDouble();
        double P2y = sc.nextDouble();
        System.out.print("Introduza a coordenadas do ponto P3:");
        double P3x = sc.nextDouble();
        double P3y = sc.nextDouble();
        System.out.print("Introduza a coordenadas do ponto P4:");
        double P4x = sc.nextDouble();
        double P4y = sc.nextDouble();
        if ( P1y == P2y && P4y == P3y && P1x == P4x && P2x == P3x)
        {
			System.out.print("As coordenadas introduzidas formam um retângulo");
		}
		else 
		{
			System.out.print("As coordenadas não formam nenhuma figura geométrica");
		}
     }
}
