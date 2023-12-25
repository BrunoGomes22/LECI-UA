package Aula08;

public abstract class Pesado extends Veiculo{
    private int numeroQuadro;
    private double peso;

    public Pesado(String matricula, String marca, String modelo, double potencia,int numeroQuadro, double peso){
        super(matricula, marca, modelo, potencia);
        this.numeroQuadro = numeroQuadro;
        this.peso = peso;
    }

    public int getNumeroQuadro(){
        return numeroQuadro;
    }

    public void setNumeroQuadro(int numeroQuadro){
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
        
        if(numeroQuadro != other.numeroQuadro){
            return false;
        }

        if(peso != other.peso){
            return false;
        }

        return super.equals(obj) && true;
    }
}
