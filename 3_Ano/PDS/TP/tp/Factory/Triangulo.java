package aula05;

import java.lang.Math;

public class Triangulo extends Forma{
    private double lado1;
    private double lado2;
    private double lado3;

    public Triangulo(double lado1, double lado2, double lado3, String cor){
        super(cor);
        assert lado1<lado2+lado3 || lado2<lado1+lado3 || lado3<lado1+lado2;
        this.lado1 = lado1;
        this.lado2 = lado2;
        this.lado3 = lado3;
    }

    public double getLado1(){
        return lado1;
    }

    public double getLado2(){
        return lado2;
    }

    public double getLado3(){
        return lado3;
    }

    public void setLados(double lado1, double lado2, double lado3){
        assert lado1<lado2+lado3 || lado2<lado1+lado3 || lado3<lado1+lado2;
        this.lado1 = lado1;
        this.lado2 = lado2;
        this.lado3 = lado3;
    }

    public String toString(){
        return String.format("Lado1: %2.1f\nLado2: %2.1f\nLado2: %2.1f",lado1,lado2,lado3);
    }
    
    public boolean equals(Triangulo a){
        if(lado1 == a.getLado1() && lado2 == a.getLado2() && lado3 == a.getLado3()){
            return true;
        }
        else{
            return false;
        }
    }

    public double perimetro(){
        double perimeter = lado1+lado2+lado3;
        return perimeter;
    }

    public double area(){
        double s = perimetro()/2; //semiperímetro
        double area = Math.sqrt(s*(s-lado1)*(s-lado2)*(s-lado3));
        return area;
    }


}
