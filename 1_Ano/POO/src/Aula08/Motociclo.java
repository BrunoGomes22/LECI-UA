package Aula08;

public class Motociclo extends Veiculo{
    private String tipo;

    public Motociclo(String matricula, String marca, String modelo, double potencia, String tipo){
        super(matricula,marca,modelo,potencia);
        this.tipo = tipo;

    }

    public String getTipo(){
        return tipo;
    }

    public void setTipo(String tipo){
        this.tipo = tipo;
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

        Motociclo other = (Motociclo) obj;
        if(tipo == null){
            if(other.tipo != null){
                return false;
            }
        }
        else if(!tipo.equals(other.tipo)){
            return false;
        }

        return super.equals(obj) && true;
    }

    
    public String toString(){
        return super.toString() + "Motociclo [tipo=" + tipo + "]";
    }

}
