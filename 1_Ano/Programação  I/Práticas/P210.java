import java.util.Scanner;

public class P210
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Introduza um mês:");
		int mês = sc.nextInt();
		System.out.print("Introduza um ano:");
		int ano = sc.nextInt();
		System.out.print("Introduza o dia:");
		int dias = sc.nextInt();
		if(mês == 1 || mês == 3 || mês ==5 || mês ==7 || mês ==10 || mês ==8 || mês == 12)
		{
		if(dias <= 31 && dias > 0)
		   System.out.printf("O mês %d do ano %d tem %d dias.",mês , ano, dias);
		}
		else if(mês == 4 || mês == 6 ||  mês == 9 || mês == 11)
		{
		if(dias <= 30 && dias > 0)
			System.out.printf("O mês %d do ano %d tem %d dias.",mês , ano, dias);
		}
		else if(mês == 2 && (ano%4 == 0 && ano%100!=0 || ano%400==0))
		{
		   dias=29;
		   System.out.printf("O mês %d do ano %d tem %d dias.",mês , ano, dias);
		}
		else 
		{
			dias=28;
		    System.out.printf("O mês %d do ano %d tem %d dias.",mês , ano, dias);
		}
    }
}
