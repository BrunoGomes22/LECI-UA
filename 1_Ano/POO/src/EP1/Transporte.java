package EP1;

public class Transporte extends Servico{
    private int numOcupantes;
    private int maxKms;
    private Combustivel combustivel;

    public Transporte(int numOcupantes, int maxKms, Combustivel combustivel){
        super("T");
        this.numOcupantes = numOcupantes;
        this.maxKms = maxKms;
        this.combustivel = combustivel;
    }

    public int getNumOcupantes(){
        return this.numOcupantes;
    }

    public int getMaxKms(){
        return this.maxKms;
    }

    public Combustivel getCombustivel(){
        return this.combustivel;
    }
}
