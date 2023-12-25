package Aula08;

public class Taxi extends Ligeiro{
    private int numLicenca;

    public Taxi(String matricula, String marca, String modelo, double potencia, int numeroQuadro, double capacidadeBagageira, int numLicenca){
        super(matricula, marca, modelo, potencia, numeroQuadro, capacidadeBagageira);
        this.numLicenca = numLicenca;
    }

    public int getNumLicenca(){
        return numLicenca;
    }

    public void setNumLicenca(int numLicenca){
        this.numLicenca = numLicenca;
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

        Taxi other = (Taxi) obj;

        if(numLicenca != other.numLicenca){
            return false;
        }

        return super.equals(obj) && true;
    }

    public String toString() {
        return super.toString() + "Taxi [numLicense=" + numLicenca + "]";
    }
}
