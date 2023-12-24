import java.util.Scanner;

public class EX1{
		
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		
		System.out.print("Introduza um número inteiro: ");
			int n1 = sc.nextInt();
		
		System.out.print("Introduza outro número: ");
			int n2 = sc.nextInt();
			
			int aux = n1;
			n1 = n2;
			n2 = aux;
			
		System.out.println(n1);
		System.out.println(n2);
	}
	
}
