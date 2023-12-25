import static java.lang.System.*;
import java.io.*;
import java.util.Scanner;
// import java.util.*;   // => "error: reference to LinkedList is ambiguous"
// java.util.LinkedList colide com p2utils.LinkedList!
import p2utils.*;

public class ex7_4
{
  public static void main(String[] args) throws IOException
  {
    if (args.length != 1) {
      err.printf("Usage: java -ea ex7_4 text-file\n");
      exit(1);
    }
    File fil = new File(args[0]);
	
    // Criar listas para as linhas curtas, médias e longas.
    //...
	LinkedList <String> linhas = new LinkedList <>();
    Scanner sf = new Scanner(fil);
    // exceções poderiam ser intercetadas e mostrar mensagem de erro.
    while (sf.hasNextLine()) {
      String line = sf.nextLine();
      // Guardar linha na lista apropriada, consoante o tamanho.
      //...
		int numChar = line.length();
		if(numChar < 20){
			linhas.addFirst(line);
		}
		else if(numChar > 40){
			linhas.addLast(line);
		}

    }
    sf.close();

    // Escrever conteúdo das listas...
 
    linhas.print();
  }

}
