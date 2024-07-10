import java.io.File;  // Import the File class
import java.io.FileNotFoundException;  // Import this class to handle errors
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner; // Import the Scanner class to read text files

public class ReadFile {
  static List<String> sopa = new ArrayList<String>();
  static List<String> list_words = new ArrayList<String>();
  static boolean valid = true; // we assume in the beggining that text file is valid.
  static int MAXIMUMSIZE = 40;

  public static void main(String[] args) {
    game("sdl_01.txt");
  }
  
  public static void game(String filename) {
    
    try {
      File myObj = new File(filename);
      Scanner myReader = new Scanner(myObj);
      int numberLines = 0; int actual = 0; int previous = 0;

      // First line
      String line = myReader.nextLine();
      previous = line.length();
      // System.out.println(line);

      Boolean correct_text_file = false; // default: assume is wrong text file
      if(hasLowerCaseLetter(line) == false && wordHasOnlyAlphabeticCharacters(line)) { // Is uppercase
        sopa.add(line);
        numberLines++;
        correct_text_file = true;
      } else {
        valid = false;
        // System.out.println("Answer: Wrong text file!");
        
      }

      
      if(correct_text_file) {
        while (myReader.hasNextLine()) {
          if( numberLines > MAXIMUMSIZE ) {
            // System.out.println("Size is incorrect. Maximum 40x40");
            valid=false; break;
          } 

          line = myReader.nextLine();
          actual = line.length();
          // System.out.println(line);

          if( actual != previous) { // words don't have the same size
            // System.out.println("One of 2 situations: incorret text file or start of list of words!");
            break;
          }
          
          // All letters should be uppercase -> If some character is lowercase -> final list of words
          // Traverse the string
          int aux = 0;
          for (int i = 0; i < line.length(); i++) {
            // Print current character
            // System.out.println(line.charAt(i) + " ");
            if( 'a' <= line.charAt(i) && line.charAt(i) <= 'z') { // Lowercase
              // System.out.printf("Lowercase character \"%s\". Start of list of words! \n", line.charAt(i));
              aux = i;
              break;
            }
          }

          if( 'a' <= line.charAt(aux) && line.charAt(aux) <= 'z') { // Lowercase
            break;
          }
          if (wordHasOnlyAlphabeticCharacters(line) == false) {
            valid = false;
            break;
          }
          sopa.add(line);
          numberLines++;
        }
      }
      
      // Check way occurence of break -> If word have all letters uppercase is wrong text file.
      // If word have some letter lowercase it's because we start the list of words.
      // Traverse the string
      correct_text_file = false;
      if( actual != previous) { // words don't have the same size
        if(hasLowerCaseLetter(line)) {
          // System.out.println("Answer: Size was different because we start list of words!");
          correct_text_file = true;
        } else {
          valid = false;
          // System.out.println("Answer: Wrong text file!");
        }
      }  

      
      if(correct_text_file == true) {
        String[] words = line.split("[;\\s\n]+");
        // first line of list of words
        for(int i=0; i < words.length; i++) {
          list_words.add(words[i]);
        }

        // Construct list of words. In list, words can only be lowercase ou mixed. CANNOT BE UPPERCASE
        while (myReader.hasNextLine()) {
          line = myReader.nextLine();
          // System.out.printf("Line: %s \n", line);
          // Separate line by ";" or empty spaces or '\n'
          // Split the input string using the specified delimiters
          words = line.split("[;\\s\n]+");
          
          for(int i=0; i < words.length; i++) {
            // System.out.println(words[i]);
            if(hasLowerCaseLetter(words[i])) { // If word has one lowercase letter means that isn't UPPERCASE
              list_words.add(words[i]);
            } else {
              // System.out.println("ERROR. List of words have a word all UPPERCASE.");
              valid = false; break;
            }
          }

          if(valid==false) {
            break;
          }
        }
      }


      // System.out.printf("Number lines (uppercase): %s \n", numberLines);
      // System.out.printf("Size of last word: %s \n", previous);
      
      if(numberLines != previous) { // isn't square
        valid = false;
        // System.out.println("ERROR. Isn't a square! Num lines != Size of last word");
      }
      myReader.close();

    } catch (FileNotFoundException e) {
      valid = false;
      // System.out.println("An error occurred.");
      e.printStackTrace();
    }

    // System.out.println();

    if( sopaIsValid() ) {
      // System.out.println("Sopa: " + sopa);
      // System.out.println("List of words: " + list_words);
    } else {
      // System.out.println("Sopa is invalid!");
    }
    

  }

  private static boolean wordHasOnlyAlphabeticCharacters(String line) {
    boolean aux = true;
    for (int i = 0; i < line.length(); i++) {
      // Print current character
      // System.out.println(line.charAt(i) + " ");
      if( Character.isLetter(line.charAt(i)) == false) { // Lowercase
        // System.out.println("Only alphabetic characters! ");
        aux = false;
        break;
      }
    }
    return aux;
  }

  private static boolean hasLowerCaseLetter(String line) {
    Boolean correct_text_file = false; // default: assume is wrong text file
    for (int i = 0; i < line.length(); i++) {
      // Print current character
      // System.out.println(line.charAt(i) + " ");
      if( 'a' <= line.charAt(i) && line.charAt(i) <= 'z') { // Lowercase
        correct_text_file = true;
        break;
      }
    }

    return correct_text_file;
  }

  public static boolean sopaIsValid() {
    return valid && !sopa.isEmpty();
  }
}