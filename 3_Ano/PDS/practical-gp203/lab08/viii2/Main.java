package viii2;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        TextInterface reader = new TextReader("someFileName.txt");
        reader = new TermFilter(new NormFilter(new CapitalizationFilter(reader)));

        while (reader.hasNext()) {
            System.out.println(reader.next());
        }
    }
}