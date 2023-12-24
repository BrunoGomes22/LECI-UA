import java.util.Scanner;

public class P44{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		double n = 1;
		double first = 1;
		int contador = 1;
		double soma = 0;
		System.out.print("Introduza um valor real(termina quando o primeiro elemento é igual ao ultimo):");
		first = sc.nextDouble();
		double maior = first, menor = first;
		do{
			System.out.print("Introduza um valor real(termina quando o primeiro elemento é igual ao ultimo):");
			n = sc.nextDouble();
			contador++;
			soma += n;			
			if ( maior<n ){
				maior = n;
			}
				else if(menor>n){
					menor = n;
				}
		}while ( first != n);
			double resultado = (soma + first)/contador;
			System.out.printf("Média = %3.1f\n", resultado);
			System.out.printf("Valor máximo = %3.1f e Valor mínimo = %3.1f\n", maior, menor);
			System.out.printf("Número de elementos = %d\n", contador);
			
		}
	}
 
			
