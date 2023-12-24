import java.util.Scanner;

public class numerosreais
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Introduza um número real:");
		double NR1 = sc.nextDouble();
		System.out.print("Introduza outro número real:");
		double NR2 = sc.nextDouble();
		if (NR1 > NR2)
		{
		System.out.print(NR1);
		}
		else if (NR1 == NR2)
		{
		System.out.print("Os numeros escolhidos são iguais");
	    }
	    else 
	    {
	    System.out.print(NR2);
	    }
	    
	     
	}
}

