import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Random;
import java.util.Scanner;

public class WSGenerator extends WSSolver {
    private String wordfile,
                   savefile;
    Random rand;

    public static void main(String[] args) {
        String wlist = null;
        String size = null;
        String sopa = null;

        // Format: 1) $ java WSGenerator -i wordlist_1.txt -s 12
        //         2) $ java WSGenerator -i wordlist_1.txt -s 12 –o sdl_01.txt
        if(!validInput(args)) {
            System.exit(1); 
        } else {    
            for(int i=0; i<args.length;i++) {
                switch(args[i]) {
                    case "-i":
                        if(i+1 < args.length) {
                            wlist = args[++i];
                        } else {
                            System.out.println("Missing argument for -i");
                            System.exit(1);
                        }
                        break;
                    case "-s":
                        if(i+1 < args.length) {
                            size = args[++i];
                        } else {
                            System.out.println("Missing argument for -s");
                            System.exit(1);
                        }
                        break;
                    case "-o":
                        if(i+1 < args.length) {
                            sopa = args[++i];
                        } else {
                            System.out.println("Missing argument for -o");
                            System.exit(1);
                        }
                        break;    
                }
            }
            WSGenerator generator = new WSGenerator(wlist, sopa, Integer.valueOf(size));
            generator.GenerateWordSoup();
        } 
    }

    private static boolean validInput(String[] args) {
        // Check if respect the formats allowed:
        // 1) $ java WSGenerator -i wordlist_1.txt -s 12
        // 2) $ java WSGenerator -i wordlist_1.txt -s 12 –o sdl_01.txt


        if( (args.length < 4 || args.length > 6 ) || !args[0].equals("-i") || !args[2].equals("-s") ) {
            System.out.println("Usage1: ( java WSGenerator -i wordlist_1.txt -s 12 ) OR ( java WSGenerator -i wordlist_1.txt -s 12 –o sdl_01.txt )");
            return false;
        }


        if(args.length != 4) {
            if(args.length != 6) {
                System.out.println("Usage2: ( java WSGenerator -i wordlist_1.txt -s 12 ) OR ( java WSGenerator -i wordlist_1.txt -s 12 –o sdl_01.txt )");
                return false;
            }
        }


        if(args.length == 6) {
            if(!args[4].equals("-o")) {
                System.out.println("Usage3: ( java WSGenerator -i wordlist_1.txt -s 12 ) OR ( java WSGenerator -i wordlist_1.txt -s 12 –o sdl_01.txt )");
                return false;
            }
        }

        return true;
    }

    public WSGenerator(String wordfile, String savefile, int gamesize) {
        this.wordfile = wordfile;
        this.savefile = savefile;
        this.gamesize = gamesize;
        this.rand = new Random();
        
        this.wordlist = new ArrayList<>();
        this.sopa = new ArrayList<>();
        this.SolutionBoard = new char[gamesize][gamesize];

        readfile();
    }

    public void GenerateWordSoup() {
        for (int wrd = 0; wrd < wordlist.size(); wrd++){
            String word = wordlist.get(wrd);

            LinkedList<int[]> validPositions = getAllValidPositionsFor(word);

            // Ну блин... следай ето снова...
            if(validPositions.size() == 0) {
                // clear solution and try again
                SolutionBoard = new char[gamesize][gamesize];
                wrd = -1;
                continue;
            }
            
            int[] position = validPositions.get( rand.nextInt(validPositions.size()) );


            addToSolutionBoard(position[0], position[1], word, Direction.getDirection(position[2]));
        }

        populateWithRandomletters();

        // Write solution to sopa and reset SolutionBoard
        for (char[] line : SolutionBoard) {
            this.sopa.add(new String(line));
        }
        SolutionBoard = new char[gamesize][gamesize];


        // Fix if there are repeated words
        // Can break if changed char belongs to a word
        while(!SolveGame()) {
            char randomChar = (char) (rand.nextInt(25) + 65);
            String brokenString = this.sopa.get(this.lastRow);
            String fixed = brokenString.substring(0, this.lastCol) + randomChar + brokenString.substring(this.lastCol);
            this.sopa.add(this.lastRow, fixed);
        }

        saveGame();
    }


    private LinkedList<int[]> getAllValidPositionsFor(String currentWord) {
        LinkedList<int[]> validPositions = new LinkedList<>();

        for (int row = 0; row < this.gamesize; row++) {
            for (int col = 0; col < this.gamesize; col++) {
                for (int dir = 0; dir < Direction.length; dir++) {

                    if (!isSpotFree(row, col, currentWord, Direction.getDirection(dir))) {
                        continue;
                    }

                    validPositions.add(new int[] {row, col, dir});
                }
            }
        }
        
        return validPositions;
    }

    private void populateWithRandomletters(){
        for (int row = 0; row < this.gamesize; row++) {
            for (int col = 0; col < this.gamesize; col++) {
                if (SolutionBoard[row][col] != '\0')
                    continue;
                char randomChar = (char) (rand.nextInt(25) + 65); // A-Z character

                SolutionBoard[row][col] = randomChar;
            }
        }
    }

    private void readfile() {
        try (Scanner sc = new Scanner(new File(this.wordfile))) {
            while (sc.hasNextLine()) {
                String line = sc.nextLine();
                String[] words = line.split("[,; ]{1,}");

                wordlist.addAll(Arrays.asList(words));
            }

            if (wordlist.stream().anyMatch( (a) -> { return a.length() > this.gamesize;} )) {
                System.err.printf("Desired game size is too small!\n");
                System.exit(1);
            }

        } catch (Exception e) {
            System.err.printf("ERROR: Failure Reading file\n");
            System.exit(1);
        }
    }

    public void saveGame() {
        if(this.savefile == null) {
            for (int row = 0; row < gamesize; row++) {
                System.out.println(sopa.get(row));
            }

            for (String word: wordlist) {
                System.out.print(word + ";");
            }

            System.out.print('\n');

        } else {
            try (FileWriter file = new FileWriter(this.savefile)) {
                File ficheiro = new File(this.savefile);
                ficheiro.createNewFile();
                ficheiro.setWritable(true);
    
                for (int row = 0; row < gamesize; row++) {
                    file.write(sopa.get(row));
                    file.write('\n');
                }
    
                for (String word: wordlist) {
                    file.write(word + ";");
                }
            } catch (Exception e) {
                System.err.printf("ERROR: Failure saving game to file\nError Message \"%s\"\n", e.getMessage());
            }
        }
    }
}
