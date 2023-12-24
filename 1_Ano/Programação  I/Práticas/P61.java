import java.util.Scanner;

public class P61{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		int[] y = new int[3];
		for( int i = 0; i<y.length; i++){
			System.out.print("valor para posição " +i);
			y[i] = sc.nextInt();
		}
	}
}
