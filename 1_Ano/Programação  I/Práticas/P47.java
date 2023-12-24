import java.util.Scanner;

public class P47{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.print("Introduza um número (inteiro e não negativo): ");
		int i = sc.nextInt();
		int a = i;
		int r = 0;
		while(i!=0){
			int digito = i%10;
			r = digito + r*10;
			i /=10;
		}
		System.out.printf("%d -> %d",a ,r);
	}
}
			
		
