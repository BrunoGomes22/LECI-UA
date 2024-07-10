package v1;

public abstract class Pesado extends Veiculo{
    private String numeroQuadro;
    private double peso;

    public Pesado(String matricula, String marca, String modelo, double potencia,String numeroQuadro, double peso){
        super(matricula, marca, modelo, potencia);
        this.numeroQuadro = numeroQuadro;
        this.peso = peso;
    }

    public String getNumeroQuadro(){
        return numeroQuadro;
    }

    public void setNumeroQuadro(String numeroQuadro){
        this.numeroQuadro = numeroQuadro;
    }

    public double getPeso(){
        return peso;
    }

    public void setPeso(double peso){
        this.peso = peso;
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

        Pesado other = (Pesado) obj;
        
        if(!numeroQuadro.equals(other.numeroQuadro)){
            return false;
        }

        if(peso != other.peso){
            return false;
        }

        return super.equals(obj) && true;
    }
}
