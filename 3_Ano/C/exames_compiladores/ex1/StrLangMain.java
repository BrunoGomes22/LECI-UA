import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import java.io.IOException;

public class StrLangMain {
   public static void main(String[] args) {
      if (args.length < 1) {
         System.err.printf("ERROR: incorrect number of arguments. Usage: java StrLangMain <filename.txt>\n");
         System.exit(1);
      }
      
      for(String s : args){
         compiler(s);
      }
      
   }

   public static void compiler(String filename){
      try {
         CharStream input = CharStreams.fromFileName(filename);
         // create a lexer that feeds off of input CharStream:
         StrLangLexer lexer = new StrLangLexer(input);
         // create a buffer of tokens pulled from the lexer:
         CommonTokenStream tokens = new CommonTokenStream(lexer);
         // create a parser that feeds off the tokens buffer:
         StrLangParser parser = new StrLangParser(tokens);
         // begin parsing at program rule:
         ParseTree tree = parser.program();
         if (parser.getNumberOfSyntaxErrors() == 0) {
            // print LISP-style tree:
            // System.out.println(tree.toStringTree(parser));
            Execute visitor0 = new Execute();
            visitor0.visit(tree);
         }
         
      } catch (RecognitionException e) {
         e.printStackTrace();
         System.exit(1);
      } catch (IOException e) {
         e.printStackTrace();
         System.exit(3);
      }
   }
}
