import java.util.Scanner;
import java.lang.Math;

public class EX3{
	
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.print("Introduza o seu peso: ");
		double peso = sc.nextDouble();
		System.out.print("Introduza a sua altura: ");
		double altura = sc.nextDouble();
		
		double imc = peso/(Math.pow(altura, 2));
		
		if(imc<14.5){
			System.out.print("Desnutrição");
		}
			else if( imc>=14.5 && imc<20){
				System.out.print("Peso abaixo do normal");
			}
			else if( imc>= 20 && imc<25){
				System.out.print("Peso normal");
			}
			else if( imc>= 25 && imc<30){
				System.out.print("Sobrepeso");
			}
			else if( imc>= 30 && imc<40){
				System.out.print("Obesidade");
			}
			else if( imc>= 40){
				System.out.printf("Obesidade mórbida");
			}		
		
	}
}
		
