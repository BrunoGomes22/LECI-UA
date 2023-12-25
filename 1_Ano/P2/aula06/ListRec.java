import java.io.File;

public class ListRec {

	public static void main(String[] args) {
		assert args.length > 0;
		String dirPath = args.length >= 1 ? args[0] : "./" ;
		try {
			File dir = new File(dirPath);
			listRec(dir);
		}
		catch(NullPointerException e) {
			System.out.print("Invalid directory");
			System.exit(1);
		}
	}

	public static void listRec(File dir) {
		File[] dirList = dir.listFiles();
		for(int i = 0; i<dirList.length;i++) {
			if(dirList[i].isFile()) {
				System.out.println(dirList[i].getPath());
			}
			else if(dirList[i].isDirectory()) {
				System.out.println(dirList[i].getPath());
				listRec(dirList[i]);
			}
		}
	}
}
