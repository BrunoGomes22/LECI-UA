import java.io.*;
import java.util.Scanner;

public class FICHEIRO{
	public static void main (String[] args)throws IOException{
		File t = new File("sample.txt");
		File tOut = new File("output.txt");
		PrintWriter f = new PrintWriter(tOut);
		Scanner x = new Scanner(t);    
		while(x.hasNextLine()){
			String linha = x.nextLine();
			String dados[] = linha.split(" ");
			System.out.println(dados[0]);
			System.out.println(dados[1]);
			System.out.println(linha);
			f.println(linha);
		}
		f.close();
		x.close();
	}
}
