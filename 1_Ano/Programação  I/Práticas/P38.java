import java.util.Scanner;

public class P38
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Introduza um valor para A:");
		int a = sc.nextInt();
		System.out.print("Introduza uma valor para B:");
		int b = sc.nextInt();
		for(int i = a; i<=b; i++){
			if(i%2!=0)
			System.out.println(i);
		}
	}
}
