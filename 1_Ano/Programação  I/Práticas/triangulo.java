import java.util.Scanner;
import java.lang.Math;

public class triangulo
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		System.out.println("Introduza o cateto A:");
		int A = sc.nextInt();
		System.out.println("Introduza o cateto B:");
		int B = sc.nextInt();
		double C = Math.sqrt(Math.pow(A,2) + Math.pow(B,2));
		System.out.println(C);
		System.out.print(Math.toDegrees(Math.asin(B/C)));
		
	}
}
		
