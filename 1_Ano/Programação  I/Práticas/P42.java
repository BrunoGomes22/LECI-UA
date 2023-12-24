import java.util.Scanner;

public class P42{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		double n = 1;
		double produto = 1;
		do{
			System.out.print("Introduza uma lista de números (terminada com 0):");
			n = sc.nextInt();
				if( n==0 ){
				break;
			}
			produto *= n;
		   }while( n!=0 );
		   System.out.printf("Produto = %3.1f", produto);
	}
}
		   
			
				
			
	
		
