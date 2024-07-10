package v1;

public class Ligeiro extends Veiculo{
    private String numeroQuadro;
    private double capacidadeBagageira;

    public Ligeiro(String matricula, String marca, String modelo, double potencia, String numeroQuadro, double capacidadeBagageira){
        super(matricula,marca,modelo,potencia);
        this.numeroQuadro = numeroQuadro;
        this.capacidadeBagageira = capacidadeBagageira;
    }

    public String getNumeroQuadro(){
        return numeroQuadro;
    }

    public void setNumeroQuadro(String numeroQuadro){
        this.numeroQuadro = numeroQuadro;
    }

    public double getCapacidadeBagageira(){
        return capacidadeBagageira;
    }

    public void setCapacidadeBagageira(double capacidadeBagageira){
        this.capacidadeBagageira = capacidadeBagageira;
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
        
        Ligeiro other = (Ligeiro) obj;
        
        if(!numeroQuadro.equals(other.numeroQuadro)){
            return false;
        }

        if(capacidadeBagageira != other.capacidadeBagageira){
            return false;
        }

        return super.equals(obj) && true;
    }

    public String toString(){
        return super.toString() + "Ligeiro [capacidadeBagageira=" + capacidadeBagageira + ", numQuadro=" + numeroQuadro
                + "] ";
    }
}
