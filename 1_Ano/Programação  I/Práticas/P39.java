import java.util.Scanner;

public class P39
{
	public static void main(String[] args)
	{
		Scanner sc = new Scanner(System.in);
		System.out.print("Introduza um valor inteiro positivo:");
		int a = sc.nextInt();
		int d = 0;
		for(int i = 0; i<=a; i++){
			if(i%2==0 && i!=0){
			d = i+d;
			System.out.println(i);
			}
		}
		System.out.print(d);
	}
}
