import java.util.Scanner;

public class EX7{
	
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.print("Introduza um número: ");
		int n1 = sc.nextInt();
		System.out.print("Introduza um número: ");
		int n2 = sc.nextInt();
		System.out.print("Introduza um número: ");
		int n3 = sc.nextInt();
		if((n1<n2) && (n2<n3)){
			System.out.println("Ordem crescente: " + n1 + " " + n2 + " " + n3 );
		}
		else if((n1<n2) && (n2>n3)){
			System.out.println("Ordem crescente: " + n1 + " " + n3 + " " + n2 );
		}
		else if((n1>n2) && (n2<n3)){
			System.out.println("Ordem crescente: " + n2 + " " + n1 + " " + n3 );
		}
		else if((n1>n2) && (n2>n3)){
			System.out.println("Ordem crescente: " + n2 + " " + n3 + " " +n1 );
		}
		else if((n3<n1) && (n1<n2)){
			System.out.println("Ordem crescente: " + n3 + " " + n1 + " " +n2 );
		}
		else{
			System.out.println("Ordem crescente: " + n3 + " " + n2 + " " +n1 );
		}
	}
}
