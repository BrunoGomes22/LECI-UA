package Voos;

public class Voo {

    private String flightCode;
    private Aviao aviao;
    private final int poorCapacity;
    private final int richCapacity;
    public int reservation;

    public Voo(String flightCode, Aviao aviao) {
        this.flightCode = flightCode;
        this.aviao = aviao;
        this.poorCapacity = aviao.poorMax();
        this.richCapacity = aviao.richMax();
        this.reservation = 0;
    }

    public int getReservation() {
        return reservation;
    }

    // adicionar reservas - false if no works
    public boolean addReservation(Classe classe, int numSeats) {
        int[][] seats = null;

        if (classe == Classe.TURISTICA) {
            // verify if enough seats
            if (this.aviao.poorMax() - this.aviao.poorFull() < numSeats) {
                return false;
            }
            seats = this.aviao.getPoor();

        } else if (classe == Classe.EXECUTIVA) {
            // verify if enough seats
            if (this.aviao.richMax() - this.aviao.richFull() < numSeats) {
                return false;
            }
            seats = this.aviao.getRich();
        }

        int cols = seats[0].length; //n. Colunas do aviao
        int rows = seats.length; //n. Filas do aviao

        int counter = 0;
        for (int i = 0; i < cols; i++) {
            if (seats[0][i] == '\0') {
                //put the reservation
                for (int j = 0; j < numSeats; j++) {
                    //distribute the seats
                    if (i + j / rows < cols) {
                        seats[j % rows][i + j / rows] = this.reservation + 1;
                        counter++;
                    }
                }
                break;
            }
        }

        boolean placed = (counter == numSeats); // reservation done if counter equals the ocupies seats

        // if not places, fill sequencially
        if (!placed) {
            for (int i = 0; i < cols && !placed; i++) {
                for (int j = 0; j < seats.length && !placed; j++) {
                    if (seats[j][i] == '\0') {
                        seats[j][i] = this.reservation + 1;
                        counter++;
                        if (counter == numSeats) {
                            placed = true;
                        }
                    }
                }
            }
        }

        // place reservation data in plane
        if (placed) {
            if (classe == Classe.TURISTICA) {
                this.aviao.setPoor(seats);
            } else if (classe == Classe.EXECUTIVA) {
                this.aviao.setRich(seats);
            }
            this.reservation++;
        }

        return placed;
    }

    //print the plane map
    public void printMap() {
        int[][] rich = this.aviao.getRich();
        int[][] poor = this.aviao.getPoor();
        int nRows = 0, nCols = 0;

        if(this.richCapacity != 0) {
            System.out.println(rich.length);
            if (poor.length >= rich.length) {
                nRows = poor.length;
                nCols = rich[0].length + poor[0].length;
            }
        } else {
            nRows = poor.length;
            nCols = poor[0].length;
        }

        // numeracao colunas ===============
        System.out.print("\t");
        for (int i = 1; i <= nCols; i++) {
            System.out.print(i + "\t");
        }
        System.out.println();
        // =================================

        int letter = 65; // ascii 'A'
        for (int i = 0; i < nRows; i++) {
            System.out.print((char) letter + "\t"); // meter letras nas filas
            letter++;

            for (int j = 0; j < nCols; j++) {
                if (this.richCapacity != 0 && j < rich[0].length) {
                    if (i < rich.length) {
                        if (rich[i][j] != '\0') {
                            System.out.print(rich[i][j] + "\t");
                        } else {
                            System.out.print("O\t");
                        }

                    } else {
                        System.out.print("\t");
                    }

                } else {
                    int k;
                    if (this.richCapacity != 0) {
                        k = j-1;
                    } else {
                        k = j;
                    }

                    if (k - rich.length >= 0 && k - rich.length < poor[i].length) {
                        if (poor[i][k - rich.length] != '\0') {
                            System.out.print(poor[i][k - rich.length]);
                        } else {
                            System.out.print("O");
                        }
                        System.out.print("\t");
                    }
                }
            }
            System.out.println();
        }

    }

    // lugar de cada reserva
    public void resSeat (int newReservation, Classe classe, int numSeats) {
        int[][] seats;
        if (classe == Classe.TURISTICA) {
            seats = aviao.getPoor();
        } else {
            seats = aviao.getRich();
        }

        if (seats == null) {
            return;
        }

        for (int j = 0; j < seats[0].length; j++) {
            for (int i = 0; i < seats.length; i++) {
                if (seats[i][j] == newReservation) {
                    System.out.print(" " + (j+1) + (char) (i + 65) + " |");
                }
            }
        }
    }

    public void cancelRes(int reservation){
        
        int[][] richseats = this.aviao.getRich();
        
        for (int i = 0; i < richseats.length; i++) {
            for (int j = 0; j < richseats[0].length; j++) {
                if (richseats[i][j] == reservation) {
                    richseats[i][j] = 0;
                }
            }
        }
        this.aviao.setRich(richseats);

        int[][] poorseats = this.aviao.getPoor();

        for (int i = 0; i < poorseats.length; i++) {
            for (int j = 0; j < poorseats[0].length; j++) {
                if (poorseats[i][j] == reservation) {
                    poorseats[i][j] = 0;
                }
            }
        }
        this.aviao.setPoor(poorseats);

        this.reservation--;
    }
}