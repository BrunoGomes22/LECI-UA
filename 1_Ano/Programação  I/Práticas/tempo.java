import java.util.Scanner;

public class tempo
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Introduza o tempo em segundos:");
		int segundos = sc.nextInt();
		/*int minutos = (int)segundos/60;
	
		//int horas = (int)minutos/60;
		segundos = segundos%60;
		minutos = minutos%60;*/
		int horas = (int) segundos/3600;
		segundos = segundos%3600;
		int minutos = (int) segundos/60;
		segundos = segundos%60;
		System.out.printf("%d:%d:%d",horas,minutos,segundos);
		sc.close();
		
	
			
		}
}
