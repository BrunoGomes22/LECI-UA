package v1;

public class Taxi extends Ligeiro{
    private String numLicenca;

    public Taxi(String matricula, String marca, String modelo, double potencia, String numeroQuadro, double capacidadeBagageira, String numLicenca){
        super(matricula, marca, modelo, potencia, numeroQuadro, capacidadeBagageira);
        this.numLicenca = numLicenca;
    }

    public String getNumLicenca(){
        return numLicenca;
    }

    public void setNumLicenca(String numLicenca){
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

        if(!numLicenca.equals(other.numLicenca)){
            return false;
        }

        return super.equals(obj) && true;
    }

    public String toString() {
        return super.toString() + "Taxi [numLicense=" + numLicenca + "]";
    }
}
