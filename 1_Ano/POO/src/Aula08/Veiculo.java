package Aula08;

public abstract class Veiculo implements KmPercorridosInterface{
    private String matricula;
    private String marca;
    private String modelo;
    private double potencia;
    private int ultimoTrajeto;
    private int distanciaTotal;
    
    public Veiculo(String matricula, String marca, String modelo, double potencia){
        this.matricula = matricula;
        this.marca = marca;
        this.modelo = modelo;
        this.potencia = potencia;
        ultimoTrajeto = 0;
        distanciaTotal = 0;
    }

    public String getMatricula(){
        return matricula;
    }

    public void setMatricula(String matricula){
        this.matricula = matricula;
    }

    public String getMarca(){
        return marca;
    }

    public void setMarca(String marca){
        this.marca = marca;
    }

    public String getModelo(){
        return modelo;
    }

    public void setModelo(String modelo){
        this.modelo = modelo;
    }

    public double getPotencia(){
        return potencia;
    }

    public void setPotencia(double potencia){
        this.potencia = potencia;
    }

    public int ultimoTrajeto(){
        return this.ultimoTrajeto;
    }

    public int distanciaTotal(){
        return this.distanciaTotal;
    }

    public void trajeto(int quilometros){
        this.distanciaTotal += quilometros;
        this.ultimoTrajeto = quilometros;
    }

    
    public boolean equals(Object obj){ 
        if(this == obj){
            return true;
        }

        if(obj == null){
            return false;
        }

        if(getClass() != obj.getClass()){
            return false;
        }

        Veiculo other = (Veiculo) obj;

        if(matricula == null){
            if(other.matricula != null){
                return false;
            }
        }
        else if(!matricula.equals(other.matricula)){
            return false;
        }

        if(marca == null){
            if(other.marca != null){
                return false;
            }
        }
        else if(!marca.equals(other.marca)){
            return false;
        }

        if(modelo == null){
            if(other.modelo != null){
                return false;
            }
        }
        else if(!modelo.equals(other.modelo)){
            return false;
        }

        if(potencia != other.potencia){
            return false;
        }

        if(ultimoTrajeto != other.ultimoTrajeto){
            return false;
        }

        if(distanciaTotal != other.distanciaTotal){
            return false;
        }

        return true;
        
    }

    public String toString() {
        return "Viatura [distanciaTotal=" + distanciaTotal + ", marca=" + marca + ", matricula=" + matricula + ", modelo="
                + modelo + ", potencia=" + potencia + ", ultimoTrajeto=" + ultimoTrajeto + "] ";
    }
}
