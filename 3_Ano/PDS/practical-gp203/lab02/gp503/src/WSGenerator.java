package src;
import java.util.*;
import java.io.*;

public class WSGenerator {

    public static char[][] matrix(int size) {
        char[][] matrix = new char[size][size];
        return matrix;
    }

    public static void generateWS(char[][] matrix, String input_file, String output_file) throws IOException {

        try {
            File sdl = new File(input_file);
            Scanner sc = new Scanner(sdl);

            List<String> solutions = new ArrayList<>();
            List<String> words = new ArrayList<>();

            // Get all the words to find in the matrix
            while (sc.hasNextLine()) {
                String line = sc.nextLine();
                if (!line.equals(line.toUpperCase())) {
                    solutions.add(line);
                    continue;
                }
            }

            for (String solution : solutions) {
                String[] word = solution.split("[; ,]+");
                words.addAll(Arrays.asList(word));
            }

            Random rand = new Random();

            
            for (String word : words) {
                // Check if word fits within the matrix
                if (word.length() > matrix.length) {
                    System.err.println("ERROR: Word \"" + word + "\" does not fit within the matrix size.");
                    System.exit(1);
                }

                // Place word in matrix
                boolean wordPlaced = false;
                while (!wordPlaced) {
                    int word_size = word.length();
                    int row = rand.nextInt(matrix.length);
                    int col = rand.nextInt(matrix.length);
                    int direction = rand.nextInt(8);

                    boolean canPlaceWord = true;
                
                    for (int i = 0; i < word_size; i++) {
                        int newRow = row;
                        int newCol = col;
                        switch (direction) {
                            case 0: newCol += i; break;              // Right
                            case 1: newRow += i; newCol += i; break; // Down-Right
                            case 2: newRow += i; break;              // Down
                            case 3: newRow += i; newCol -= i; break; // Down-Left
                            case 4: newCol -= i; break;              // Left
                            case 5: newRow -= i; newCol -= i; break; // Up-Left
                            case 6: newRow -= i; break;              // Up
                            case 7: newRow -= i; newCol += i; break; // Up-Right
                        }
                        if (newRow < 0 || newRow >= matrix.length || newCol < 0 || newCol >= matrix.length ||
                            (matrix[newRow][newCol] != '\u0000' && matrix[newRow][newCol] != word.charAt(i))) {
                            canPlaceWord = false;
                            break;
                        }
                    }

                    // Place word in matrix
                    if (canPlaceWord) {
                        for (int i = 0; i < word_size; i++) {
                            int newRow = row;
                            int newCol = col;
                            switch (direction) {
                                case 0: newCol += i; break;
                                case 1: newRow += i; newCol += i; break;
                                case 2: newRow += i; break;
                                case 3: newRow += i; newCol -= i; break;
                                case 4: newCol -= i; break;
                                case 5: newRow -= i; newCol -= i; break;
                                case 6: newRow -= i; break;
                                case 7: newRow -= i; newCol += i; break;
                            }
                            matrix[newRow][newCol] = word.charAt(i);
                        }
                        // Mark word as placed
                        wordPlaced = true;
                    }
                }
            }

            if (output_file.equals("")) {
                MatrixUtils.printMatrixGenInput(matrix, matrix.length, input_file);
            } else {
                MatrixUtils.printMatrixGen(matrix, matrix.length, input_file, output_file);
            }

            sc.close();

        } catch (FileNotFoundException e) {
            System.err.println("ERROR: File not found");
            System.exit(1);
        }
    }

    public static void main(String[] args) throws IOException {
        if (args.length < 4) {
            System.err.println("Usage: WSGenerator -i <input_file> -s <size> [-o <output_file>]");
            System.exit(1);
        }

        String input_file = args[1];
        int input_size = Integer.parseInt(args[3]);

        if (args.length == 6) {
            String output_file = args[5];
            generateWS(matrix(input_size), "Examples/" + input_file, "Examples/" + output_file);
        } else {
            generateWS(matrix(input_size), "Examples/" + input_file, "");
        }

    }
}
