package v1;

public class PesadoMercadorias extends Pesado{
    private double cargaMax;

    public PesadoMercadorias(String matricula, String marca, String modelo, double potencia, String numeroQuadro, double peso, double cargaMax){
        super(matricula,marca,modelo,potencia,numeroQuadro,peso);
        this.cargaMax = cargaMax;
    }

    public double getCargaMax(){
        return cargaMax;
    }

    public void setCargaMax(double cargaMax){
        this.cargaMax = cargaMax;
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

        PesadoMercadorias other = (PesadoMercadorias) obj;

        if(cargaMax != other.cargaMax){
            return false;
        }

        return super.equals(obj) && true;
    }

    public String toString() {
        return super.toString() + "PesadoMercadorias [cargaMaxima=" + cargaMax + "]";
    }
}
