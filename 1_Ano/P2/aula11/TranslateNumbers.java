import static java.lang.System.*;
import java.util.Scanner;
import java.io.IOException;
import java.io.File;
import p2utils.KeyValueList;
import java.util.Arrays;

public class TranslateNumbers{
	Scanner sc = new Scanner(System.in);
	public static void main(String[] args){
		
		KeyValueList<Integer> numbers = new KeyValueList<>();
		String[] values = new String[31];
		for (int a = 0; a < args.length; a++) { // Processa cada ficheiro
			File fin = new File(args[a]);
			try (Scanner sc = new Scanner(fin)) {
				while (sc.hasNextLine()) { // Processa cada linha
					String line = sc.nextLine();
					values = line.split(" - ");
					numbers.set(values[1], Integer.parseInt(values[0]));
					
				}
				
        
			}
			catch (Exception e) {
				err.println("ERRO: " + e.getMessage());
			}
		}
		// Leitura do número
		Scanner sc = new Scanner(System.in);
		
		while(sc.hasNextLine()){
			String input = sc.nextLine();
		if(numbers.contains(input)){
			int valor = numbers.get(input);
			System.out.print(valor+"\n");
		}
		else{
			System.out.print(input+"\n");
		}
	}
	}
	
}
