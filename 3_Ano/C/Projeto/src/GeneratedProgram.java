import java.util.*;

public class GeneratedProgram {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Set<Integer> s1 = new HashSet<>(Arrays.asList(1,2,3));
        System.out.println("Set: " + s1);
        int i = 5;
        System.out.println("Another: " + new HashSet<>(Arrays.asList(i * 3 / 2 - 3,i)));
        Set<String> st=new HashSet<>();
        System.out.print("set: ");
        String input = scanner.nextLine();
        for (String item : input.split(",")) {
            st.add(String.valueOf(item.trim()));
        }

        System.out.println("Set: " + st);
    }
}
