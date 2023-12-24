import java.util.Scanner;

public class P26
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Introduza um número inteiro:");
		int nr = sc.nextInt();
		if (nr % 2 == 0)
		{
			System.out.print("O número é par");
		}
		else if (nr % 2 != 0)
		{
		    System.out.print("O número é ímpar");
		}
	}
}
			
