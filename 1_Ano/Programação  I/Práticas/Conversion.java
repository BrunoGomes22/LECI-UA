import java.util.Scanner; 

public class Conversion
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		double dollars, taxa;
		double euros;
		System.out.print("Introduza a quantidade de doláres americanos : ");
		dollars = sc.nextDouble();
		System.out.print("Introduza a quantidade de euros : ");
		euros = sc.nextDouble();
	    System.out.print("Introduza a taxa : ");
	    taxa = sc.nextDouble();
		euros = dollars*taxa;
		System.out.printf("%8.2f american dollars equal a %8.2f euros.", dollars, euros);
	}
	 
}
