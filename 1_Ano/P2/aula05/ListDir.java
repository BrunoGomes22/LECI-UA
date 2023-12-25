import java.io.File;
import java.lang.Object;

public class ListDir{
	public static void main(String[] args){
		String dirPath;
		if(args.length >= 1){
			dirPath = args[0];
		}
		else{
			dirPath = "./";
		}
		
		try{
			File dir = new File(dirPath);
			listFiles(dir);
		}
		catch(NullPointerException e){
			System.out.println("Invalid path!");
			System.exit(1);
		}	
	}
	
	public static void listFiles(File dir){
		File[] dirList = dir.listFiles();
		for(int i = 0; i<dirList.length; i++){
			String perms = "";
			if(dirList[i].isDirectory()){
				perms += "D";
			}
			else{
				perms += "F";
			}
			
			if(dirList[i].canRead()){
				perms += "R";
			}
			else{
				perms += "-";
			}
			
			if(dirList[i].canWrite()){
				perms += "W";
			}
			
			else{
				perms = "-";
			}
			
			System.out.println(perms + "\t" + dirList[i].getPath());
		}
		
		
	}
	
	
}
