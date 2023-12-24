import java.util.Scanner;

public class P41
{
	public static void main(String[] args)
	{
		int a = 0;
		int contador = 0;	
		Scanner sc = new Scanner(System.in);
		do
		{
			System.out.print("Introduza um número inteiro:");
			a = sc.nextInt();
			contador ++;
			
		}while(a>0);
		System.out.printf("Foram introduzido %d numeros",contador);
	 }
}
			
