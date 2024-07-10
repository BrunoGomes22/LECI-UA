package vii3;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Document {
    private String name;

    public Document(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public String[] getContent() {
        List<String> content = new ArrayList<>();
        try{
            File file = new File("vii3/" + this.name);
            Scanner sc = new Scanner(file);
            while (sc.hasNextLine())
            {
                String line = sc.nextLine();
                content.add(line);
            }
            sc.close();
        }
        catch(FileNotFoundException e) {
            System.out.println("File not found");
        }
        String[] array_content = new String[content.size()];
        for (int i = 0; i < content.size(); i++){
            array_content[i] = content.get(i);
        }
        return array_content;
    }

    public String getText() {
        String text = "";
        String[] content = this.getContent();
        for (String line : content) {
            text += line + "\n";
        }
        return text;
    }

    @Override
    public String toString() {
        return name;
    }
}
