import java.util.Scanner;
import java.lang.Math;

public class P211
{
	public static void main(String[] args){
		
		Scanner sc = new Scanner(System.in);
		System.out.print("Insira um valor para 'a':");
		double a = sc.nextDouble();
		System.out.print("Insira um valor para 'b':");
		double b = sc.nextDouble();
		System.out.print("Insira um valor para 'c':");
		double c = sc.nextDouble();
		double d = Math.pow(b,2)-4*a*c;
		if( d >= 0){
			
			double x1 = (-b + Math.sqrt(d))/(2*a);
		    double x2 = (-b - Math.sqrt(d))/(2*a);
		    System.out.printf( "As raízes de ax^2+bx+c são: %4.1f e %4.1f" ,x1 ,x2 );
		}
		else 
		
		    System.out.println("As raízes de ax^2+bx+c são imaginárias");
		     
	}
}

