import java.util.Scanner;

public class P49{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		int n = 0;
		int contador = 0;
		int soma = 0;
		double media = 0.0;
		
		do{
			System.out.print("Nota? ");
			n = sc.nextInt();
			if( n>=0 ){
				contador++;
				soma += n;
			}
		}while( n>=0 );
		
		media = (double)soma/contador;
		System.out.printf("Soma = %d\n", soma);
		System.out.printf("Média = %3.1f", media);
	}
}
