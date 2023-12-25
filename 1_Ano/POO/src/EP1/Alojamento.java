package EP1;

public class Alojamento extends Servico{
    
    private String code;
    private int numQuartos;
    private int OcupacaoMax;
    private Regime Regime;

    public Alojamento(String code, int numQuartos, int OcupacaoMax, Regime regime){
        super("A");
        this.code = code;
        this.numQuartos = numQuartos;
        this.OcupacaoMax = OcupacaoMax;
        this.Regime = regime;
    }

    public String getCode(){
        return this.code;
    }

    public int getNumQuartos(){
        return this.numQuartos;
    }

    public int getOcupacaoMax(){
        return this.OcupacaoMax;
    }

    public Regime getRegime(){
        return this.Regime;
    }
}
