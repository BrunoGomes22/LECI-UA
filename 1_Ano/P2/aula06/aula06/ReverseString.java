package aula06;

public class ReverseString {

	public static void main(String[] args) {
		for(int i = 0; i<args.length;i++) {
			System.out.println( args[i] + "->" + reverseString(args[i], args[i].length()));
		}
	}

	public static String reverseString(String str, int n) {
		if(n==0) {
			return "";
		}
		else {
			return str.charAt(n-1) + reverseString(str,n-1);
		}
		
	}
}
