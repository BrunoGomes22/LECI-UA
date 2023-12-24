import java.util.Scanner;

public class P46{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.print("Introduza um número inteiro:");
		int n1 = sc.nextInt();
		System.out.print("Introduza outro número inteiro:");
		int n2 = sc.nextInt();
		while(true){
			if( n2==0 ){
				System.out.print("MDC: "+n1);
				break;
			}
			else{
				int temp = n1;
				n1 = n2;
				n2 = temp%n2;
			}			
		}
	}
}
				
			
		
		
