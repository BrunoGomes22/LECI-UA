package v1;

public class PesadoPassEletrico extends PesadoPassageiros implements VeiculoEletrico{
    private int autonomia;

    public PesadoPassEletrico(String matricula, String marca, String modelo, double potencia, String numeroQuadro, double peso, int numMaxPassageiros, int autonomia){
        super(matricula, marca, modelo, potencia, numeroQuadro, peso, numMaxPassageiros);
        this.autonomia = autonomia;
    }

    public int autonomia(){
        return autonomia;
    }

    public void carregar(int percentagem){
        if(percentagem + autonomia >= 100){
            autonomia = 100;
        }
        else{
            autonomia += percentagem;
        }
    }

    public int getAutonomia(){
        return autonomia;
    }

    public void setAutonomia(int autonomia){
        this.autonomia = autonomia;
    }

    public boolean equals(Object obj){
        if(this == obj){
            return true;
        }

        if(!super.equals(obj)){
            return false;
        }

        if(getClass() != obj.getClass()){
            return false;
        }

        PesadoPassEletrico other = (PesadoPassEletrico) obj;

        if(autonomia != other.autonomia){
            return false;
        }

        return super.equals(obj) && true;
    }

    public String toString() {
        return super.toString() + " PesadoPassageirosEletrico [autonomia=" + autonomia + "]";
    }
}
