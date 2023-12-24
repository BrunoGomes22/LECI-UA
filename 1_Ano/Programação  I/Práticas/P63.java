import java.util.Scanner;

public class P63{
	public static final Scanner sc = new Scanner(System.in);
	
	public static final void main(String[] args){
		int[] list = null;
		int counter = 0;
		int option = 0;
	do{
		counter++;	
		printOptions();
		option=sc.nextInt();
		if(option == 1) list=readSequence();
		if(option == 2) typeSequence(list);
		if(option == 3) System.out.printf("\n O valor máximo da sequência é %d \n\n", findMax(list));
		if(option == 4) System.out.printf("\n O valor mínimo da sequência é %d \n\n", findMin(list));
		if(option == 5) System.out.printf("\n A média dos elementos da sequência é %3.2f \n\n", average(list));
		if(option == 6) System.out.printf(evenSequence(list) ? "A sequência é constituida  apenas por números pares \n\n" : "A sequência contém números ímpares \n\n");
		if(option == 0) break;
		}while(counter<50);
		
		
	}	
		
	public static void printOptions(){
		System.out.println("1 - Ler uma sequência de números inteiros");
		System.out.println("2 - Escrever a sequência");
		System.out.println("3 - Calcular o máximo da sequência");
		System.out.println("4 - Calcular o mínimo da sequência");
		System.out.println("5 - Calcular a média da sequência");
		System.out.println("6 - Detetar se é uma sequência só constituída por números pares"); 
		System.out.println("0 - Terminar o programa");
		System.out.println("Opção ->");
	}
	
	public static int[] readSequence(){ 
		System.out.print("Introduza o tamanho da sequência: ");
		int size = sc.nextInt();
		System.out.print("Introduza os valores da sequência: ");
		int[] list = new int[size];
		for(int i = 0; i<size; i++){
			list[i]=sc.nextInt();
					
			}
			System.out.println("");
			return list;
	}		
	public static void typeSequence(int[] list){
		if(list.length == 0 || list == null) return;			
		for(int i: list){
		System.out.printf("%d ",i);
		}
		System.out.println("");
		System.out.println("");
		}
	
	public 	static int findMax(int list[]){
		int max = list[0];
		for( int i: list){
			if(i>max){
				max = i;
			}
		}
		return max;
	}
	
	public static int findMin(int list[]){
		int min = list[0];
		for( int i: list){
			if(min>i){
				min = i;
			}
		}
		return min;
	}
	
	public static double average(int list[]){
		double u = 0.0;
		for(int i=0;i<list.length;i++){
			 u = u + list[i];
			}
		double media = u/list.length;
		return media;
		}
		
	public static boolean evenSequence(int[] list){
		for(int i=0;i<list.length;i++){
			if(list[i]%2 !=0){
				return false;
			}
		}
		return true;	
	}								
}
	
	
	
	

