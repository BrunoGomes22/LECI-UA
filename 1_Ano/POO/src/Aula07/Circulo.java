package Aula07;

import java.lang.Math;

public class Circulo extends Forma{
    private double raio;

    public Circulo(double raio, String cor){
        super(cor);
        assert raio > 0;
        this.raio = raio;
    }

    public double getRaio(){
        return raio;
    }

    public void setRaio(double raio){
        assert raio>0;
        this.raio = raio;
    }

    public String toString(){
        return String.format("O raio do círculo é: %2.1f",raio);
    }

    public boolean equals(Circulo a){
        if(raio == a.getRaio()){
            return true;
        }
        else{
            return false;
        }
    }

    public double area(){
       double area = (Math.PI * Math.pow(raio,2));
       return area;
    }

    public double perimetro(){
        double perimeter = 2*Math.PI*raio;
        return perimeter;
    }
}
