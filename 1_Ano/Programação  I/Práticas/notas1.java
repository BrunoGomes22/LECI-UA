import java.util.Scanner;

public class notas1
{
	public static void main(String[] args)
	{
	 Scanner sc = new Scanner(System.in);
	 System.out.print("Insira a nota do 1º teste prático:");
	 double TPG1 = sc.nextDouble();
	 System.out.print("Insira a nota do 2º teste prático:");
	 double TPG2 = sc.nextDouble();
	 System.out.print("Introduza a nota do exame final:");
	 double EI = sc.nextDouble();
	 double Nota_final_da_disciplina = (TPG1*0.20+TPG2*0.30+EI*0.50);
	 System.out.println(Nota_final_da_disciplina);
	 if (Nota_final_da_disciplina >= 9.5)
	 {
		 System.out.print("Aluno aprovado");
     }
     else
     {
		 System.out.print("Aluno reprovado");
	
	
	
     }
}
}
