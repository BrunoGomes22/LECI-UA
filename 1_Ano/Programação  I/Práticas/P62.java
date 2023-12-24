import java.util.Scanner;

public class P62{
	public static final Scanner sc = new Scanner(System.in);
	
	public static final void main(String[] args){
		int inputs[] = new int[100];
		
		System.out.print("Introduza os valores: \n");
		for(int i=0;i<100;i++){
			inputs[i] = sc.nextInt();
			if(inputs[i]<0){
				break;
			}
		}
		
		System.out.print("Introduza o número que pretende contar: ");
			int n = getIntRange(0, Integer.MAX_VALUE);
			
			int counter = 0;
			for(int j=0;j<100;j++){
				if(inputs[j]==n){
					counter++;
				}
			}
			System.out.printf("O número %d foi repetido %d vezes.", n, counter);	 					
	}	
			
			
	public static int getIntRange(int min, int max){
		int n = sc.nextInt();
		while( n<min || n>max ){
			System.out.printf("Introduza um número compreendido entre %d e %d: ", min, max);
			 n = sc.nextInt();
		}
		return n;
	}

}
	

		
		
	
		
		
