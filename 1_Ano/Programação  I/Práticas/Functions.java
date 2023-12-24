import java.util.Scanner;
public class Functions {
	public static final Scanner sc = new Scanner(System.in);

	public static void main (String args[]) {
		// Testar função sqr:
		System.out.printf("sqr(%f) = %f\n", 10.1, sqr(10.1));
		System.out.printf("sqr(%f) = %f\n", -2.0, sqr(-2.0));

		// Invoque as funções pedidas no enunciado para as testar:
		// Por exemplo, para testar func f (problema 5.2):
		System.out.printf("f(%d) = %f\n", 5, f(5));

		// Testar as restantes funções desenvolvidas
		System.out.printf("max(%f,%f) = %f\n", 3.1, 5.2, max(3.1, 5.2));
		System.out.printf("max(%d,%d) = %d\n", 3, 2, max(3, 2));
		System.out.println(poly3(4,3,5,6,1));
		System.out.println(fact(5));
		//System.out.println(getIntPos());
		System.out.println(getIntRange(100,1000));
		System.out.println(printNtimes(10, pia));
		//int ano = getIntPos("Ano? ");
		//System.out.printf("ano = %d\n", ano);

	}

	/*
	 * sqr - calcula o quadrado de um número (real).
	 */
	public static double sqr(double x) {
		double y;	// variavel para resultado
		y = x*x;	// calculo do resultado a partir dos dados
		return y;	// devolver o resultado
	}
	
	public static double f(double n){
		return 1/(1+Math.pow(n,2));
	}
	
	public static double max(double a, double b){
		if(a>b){
			return a;
		}
			else{
				return b;
			}
		}
		
		public static int max(int a, int b){
			if(a>b){
			return a;
		}
			else{
				return b;
			}
		}

		public static double poly3(double a, double b, double c, double d, double x){
			return a*Math.pow(x,3) +b*Math.pow(x,2) + c*x +d;
		}
		
		public static int fact(int n){
			int fact = 1;
			for( int i = 1; i<=n; i++){
				fact *= i;
			}
			return fact;
		}
		
		public static int getIntPos(){
			int n = 0;
		do{
			System.out.print("Introduza um valor inteiro positivo: ");
			n = sc.nextInt();
		}while(n>=0);
		return n;
	}
	
		public static int getIntRange(int min, int max){
			int n = sc.nextInt();
			while( n<min || n>max ){
			System.out.printf("Número inválido. Introduza um número de %d a %d: ",min ,max);
			 n = sc.nextInt();
			}
		return n;
	}
		
		public static void printNtimes(int n, String text){
			for(int i=0; i<n; i++){
				System.out.print(text);
			}
		}
				
	}
	// Defina as funções pedidas no enunciado:

