package viii2;
import java.io.*;
import java.nio.file.*;
import java.nio.charset.*;
import java.util.*;

public class TextReader implements TextInterface {
    private Scanner scanner;

    public TextReader(String filename) throws IOException {
        Path path = Paths.get("viii2/" + filename);
        Charset charset = StandardCharsets.UTF_8;
        String content = new String(Files.readAllBytes(path), charset);
        this.scanner = new Scanner(content);
    }

    public boolean hasNext() {
        return scanner.hasNextLine();
    }

    public String next() {
        return scanner.nextLine();
    }
}