package JGalo;

public class galinho implements JGaloInterface{

    private char[][] matrix_galinho;
    private char actualPlayer;
    private int jogadas; 
    private char Winner;
     
    public galinho(char player) { // pass arguments 
        this.matrix_galinho = new char[3][3];
        for (int i = 0; i < matrix_galinho.length; i++) {
            for (int j = 0; j < matrix_galinho[i].length; j++) {
                matrix_galinho[i][j] = ' ';
            }
        }
        this.actualPlayer = player;
    }

    private void changePlayer(char player){
        if( this.actualPlayer == 'X'){
            this.actualPlayer = 'O';
            return;
        }
        this.actualPlayer = 'X';
    }

    private boolean checkWinner(){
        char result = ' '; // empatou :(
        
        for(int cell = 0; cell < this.matrix_galinho.length; cell++){
        
            // check rows
            if (this.matrix_galinho[cell][0] == this.matrix_galinho[cell][1] && 
                this.matrix_galinho[cell][0] == this.matrix_galinho[cell][2] &&
                this.matrix_galinho[cell][0] != ' '){
                result = this.matrix_galinho[cell][0];
                this.Winner = result;
                return true;
            }
            
            // check columns
            if (this.matrix_galinho[0][cell] == this.matrix_galinho[1][cell] && 
                this.matrix_galinho[0][cell] == this.matrix_galinho[2][cell] &&
                this.matrix_galinho[0][cell] != ' ') {
                result = this.matrix_galinho[0][cell];
                this.Winner = result;
                return true;
            }
        }

        // check diagonals
        if (this.matrix_galinho[0][0] == this.matrix_galinho[1][1] && 
            this.matrix_galinho[0][0] == this.matrix_galinho[2][2] &&
            this.matrix_galinho[0][0] != ' ') {
            result = this.matrix_galinho[0][0];
            this.Winner = result;
            return true;
            
        } else if (this.matrix_galinho[0][2] == this.matrix_galinho[1][1] && 
            this.matrix_galinho[0][2] == this.matrix_galinho[2][0] &&
            this.matrix_galinho[0][2] != ' ') {
            result = this.matrix_galinho[0][2];
            this.Winner = result;
            return true;
        }
        
        this.Winner = result;
        return false;
    }
    
    @Override
    public char getActualPlayer() {
        return this.actualPlayer;
    }
    
    @Override
    public boolean setJogada(int lin, int col) {
        this.matrix_galinho[lin-1][col-1] = this.actualPlayer;
        changePlayer(this.actualPlayer);
        this.jogadas++;
        return true;
    }

    @Override
    public boolean isFinished() {
        if (this.jogadas == 9 || checkWinner()) {
            return true;
        } 
        return false;
        
    }

    @Override
    public char checkResult() {
        return this.Winner;
    }
}

