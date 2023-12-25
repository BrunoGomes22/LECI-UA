import java.util.LinkedList;


public class Applinkedlist{
	
	private static LinkedList <Integer> lista = new LinkedList <>();
	
	
	
	public static void main (String[] args){
		
		lista.addFirst(3);
		lista.addLast(10);
		
		
		System.out.println(lista.getFirst());
		System.out.println(lista.getLast());
		System.out.println(lista.size());
		lista.removeFirst();
		lista.removeLast();
		System.out.println(lista.isEmpty());
		
		for(Integer e : lista){
			System.out.println(e);
		}
	}
}
