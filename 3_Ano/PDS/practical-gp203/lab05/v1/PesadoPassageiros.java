package v1;

public class PesadoPassageiros extends Pesado{
    private int numMaxPassageiros;

    public PesadoPassageiros(String matricula, String marca, String modelo, double potencia, String numeroQuadro, double peso, int numMaxPassageiros){
        super(matricula, marca, modelo, potencia, numeroQuadro, peso);
        this.numMaxPassageiros = numMaxPassageiros;
    }

    public int getNumMaxPassageiros(){
        return numMaxPassageiros;
    }

    public void setNumMaxPassageiros(int numMaxPassageiros){
        this.numMaxPassageiros = numMaxPassageiros;
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

        PesadoPassageiros other = (PesadoPassageiros) obj;

        if(numMaxPassageiros != other.numMaxPassageiros){
            return false;
        }

        return super.equals(obj) && true;
    }

    public String toString() {
        return super.toString() + "PesadoPassageiros [numMaxPassageiros=" + numMaxPassageiros + "]";
    }
}
