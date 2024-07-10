package src;

import java.io.*;
import java.util.*;

public class WSSolver {

    public static Map<String, int[]> outputInfo = new LinkedHashMap<>();
    private static List<String> WordsFound = new ArrayList<>();
    private static List<String> solutions = new ArrayList<>();
    public static List<String> words = new ArrayList<>();
    private static int[] row = {0, 1, 1, 1, 0, -1, -1, -1};
    private static int[] col = {1, 1, 0, -1, -1, -1, 0, 1};
    private static int rowIndx = 0;
    private static char[][] matrix;
    private static int numbercols;
    private static Set<int[]> solvedCoords = new HashSet<>();
    
    public static void InsertMatrix(String line, int numCols, char[][] matrix){
        //check if matrix is too big
        if (numCols > 40) {
            System.err.println("ERROR: Matrix too big");
            System.exit(1);
        }

        //check if line is a solution
        if (!line.equals(line.toUpperCase())) {
            solutions.add(line);
            return;
        }

        char[] arr = line.toCharArray();

        //insert line in matrix
        for (int colIndx = 0; colIndx < arr.length; colIndx++) {
            
            //check if all characters are letters
            if (!Character.isLetter(arr[colIndx])) {
                System.err.println("ERROR: Not letter detected");
                System.exit(1);
            }
            matrix[rowIndx][colIndx] = arr[colIndx];
        }
        rowIndx++;

    }

    public static void findWord(char[][] matrix, List<String> words) {

        int rows = matrix.length;
        int cols = matrix[0].length;
    
        // Sort words by length in descending order
        words.sort((a, b) -> b.length() - a.length());
    
        for (String word : words) {

            int len = word.length();
            // Search for the word in the matrix
            outerLoop:
            for (int i = 0; i < rows; i++) {
                for (int j = 0; j < cols; j++) {
                    Boolean found = false;
                    for (int[] coord : solvedCoords) {
                        if (coord[0] == i && coord[1] == j) {
                            found = true;
                        }
                    }
                    // If the first letter of the word is found in the matrix
                    if (matrix[i][j] == Character.toUpperCase(word.charAt(0)) && !found) {
                        Integer dir = searchWord(matrix, word, i, j, len, row, col, null);
                        if (dir != null) {
                            int[] WordInfo = {len,i+1,j+1,dir};
                            outputInfo.put(word, WordInfo);
                            solvedCoords.add(new int[]{i, j});
                            WordsFound.add(word);
                            break outerLoop; // break for loops
                        }
                    }
                }
            }
        }
    }

    private static Integer searchWord(char[][] matrix, String word, int posRow, int posCol, int len, int[] row, int[] col, Integer dir) {
        
        int rows = matrix.length;
        int cols = matrix[0].length;

        // Check if the position is out of bounds
        if (posRow >= rows || posRow < 0 || posCol >= cols || posCol < 0) {
            return null;
        }
    
        // Check if the letter in the matrix is different from the letter in the word
        if (matrix[posRow][posCol] != Character.toUpperCase(word.charAt(0))) {
            return null;
        }
    
        if (len == 1) {
            return 1;
        }
    
        // search for word in all directions
        for (Integer direction = 0; direction < row.length; direction++) {
            if (dir != null) {
                //make sure the direction is the same
                if (dir != direction) {
                    continue;
                }
            }
    
            int rd = posRow + row[direction];
            int cd = posCol + col[direction];
            Integer result = searchWord(matrix, word.substring(1), rd, cd, len - 1, row, col, direction);
            if (result != null) {
                return direction;
            }
        }
    
        return null;
    }

    public static void main(String[] args) throws IOException {
    
        if (args.length < 2) {
            System.err.println("Usage: WSSolver -i <input_file> [-o <output_file>]");
            System.exit(1);
        }
    
        String input_file = args[1];
    
        try {
            File sdl = new File("Examples/" + input_file);
            Scanner sc = new Scanner(sdl);
            
            String line2 = sc.nextLine();
            numbercols = line2.length();
    
            matrix = new char[numbercols][numbercols];
    
            InsertMatrix(line2,numbercols,matrix);   
    
            while (sc.hasNextLine()) {
                String line = sc.nextLine();
                InsertMatrix(line, numbercols, matrix);
            }
    
            // Get all the words to find in the matrix
            for (String solution : solutions) {
                String[] word = solution.split("[; ,]+");
                words.addAll(Arrays.asList(word));
            }
    
            for (String word : words) {
                outputInfo.put(word, new int[4]);
            }
            findWord(matrix, words);
            
            sc.close();
    
        } catch (FileNotFoundException e) {
            System.out.println("ERROR: File not found");
            e.printStackTrace();
        }
    
        if (args.length < 3) {
            MatrixUtils.printMatrixSolverInput(matrix, numbercols, "Examples/" + input_file);
        } else {
            String output_file = args[3]; 
            MatrixUtils.printMatrixSolver(matrix, numbercols, output_file);
            MatrixUtils.printMatrixSolverInput(matrix, numbercols, "Examples/" + input_file);
        }
    }
}

