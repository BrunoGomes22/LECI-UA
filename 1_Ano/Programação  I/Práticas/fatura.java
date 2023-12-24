import java.util.Scanner;

public class fatura
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Introduza o valor líquido:");
		double Valor_líquido_do_produto = sc.nextDouble();
		System.out.print("Introduza o desconto aplicado ao valor líquido:");
		double Desconto = sc.nextDouble();
		System.out.print("Introduza o IVA:");
		double IVA = sc.nextDouble();
		double Valor_final = ((Valor_líquido_do_produto-Valor_líquido_do_produto*Desconto)*IVA)+(Valor_líquido_do_produto-Valor_líquido_do_produto*Desconto);
		System.out.println(Valor_final);
		
		
	}
}
