import java.util.Scanner;

public class P36
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Largura do retângulo:");
		int l = sc.nextInt();
		System.out.print("Comprimento do retângulo:");
		int c = sc.nextInt();
		 for(int a=1;a<=l; a++){
			 System.out.print("\n");
			  for(int b=1;b<=c; b++){
				  System.out.print("*");
			  }
			 }
	}
}
		 
			 
