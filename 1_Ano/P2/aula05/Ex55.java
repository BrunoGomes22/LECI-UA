import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

public class Ex55 {

	public static void main(String[] args) {
		assert args.length >= 1;
		int n = 0;
		
		try {
			 n = Integer.parseInt(args[1]);
		}
		catch(NumberFormatException e) {
			System.out.print("Second argument must be a number!\n");
			System.exit(1);
		}
		
		try {
			File cut = new File(args[0]);
			Scanner sc = new Scanner(cut);
			
			while(sc.hasNextLine()) {
				String[] words = sc.nextLine().split("[ \t]+");
				String nWord = "";
				if(words.length>=n) {
				nWord = words[n-1];
				System.out.println(nWord);
				}
				else {
				System.out.println("\t");
				}
				
			}
			sc.close();
		}
		catch(FileNotFoundException e){
			System.out.print("File doesn't exist!\n");
			System.exit(2);
		}
	}

}
