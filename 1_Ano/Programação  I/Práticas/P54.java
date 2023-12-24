import java.util.Scanner;

public class P54{
	public static final Scanner sc = new Scanner(System.in);
	
	public static void main (String args[]){
		System.out.print("Introduza um valor entre 1 e 10: ");
		int m = getIntRange(1,10);
		
		for(int i=m;0<i;i--){
			System.out.printf("%d! = %d\n",i ,fact(i));
		}
	}
				
		public static int getIntRange(int min, int max){
				int n = sc.nextInt();
				while( n<min || n>max ){
				System.out.printf("Número inválido. Introduza um número de %d a %d: ",min ,max);
				 n = sc.nextInt();
			 }
			 return n;
		 }
		 
		 public static int fact(int n){
				int fact = 1;
				for( int i = 1; i<=n; i++){
					fact *= i;
				}
				return fact;
			}
		}

