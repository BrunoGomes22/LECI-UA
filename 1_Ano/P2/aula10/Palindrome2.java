import p2utils.Stack;
import p2utils.Queue;

public class Palindrome2{
	public static void main(String[] args){
		String text = String.join("",args);
		text = text.toLowerCase();
		Queue<Character> queue = new Queue<>();
		Stack<Character> stack = new Stack<>();
		
		for(int i = 0; i<text.length();i++){
			if(Character.isDigit(text.charAt(i)) && Character.isLetter(text.charAt(i))){
				stack.push(text.charAt(i));
				queue.in(text.charAt(i));
			}	
		}
		
		while(stack.size()!=0){
			if(stack.top().equals(queue.peek())){
				stack.pop();
				queue.out();
			}
			else{
				System.out.print("Não é palíndromo!\n");
			}
		}
		System.out.print("A palavra é um palíndromo!\n");
	}
}
