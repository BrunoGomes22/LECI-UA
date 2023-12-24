import java.util.Scanner;

public class notas
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Nota TP1:");
		double TP1 = sc.nextDouble();
		System.out.print("Nota TP2:");
		double TP2 = sc.nextDouble();
		System.out.print("Nota TTP1:");
		double TTP1 = sc.nextDouble();
		System.out.print("Nota TTP2:");
		double TTP2 = sc.nextDouble();
		System.out.print("Nota TTP3:");
		double TTP3 = sc.nextDouble();
		System.out.print("Média QAs:");
		double QAs = sc.nextDouble();
		double Nota_da_disciplina = (TP1*0.25+TP2*0.35+TTP1*0.10+TTP2*0.10+TTP3*0.10+QAs*0.10);
		System.out.println(Nota_da_disciplina);
		
		
		
	}
}
