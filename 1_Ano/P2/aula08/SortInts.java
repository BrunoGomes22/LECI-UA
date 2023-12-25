import static java.lang.System.*;
import java.io.*;
import java.util.Scanner;

public class SortInts
{
  public static void main(String[] args) throws IOException {
	Scanner sc  = null;  
	SortedListInt listaInt = new SortedListInt();
    for(int i = 0; i < args.length; i++){
		File f = new File(args[i]);
		sc = new Scanner(f);
		while(sc.hasNextInt()){
			int var = sc.nextInt();
			listaInt.insert(var);
			
			
			
		}
		sc.close();
		
	}
	listaInt.print2();
	
  }
}


