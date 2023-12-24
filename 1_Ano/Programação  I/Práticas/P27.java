import java.util.Scanner;

public class P27
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Introduza um número inteiro:");
		int num1 = sc.nextInt();
		System.out.print("Introduza outro número inteiro:");
		int num2 = sc.nextInt();
		System.out.print("Introduza mais um número inteiro:");
		int num3 = sc.nextInt();
		if ( num1 >= num2 && num1 >= num3)
		{
			System.out.print("O 1º número introduzido é o maior");
		}
		else if ( num2 >= num1 && num2 >= num3)
		{
			System.out.print("O 2º número introduzido é o maior");
		}
		else
		{
			System.out.print("O 3º número introduzido é o maior");
	}
}
}
