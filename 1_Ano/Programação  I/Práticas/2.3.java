import java.util.Scanner;

public class P23
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Introduza a sua idade:");
		int Idade = sc.nextInt();
		if (Idade < 6)
		{
			System.out.print("Isento de pagamento");
		}
		else if (Idade >= 6 && Idade <= 12)
		{
			System.out.print("Bilhete de criança");
		}
		if (Idade >= 13 && Idade <=65)
		{
			System.out.print("Bilhete normal");
		}
		else if (Idade > 65)
		{
			System.out.print("Bilhete da 3ª idade");
		}
	}
}
		
		
