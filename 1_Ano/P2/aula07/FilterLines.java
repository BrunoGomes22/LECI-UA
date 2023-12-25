import static java.lang.System.*;
import java.io.*;
import java.util.Scanner;
// import java.util.*;   // => "error: reference to LinkedList is ambiguous"
// java.util.LinkedList colide com p2utils.LinkedList!
import p2utils.*;

public class FilterLines
{
  public static void main(String[] args) throws IOException
  {
    if (args.length != 1) {
      err.printf("Usage: java -ea FilterLines text-file\n");
      exit(1);
    }
    File fil = new File(args[0]);
	
    // Criar listas para as linhas curtas, médias e longas.
    //...
	LinkedList <String> linhasCurtas = new LinkedList <>();
	LinkedList <String> linhasMedias = new LinkedList <>();
	LinkedList <String> linhasLongas = new LinkedList <>();
    Scanner sf = new Scanner(fil);
    // exceções poderiam ser intercetadas e mostrar mensagem de erro.
    while (sf.hasNextLine()) {
      String line = sf.nextLine();
      // Guardar linha na lista apropriada, consoante o tamanho.
      //...
		int numChar = line.length();
		if(numChar < 20){
			linhasCurtas.addLast(line);
		}
		else if( numChar >= 20 && numChar <= 40){
			linhasMedias.addLast(line);
		}
		else{
			linhasLongas.addLast(line);
		}
    }
    sf.close();

    // Escrever conteúdo das listas...
    out.println("Curtas---|---------|---------|---------|---------");
    linhasCurtas.print();

    out.println("Médias---|---------|---------|---------|---------");
    linhasMedias.print();

    out.println("Longas---|---------|---------|---------|---------");
    linhasLongas.print();
  }

}
