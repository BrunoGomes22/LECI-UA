import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import org.stringtemplate.v4.*;

public class setlangMain {
    public static void main(String[] args) {
        try {
            // Read the entire input file
            Scanner sc = new Scanner(System.in);
            StringBuilder inputText = new StringBuilder();
            while (sc.hasNextLine()) {
                inputText.append(sc.nextLine()).append("\n");
            }
            sc.close();

            // Create a CharStream that reads from inputText
            CharStream input = CharStreams.fromString(inputText.toString());

            // Create a lexer that feeds off of input CharStream
            setlangLexer lexer = new setlangLexer(input);

            // Create a buffer of tokens pulled from the lexer
            CommonTokenStream tokens = new CommonTokenStream(lexer);

            // Create a parser that feeds off the tokens buffer
            setlangParser parser = new setlangParser(tokens);

            // Begin parsing at program rule
            ParseTree tree = parser.program();

            // Visit the parse tree and perform interpretation
            Interpreter visitor = new Interpreter();
            //visitor.visit(tree);

            // Generate Java code using CodeGenerator
            CodeGenerator codeGen = new CodeGenerator();
            String generatedCode = codeGen.visit(tree);


            // Write the generated code to a file
            try (FileWriter fileWriter = new FileWriter(new File("GeneratedProgram.java"))) {
                fileWriter.write(generatedCode);
                System.out.println("Generated code written to GeneratedProgram.java");
            }


        } catch (IOException | RecognitionException e) {
            e.printStackTrace();
            System.exit(1);
        }
    }
}

