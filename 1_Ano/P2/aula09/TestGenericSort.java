import static p2utils.Sorting.*;
import java.util.Arrays; //para dar print no array

public class TestGenericSort{
	public static void main(String[] args){
		System.out.println("Before: ");
		System.out.println(Arrays.toString(args)); //returns a string representation of the contents of the specified int array
		System.out.println("After: ");
		mergeSort(args, 0, args.length);
		System.out.println(Arrays.toString(args));
	}
}

