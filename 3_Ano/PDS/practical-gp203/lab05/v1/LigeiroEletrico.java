package v1;

public class LigeiroEletrico extends Ligeiro implements VeiculoEletrico{
    private int autonomia;

    public LigeiroEletrico(String matricula, String marca, String modelo, int potencia, String numeroQuadro,int capacidadeBagageira, int autonomia){
        super(matricula, marca, modelo, potencia, numeroQuadro, capacidadeBagageira);
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

        LigeiroEletrico other = (LigeiroEletrico) obj;

        if(autonomia != other.autonomia){
            return false;
        }

        return super.equals(obj) && true;
    }

    public int getAutonomia(){
        return autonomia;
    }

    public void setAutonomia(int autonomia){
        this.autonomia = autonomia;
    }

    public String toString() {
        return super.toString() + "LigeiroEletrico [autonomia=" + autonomia + "]";
    }
}
