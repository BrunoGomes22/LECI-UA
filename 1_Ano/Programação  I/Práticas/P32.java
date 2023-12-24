import java.util.Scanner;

public class P32
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Introduza um número para fazer a tabuada do mesmo:");
		int n = sc.nextInt();
		 for(int i = 1; i<=9; i++){ 
			 System.out.printf(" %2d * %2d = %3d\n" ,n ,i ,n*i );
		 }
	}
}
			
