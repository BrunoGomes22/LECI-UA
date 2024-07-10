package Voos;

import java.util.*;
import java.io.*;

public class menu {

    private static Map<String, Voo> voos = new HashMap<String, Voo>();

    public static void printMenu() {
        System.out.println("Escolha uma opção: (H para ajuda)");
        String line = System.console().readLine();
        String[] option = line.split(" ");

        switch (line.substring(0,1).toUpperCase()) {
            case "H":
                System.out.println("\n ======================================================================================");
                System.out.println("| H - Ajuda                                                                            |");
                System.out.println("| I - Inserir voo <filename>                                                           |");
                System.out.println("| M - Mapa de reservas <flight_code>                                                   |");
                System.out.println("| F - Adicionar novo voo <flight_code> <num_seats_executive> <num_seats_tourist>       |"); 
                System.out.println("| R - Adicionar nova reserva <flight_code> <class> <number_seats>                      |");
                System.out.println("| C - Cancelar reservar <reservation_code>                                             |");
                System.out.println("| Q - Terminar programa                                                                |");
                System.out.println(" ======================================================================================\n");
                break;

            case "I":
                ReadFile("../lab03/Voos/Examples/" + line.substring(2));
                break;
            
            case "M":
                if (option.length != 2) {
                    System.err.println("Usage: m <flight_code>");
                    System.out.println();
                    return;
                }

                String code = option[1];
                Voo voo = voos.get(code);
                if (voo == null) {
                    System.err.println("Voo não existe!");
                    return;
                }

                voo.printMap();
                System.out.println();
                break;

            case "F":
                if(option.length < 3) {
                    System.err.println("Usage: f <flight_code> <num_seats_executive> <num_seats_tourist>");
                    System.out.println();
                    return;
                }

                String[] values = {option[1], option[2], option[3]};
                addFlight(values);

                break;

            case "R":
                if (option.length != 4) {
                    System.err.println("Usage: f <flight_code> <class> <number_seats>");
                    System.out.println();
                    return;
                }

                newReservation(option);
                System.out.println();
                break;

            case "C":
                if(option.length != 2) {
                    System.err.println("Usage: c <reservation_code>");
                    System.out.println();
                    return;
                }

                String codeRes = option[1];
                String[] codeValue = codeRes.split(":");

                if (voos.containsKey(codeValue[0])) {
                    voos.get(codeValue[0]).cancelRes(Integer.parseInt(codeValue[1]));
                }

                break;

            case "Q":
                System.exit(0);
                break;

            default:
                System.out.println("Opção inválida, tente novamente. (H para ajuda)");
            break;
        }
    }    
    

    public static void ReadFile(String file) {

        try {
            FileReader myObj = new FileReader(file);
            Scanner scanner = new Scanner(myObj);
            
            String line = scanner.nextLine();
            String[] values = line.split(" ");
            
            if(!values[0].substring(0,1).equals(">")) {
                System.out.println("Ficheiro inválido");
                System.exit(1);
            }

            String flightCode = values[0].substring(1);
            addFlight(values);
            
            while(scanner.hasNextLine()) {
                line = scanner.nextLine();
                values = line.split(" ");
                
                Classe classe = createClass(values[0]);
                if (classe == null) {
                    System.err.println("Classe" + values[0] + "não existe!");
                    scanner.close();
                    return;
                }

                int seatsNumber = Integer.parseInt(values[1]);
                
                boolean isSeated = voos.get(flightCode).addReservation(classe, seatsNumber);
                
                if(!isSeated){
                    System.out.println("Não foi possível obter lugares para a reserva: " + values[0] + " " + values[1] + "\n");
                }
            }
            
            scanner.close();

        } catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }

        
    }

    // add flight ===================================================================
    
    public static void addFlight(String[] values) {

        int[] seats = new int[2];

        String flightCode = values[0].substring(1);

        if(voos.containsKey(flightCode)) {
            System.out.println("Voo já existe");
            System.exit(1);
        }

        System.out.println("\nCódigo do voo: " + flightCode +". ");
        System.out.println("Lugares disponíveis: ");

        if(values.length == 2) {
            String[] seat = values[1].split("x");

            seats[0] = Integer.parseInt(seat[0]) * Integer.parseInt(seat[1]) ;
            seats[1] = 0;

            int rowPoor = Integer.parseInt(seat[0]);
            int colPoor = Integer.parseInt(seat[1]);

            int [][] rich = new int[0][0];
            int [][] poor = new int[colPoor][rowPoor];

            Aviao aviao = new Aviao(rich, poor);

            voos.put(flightCode, new Voo(flightCode, aviao));

            System.out.println(seats[0] + " Lugares em classe turísticos.");
            System.out.println("Classe executiva não disponível neste voo.");
            
        } else if(values.length == 3) {
            String[] seatRich = values[1].split("x");
            String[] seatPoor = values[2].split("x");

            seats[0] = Integer.parseInt(seatRich[0]) * Integer.parseInt(seatRich[1]);
            seats[1] = Integer.parseInt(seatPoor[0]) * Integer.parseInt(seatPoor[1]);
            
            int rowRich = Integer.parseInt(seatRich[0]);
            int colRich = Integer.parseInt(seatRich[1]);
            
            int rowPoor = Integer.parseInt(seatPoor[0]);
            int colPoor = Integer.parseInt(seatPoor[1]);
            
            int [][] rich = new int[colRich][rowRich];
            int [][] poor = new int[colPoor][rowPoor];
            
            Aviao aviao = new Aviao(rich, poor);
            
            voos.put(flightCode, new Voo(flightCode, aviao));
            
            System.out.println(seats[1] + " Lugares em classe turísticos.");
            System.out.println(seats[0] + " Lugares em classe Executiva.");
        }
    }

    // ==============================================================================

    //new resevation funct ==========================================================

    private static void newReservation(String[] options) {
        String code = options[1];
        boolean isValid = addRes(code, new String[] {options[2], options[3]});
        if (!isValid) {
            System.err.println("Reserva não foi possível!");
            return;
        }

        Voo voo = voos.get(code);
        //boo
        Classe classe = createClass(options[2]);
        if (classe == null) {
            return;
        }

        System.out.print(code + " : " + voo.getReservation() + " = ");
        voo.resSeat(voo.getReservation(), classe, Integer.parseInt(options[3]));
    }

    // ==============================================================================

    // validate if the reservation is possible ======================================

    private static boolean addRes(String code, String[] infoRes) {
        Classe classe = createClass(infoRes[0]);
        if (classe == Classe.NONE) {
            return false;
        }
        
        boolean doneRes = false;
        
        if (voos.containsKey(code)) {
            doneRes = voos.get(code).addReservation(classe, Integer.parseInt(infoRes[1]));
        }

        return doneRes;
    }

    // ==============================================================================

    // create class =================================================================

    public static Classe createClass (String option) {
        Classe classe;

        if (option.equals("E")) {
            classe = Classe.EXECUTIVA;
        }
        else if (option.equals("T")) {
            classe = Classe.TURISTICA;
        }
        else {
            System.err.println("Classe não existe!");
            return null;
        }
        return classe;
    }

    // ==============================================================================

    public static void main(String[] args) {
        while(true) {
            printMenu();
        }
    }
}