import java.util.Scanner;
import java.lang.Math;

public class P35
{
	public static void main(String[] args)
	{
		double c;
		for( int a = 0; a<100; a++){
			for( int b = 0; b<100; b++){
				if(a<b){
					c = Math.sqrt(Math.pow(a,2)+Math.pow(b,2));
					if( c == (int)c){
						System.out.println(a+ "+" +b+ "=" +c);
					}			
				}
			}
			
		}
	}
}
		
				
