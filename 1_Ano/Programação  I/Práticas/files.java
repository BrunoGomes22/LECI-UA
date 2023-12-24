import java.io.File;
import java.util.Scanner;

public class Ficheiro{
	public static void main (String[] args){
		File t = new File("sample.txt");
		Scanner x = new Scanner(t);
		while(x.hasNextLine()){
			String linha = x.nextLine();
			System.out.println(linha);
		}
		x.close();
	}
}
