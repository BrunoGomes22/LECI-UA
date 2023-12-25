package Aula05;

public class Retangulo {
    private double comprimento;
    private double altura;

    public Retangulo(double comprimento, double altura){
        assert comprimento > 0 && altura > 0;
        this.comprimento = comprimento;
        this.altura = altura;
    }

    public double perimeterCalculator(){
        return (2*comprimento + 2*altura);
    }

    public double areaCalculator(){
        return comprimento*altura;
    }

    public String toString(){
        return String.format("Comprimento do retângulo: %2.1f\nAltura do retângulo: %2.1f",comprimento,altura);
    }

    public boolean equals(Retangulo a){
        if(comprimento == a.getComprimento() && altura == a.getAltura()){
            return true;
        }
        else{
            return false;
        }
    }

    public double getComprimento(){
        return comprimento;
    }

    public double getAltura(){
        return altura;
    }

    public void setTriangulo(double comprimento, double altura){
        assert comprimento > 0 && altura > 0;
        this.comprimento =  comprimento;
        this.altura = altura;
    }
}
