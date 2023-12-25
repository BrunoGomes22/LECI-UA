import java.io.File;

public class FindFile {

	public static void main(String[] args) {
		assert args.length == 2 : "Must have 2 arguments!";
		String fileName = args[0];
		String dirPath = args[1];
		
		try {
			File dir = new File(dirPath);
			findFile(dir,fileName);
		}
		catch(NullPointerException e) {
			System.out.println("Invalid path!");
			System.exit(1);
		}

	}
	
	public static void findFile(File dir, String fileName) {
		File[] files = dir.listFiles();
		for(int i = 0; i<files.length;i++) {
			if(files[i].isDirectory()) {
				findFile(files[i],fileName);
			}
			else if(files[i].isFile()) {
				if(files[i].getName().indexOf(fileName) != -1){ //if(files[i].getName().equals(fileName)) a)
					System.out.println(files[i].getPath());
				}
			}
		}
	}

}
