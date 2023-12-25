import static java.lang.System.*;
import java.util.Scanner;
import java.io.IOException;
import java.io.File;
import p2utils.KeyValueList;

public class CountWords
{

  public static void main(String[] args) {
    KeyValueList<Integer> counts = new KeyValueList<>();

    for (int a = 0; a < args.length; a++) { // Processa cada ficheiro
      File fin = new File(args[a]);
      // Using a try-with-resources:
      try (Scanner scf = new Scanner(fin)) {
        while (scf.hasNextLine()) { // Processa cada linha
          String line = scf.nextLine();
          line = line.toLowerCase();
          // Divide a linha em "palavras", considerando como separador
          // qualquer sequência de 1 ou mais carateres não alfabéticos:
          String[] palavras = line.split("[^\\p{IsAlphabetic}]+");
          // (Sobre expressões regulares usadas no split: https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html)

          for (int i = 0; i < palavras.length; i++) { // Processa cada palavra
            if(counts.contains(palavras[i])){
				counts.set(palavras[i], counts.get(palavras[i])+1);
			}
			else{
				counts.set(palavras[i], 1);
			}

          }
        }
      }
      catch (Exception e) {
        err.println("ERRO: " + e.getMessage());
      }
    }
    out.println(counts.toString("Results:\n", ";\n", "\nEnd"));
    out.println(counts.toString()); // mesma lista, outro formato
    mostFrequent(counts);
  }

  // Find and print the key with most occurrences
  // and its relative frequency.
  static void mostFrequent(KeyValueList<Integer> counts) {
    // Completar...
    String[] chaves = counts.keys();
    int totalPalavras = 0;
	String chaveMax = null;
	int max = 0;
	for(String c : chaves){
		totalPalavras += counts.get(c);
		if(chaveMax == null){  
			 max = counts.get(c);
			chaveMax = c;
		}
	
		else if(counts.get(c) > max){
			max = counts.get(c);
			chaveMax = c;
			
		}
		
	}
		
	double freq =(double) max/totalPalavras;
	System.out.println("\nFrequência :" + freq + "\n");
	System.out.println("\nMáximo :" + max + "\n");
	System.out.println("\nChave máxima: " + chaveMax + "\n");
	}
  }


