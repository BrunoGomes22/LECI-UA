import java.util.Scanner;
import java.io.*;

	public class P71{
		public static final Scanner sc = new Scanner(System.in);
		
		public static void main(String args[]) throws IOException
		{
			File file = setFileName();
			if (file.canRead())
			{
				System.out.print(" I can read the file. Content:");
				Scanner filer = new Scanner(file);
				while(filer.hasNextLine())
			System.out.print(filer.nextLine());
			}
			else
			System.out.print("I can't read the file");
		}
		
		public static File setFileName()
		{
			System.out.print("Insert file name: ");
			File file = new File(sc.nextLine());
			if (file.isFile()) return file;
			else return setFileName();
		}
	}
