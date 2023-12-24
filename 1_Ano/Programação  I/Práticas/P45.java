import java.util.Scanner;

public class P45{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		int secret = (int)(100.0*Math.random()) + 1;
		int n = 0;
		int contador = 0;
		do{
			System.out.print("Introduza um número inteiro(entre 1 e 100):");
			n = sc.nextInt();
			contador ++;
			if(n>secret){
				System.out.print("Tentativa demasiado alta!\n");
			}
			else if(n<secret){
				System.out.print("Tentativa demasiado baixa!\n");
			}
		}while( n!=secret );
		System.out.printf("Tentativas = %d",contador);
	}
}
