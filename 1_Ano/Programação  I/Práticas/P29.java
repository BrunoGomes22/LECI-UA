import java.util.Scanner;

public class P29
{
	public static void main(String[] args){
		
		Scanner sc = new Scanner(System.in);
		System.out.print("Introduza a temperatura:");
		double temp = sc.nextDouble();
		System.out.print("Celsius ou Fahrenheit?");
		char escolha = sc.next().charAt(0);
		if (escolha == 'c'){
			
			double formula = 1.8*temp+32;
			System.out.printf(" %4.1f ºCelsius é equivalente a %4.1f ºFahrenheit ", temp, formula);
		}
		else if (escolha == 'f'){
			
			double formula = (temp-32)/1.8;
			System.out.printf(" %4.1f ºFahrenheit é equivalente a %4.1f ºCelsius", temp, formula);
		}
}
}
		
