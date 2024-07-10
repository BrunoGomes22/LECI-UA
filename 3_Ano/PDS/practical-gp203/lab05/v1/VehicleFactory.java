package v1;

public class VehicleFactory {
    
    public static Motociclo createMotociclo(String matricula, String marca, String modelo, double potencia, String tipo){
        Motociclo moto = new Motociclo(matricula, marca, modelo, potencia, tipo);
        return moto;
    }

    public static Ligeiro createAutomovelLigeiro(String matricula, String marca, String modelo, double potencia, String numeroQuadro, double capacidadeBagageira){
        Ligeiro automovelLigeiro = new Ligeiro(matricula, marca, modelo, potencia, numeroQuadro, capacidadeBagageira);
        return automovelLigeiro;
    }

    public static Taxi createTaxi(String matricula, String marca, String modelo, double potencia, String numeroQuadro, double capacidadeBagageira, String numLicenca){
        Taxi taxi = new Taxi(matricula, marca, modelo, potencia, numeroQuadro, capacidadeBagageira, numLicenca);
        return taxi;
    }

    public static PesadoPassEletrico createPPEletrico(String matricula, String marca, String modelo, double potencia, String numeroQuadro, double peso, int numMaxPassageiros, int autonomia){
        PesadoPassEletrico ppe = new PesadoPassEletrico(matricula, marca, modelo, potencia, numeroQuadro, peso, numMaxPassageiros, autonomia);
        return ppe;
    }

    public static LigeiroEletrico createALEletrico(String matricula, String marca, String modelo, int potencia, String numeroQuadro,int capacidadeBagageira, int autonomia){
        LigeiroEletrico ligeiroE = new LigeiroEletrico(matricula, marca, modelo, potencia, numeroQuadro, capacidadeBagageira, autonomia);
        return ligeiroE;
    }

    public static PesadoMercadorias createPesadoMercadorias(String matricula, String marca, String modelo, double potencia, String numeroQuadro, double peso, double cargaMax){
        PesadoMercadorias pesadoM = new PesadoMercadorias(matricula, marca, modelo, potencia, numeroQuadro, peso, cargaMax);
        return pesadoM;
    }

    public static PesadoPassageiros createPesadoPassageiros(String matricula, String marca, String modelo, double potencia, String numeroQuadro, double peso, int numMaxPassageiros){
        PesadoPassageiros pesadoP = new PesadoPassageiros(matricula, marca, modelo, potencia, numeroQuadro, peso, numMaxPassageiros);
        return pesadoP;
    }

}
