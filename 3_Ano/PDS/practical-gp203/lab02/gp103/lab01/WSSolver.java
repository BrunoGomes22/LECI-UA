import java.util.HashMap;
import java.util.List;


public class WSSolver {
    protected String gamefile;

    protected List<String> sopa, wordlist, sortedWordList;
    protected HashMap<String, Integer[]> solution = new HashMap<>();
    protected char[][] SolutionBoard;

    protected int gamesize, lastRow, lastCol;
    protected boolean solved = false;

    public WSSolver(String gamefile) {
        this.gamefile = gamefile;
    }
    public WSSolver(){}

    public static void main(String[] args) {

        if(!validInput(args)) {
            System.exit(1);
        } else {
            WSSolver solver = new WSSolver(args[0]);
            solver.loadAndSolveGame(); 
            solver.printSolution();
        }    
    }

    private static boolean validInput(String[] args) {
        // Check if respect the format allowed: 
        // 1) $ java WSSolver sdl_01.txt
        if( (args.length < 1 || args.length > 1 ) ) {
            System.out.println("Usage: java WSSolver sdl_01.txt ");
            return false;
        }
        return true;
    }
    public void loadAndSolveGame() {
        ReadFile.game(this.gamefile);

        if (ReadFile.sopaIsValid()) {
            sopa = ReadFile.sopa;
            wordlist = ReadFile.list_words;
            gamesize = sopa.size();
            SolutionBoard = new char[gamesize][gamesize];

            SolveGame();
            // printSolution();
        }
    }

    protected boolean SolveGame() {
        // Ordenar por tamanho decrescente
        // evita que encontre uma posiçao "valida"
        // de uma subpalavra dentro de outra palavra
        sortedWordList = wordlist;
        sortedWordList.sort( (a, b) -> Integer.compare(b.length(), a.length()));
        
        for (int word = 0; word < wordlist.size(); word++) {
            String currentWord = wordlist.get(word);
            for (int row = 0; row < sopa.size(); row++) {
                for (int col = 0; col < sopa.size(); col++) {
    

                    int direction = findMatch(row, col, currentWord);
                    if (direction == -1){
                        continue;
                    }
                    
                    boolean sucessful = SaveMatch(currentWord, row, col, direction);
                    if (!sucessful) {
                        lastRow = row;
                        lastCol = col;
                        return false;
                    }
                }
            }
        }
        
        solved = true;
        return true;
    }

    // If a word appears twice, returns false else true
    protected boolean SaveMatch(String currentWord, int row, int col, int direction) {
        Integer[] match = new Integer[] {row, col, direction};

        if (solution.containsKey(currentWord)) {
            Integer[] firstFound = solution.get(currentWord);

            System.err.printf("Word \"%s\" appears twice!\nFound on (row %d, col %d) and now on (row %d, col %d)\n", 
                                currentWord, firstFound[0]+1, firstFound[1]+1, match[0]+1, match[1]+1);
            return false; 
        }
        
        solution.put(currentWord, match);
        addToSolutionBoard(row, col, currentWord, Direction.getDirection(direction));
        return true;
    }

    /**
     * 
     * @param row int
     * @param col int 
     * @param currentWord String
     * @return DIRECTION identification else -1 if match isn't found else 
     */
    public int findMatch(int row, int col, String currentWord){
        for (int dir = 0; dir < Direction.length; dir++) {
            Direction currentDirection = Direction.getDirection(dir);

            if (!isWordPresent(row, col, currentWord, currentDirection)){
                continue;
            }

            // To prevent invalid subword finds
            if (!isSpotFree(row, col, currentWord, currentDirection)){
                continue;
            }

            return dir;
        }
        return -1;
    }


    public boolean isSpotFree(int row, int col, String currentWord, Direction currentDirection) {
        for (int charPos = 0; charPos < currentWord.length(); charPos++){
            if (!isValidPosition(row, col) || 
                SolutionBoard[row][col] != '\0'){
                return false;
            } 
            col += currentDirection.col;
            row += currentDirection.row;
        }

        return true;
    }

    protected void addToSolutionBoard(int row, int col, String currentWord, Direction currentDirection) {
        for (int charPos = 0; charPos < currentWord.length(); charPos++){
            char currentLetter = currentWord.charAt(charPos);
            SolutionBoard[row][col] = Character.toUpperCase(currentLetter);
            
            col += currentDirection.col;
            row += currentDirection.row;
        }
    }


    public boolean isWordPresent(int row, int col, String word, Direction dir) {

        for (int charPosition = 0; charPosition < word.length(); charPosition++) {
            if ( !isValidPosition(row, col) )
                return false;
            
            char currentGameChar = sopa.get(row).charAt(col);
            char currentWordChar = Character.toUpperCase( word.charAt(charPosition));

            if (currentWordChar != currentGameChar)
                return false;

            col += dir.col;
            row += dir.row;
        }
        return true;
    }


    protected boolean isValidPosition(int row, int col) {
        return (0 <= row && row < gamesize) && (0 <= col && col < gamesize);
    }

    public boolean hasBeenSolved() {
        return solved;
    }


    public boolean isGameValid() {
        if (!ReadFile.sopaIsValid())
            return false;

        if (!hasBeenSolved()) {
            // É falso caso uma palavra apareça mais do que uma vez
            boolean success = SolveGame();

            if (!success) {
                return false;
            }
        }
        
        for(String word: wordlist){
            Integer[] foundWord = solution.getOrDefault(word, null);

            if (foundWord == null) {
                System.err.printf("Word \"%s\" not found!", word);
                return false;
            }
        }

        return true;
    }


    public void printSolution() {
        int ROW = 0,
            COL = 1,
            DIR = 2;

        for(String word: wordlist){
            Integer[] foundWord = solution.getOrDefault(word, null);

            if (foundWord == null) {
                System.err.printf("Word \"%s\" not found!", word);
                System.exit(1);
            }

            int row = foundWord[ROW]+1;
            int col = foundWord[COL]+1;

            Direction direction = Direction.getDirection(foundWord[DIR]);
            String directionLiteral = direction.name();

            System.out.printf("%-15s\t%d\t%d,%d\t%s\n", word, word.length(), row, col, directionLiteral);
        }

        printSolutionBoard();
    }


    protected void printSolutionBoard() {
        for(int row = 0; row < gamesize; row++) {
            for (int col = 0; col < gamesize; col++) {
                char character = SolutionBoard[row][col];
                System.out.print(character == '\0' ? ". " : character + " ");
            }
            System.out.println();
        }
    }
}   