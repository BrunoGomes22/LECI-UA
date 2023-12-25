import p2utils.Queue;
import p2utils.Stack;


public class Palindrome{
	public static void main(String[] args){
		String text = String.join("",args);
		text = text.toLowerCase();
		Queue<Character> queue = new Queue<>();
		Stack<Character> stack = new Stack<>();
		for(int i = 0; i< text.length(); i++){
			if( Character.isLetter(text.charAt(i)) && Character.isDigit(text.charAt(i)) ){
				queue.in(text.charAt(i));
				stack.push(text.charAt(i));
			}
		}
	
	while(stack.size()!=0){
		if(stack.top().equals(queue.peek())){
			queue.out();
			stack.pop();
		}
		else{
			System.out.print("Não é um palindromo!\n");
			return;
		}
	}
	System.out.print("É um palindromo!\n");
	
	}
	
}
