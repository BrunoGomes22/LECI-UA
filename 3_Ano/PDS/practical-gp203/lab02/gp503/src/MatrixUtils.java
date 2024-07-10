package src;
import java.io.*;
import java.util.*;

public class MatrixUtils {
    public static char [][] outputMatrix;

    public MatrixUtils(char[][] matrix, int size, String input_file, String output_file) throws IOException {
        printMatrixGen(matrix, size, input_file, output_file);
    }

    public MatrixUtils(char[][] matrix, int size, String input_file) throws IOException {
        printMatrixGenInput(matrix, size, input_file);
    }

    public MatrixUtils(char[][] matrix) {
        printMatrix(matrix);
    }

    public static void printMatrix(char[][] matrix) {
        for (char[] row : matrix) {
            for (char cell : row) {
                System.out.print(cell + " ");
            }
            System.out.println();
        }
    }

    public static void printMatrixSolver(char [][] matrix, int size, String output_file) throws IOException {
        FileWriter outputFile = new FileWriter("Examples/" + output_file);
        outputMatrix = new char[size][size];

        // Fill the output matrix with dots
        for(int row = 0; row < size; row++){
           for(int col = 0; col < size; col++){
               outputMatrix[row][col] = '.';
           }
        }

        // Write the output info to the file
        for(Map.Entry<String, int[]> e : WSSolver.outputInfo.entrySet()){
            String coords = e.getValue()[1] + "," + e.getValue()[2];
            String output = String.format("%-15s %-10d %-10s %s\n",
                 e.getKey(), e.getValue()[0], coords, findDirection(e.getValue()[3], e.getKey(), e.getValue()[1]-1, e.getValue()[2]-1));
            outputFile.write(output);
        }

        outputFile.write("\n");

        // Write the output matrix to the file
        for (char[] row : outputMatrix) {
            for (char cell : row) {
                outputFile.write(Character.toString(cell).toUpperCase() + " ");
            }
            outputFile.write("\n");
        }

        outputFile.close();
    }

    public static void printMatrixSolverInput(char [][] matrix, int size, String input_file) throws IOException {

        outputMatrix = new char[size][size];

        File sdl = new File(input_file);
        Scanner sc = new Scanner(sdl);

        // Fill the output matrix with dots
        for(int row = 0; row < size; row++){
           for(int col = 0; col < size; col++){
               outputMatrix[row][col] = '.';
           }
        }

        // Write the output info to the console
        for(Map.Entry<String, int[]> e : WSSolver.outputInfo.entrySet()){
            String output = String.format("%-15s %-8d%-2d,%-2d  %-8s",
                 e.getKey(), e.getValue()[0], e.getValue()[1], e.getValue()[2], findDirection(e.getValue()[3], e.getKey(), e.getValue()[1]-1, e.getValue()[2]-1));
            System.out.println(output);
        }

        System.out.println();

        // Write the output matrix to the console
        for (char[] row : outputMatrix) {
            for (char cell : row) {
                System.out.print(Character.toString(cell).toUpperCase() + " ");
            }
            System.out.println();
        }

        sc.close();
    }

    public static void printMatrixGen(char[][] matrix, int size, String input_file, String output_file) throws IOException {
        
        FileWriter fw = new FileWriter(output_file);
        
        File sdl = new File(input_file);
        Scanner sc = new Scanner(sdl);

        List<String> solutions = new ArrayList<>();

        // Get all the words to find in the matrix
        while (sc.hasNextLine()) {
            String line = sc.nextLine();
            if (!line.equals(line.toUpperCase())) {
                solutions.add(line);
                continue;
            }
        }

        Random rand = new Random();
        
        String alphabet = "";
        for (char c = 'A'; c <= 'Z'; c++) {
            alphabet += c;
        }

        // Fill the matrix with random letters
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                if (matrix[i][j] == '\u0000')
                    matrix[i][j] = alphabet.charAt(rand.nextInt(alphabet.length()));
            }
        }

        // Write the matrix to the file
        for (char[] row : matrix) {
            for (char cell : row) {
                System.out.print(Character.toString(cell).toUpperCase() + "");
                fw.write(Character.toString(cell).toUpperCase() + "");
            }
            fw.write("\n");
            System.out.println();
        }

        // Write the words to the file
        for (String solution : solutions) {
            String[] word = solution.split("[; ,]+");
            for (String w : word) {
                fw.write(w + ", ");
                System.out.print(w + ", ");
            }
        }
        System.out.println("\n");

        fw.close();
        sc.close();
    }

    public static void printMatrixGenInput(char[][] matrix, int size, String input_file) throws IOException {
        
        File sdl = new File(input_file);
        Scanner sc = new Scanner(sdl);

        List<String> solutions = new ArrayList<>();

        // Get all the words to find in the matrix
        while (sc.hasNextLine()) {
            String line = sc.nextLine();
            if (!line.equals(line.toUpperCase())) {
                solutions.add(line);
                continue;
            }
        }

        Random rand = new Random();
        
        String alphabet = "";
        for (char c = 'A'; c <= 'Z'; c++) {
            alphabet += c;
        }

        // Fill the matrix with random letters
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                if (matrix[i][j] == '\u0000')
                    matrix[i][j] = alphabet.charAt(rand.nextInt(alphabet.length()));
            }
        }

        // Write the matrix to the console
        for (char[] row : matrix) {
            for (char cell : row) {
                System.out.print(Character.toString(cell).toUpperCase() + "");
            }
            System.out.println();
        }

        // Write the words to the console
        for (String solution : solutions) {
            String[] word = solution.split("[; ,]+");
            for (String w : word) {
                System.out.print(w + ", ");
            }
        }
        System.out.println("\n");

        sc.close();
    }

    public static String findDirection(int dir, String word, int row, int col) {
        int[][] directions = {
            {0, 1},     // Right
            {1, 1},     // DownRight
            {1, 0},     // Down
            {1, -1},    // DownLeft
            {0, -1},    // Left
            {-1, -1},   // UpLeft
            {-1, 0},    // Up
            {-1, 1}     // UpRight
        };

        int[] direction = directions[dir];
        int dx = direction[0];
        int dy = direction[1];

        // Fill the output matrix with the words
        for (int i = 0; i < word.length(); i++) {
            outputMatrix[row][col] = word.charAt(i);
            row += dx;
            col += dy;
        }

        String[] directionNames = {
            "Right",
            "DownRight",
            "Down",
            "DownLeft",
            "Left",
            "UpLeft",
            "Up",
            "UpRight"
        };

        return directionNames[dir];
    }
    
}
