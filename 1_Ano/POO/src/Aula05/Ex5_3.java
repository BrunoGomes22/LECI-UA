package Aula05;
import java.util.Scanner;

public class Ex5_3 {
    public static Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        while(true){
            System.out.println("Escolha a classe que quer testar:");
            System.out.println("1 - classe Circulo");
            System.out.println("2 - classe Triangulo");
            System.out.println("3 - classe Retangulo");
            System.out.println("0 - exit");

            System.out.print("Selecione uma opção: ");
            int option = sc.nextInt();
            switch(option){
                case 1:
                    System.out.println("(classe Circulo)");
                    System.out.print("Introduza um raio para criar um circulo: ");
                    int raio1 = sc.nextInt();
                    Circulo circulo1 = new Circulo(raio1);
                    System.out.println(circulo1.toString());
                    System.out.print("Introduza um raio para criar outro círculo: ");
                    int raio2 = sc.nextInt();
                    Circulo circulo2 = new Circulo(raio2);
                    System.out.println(circulo2.toString());
                    System.out.printf("Área do primeiro círculo: %2.1f\n",circulo1.areaCalculator());
                    System.out.printf("Perímetro do primeiro círculo: %2.1f\n",circulo1.perimeterCalculator());
                    System.out.printf("Área do segundo círculo: %2.1f\n",circulo2.areaCalculator());
                    System.out.printf("Perímetro do primeiro círculo: %2.1f\n",circulo2.perimeterCalculator());
                    System.out.printf("Os círculos são iguais? %b\n",circulo1.equals(circulo2));
                    break;
                    
                case 2:
                    System.out.println("(classe Triangulo)");
                    System.out.println("Introduza os 3 lados do primeiro triângulo");
                    System.out.print("Lado 1: ");
                    int lado1 = sc.nextInt();
                    System.out.print("Lado 2: ");
                    int lado2 = sc.nextInt();
                    System.out.print("Lado 3: ");
                    int lado3 = sc.nextInt();
                    Triangulo triangulo1 = new Triangulo(lado1,lado2,lado3);
                    System.out.println(triangulo1.toString());

                    System.out.println("Introduza os 3 lados do segundo triângulo: ");
                    System.out.print("Lado 1: ");
                    int lado4 = sc.nextInt();
                    System.out.print("Lado 2: ");
                    int lado5 = sc.nextInt();
                    System.out.print("Lado 3: ");
                    int lado6 = sc.nextInt();
                    Triangulo triangulo2 = new Triangulo(lado4,lado5,lado6);
                    System.out.println(triangulo2.toString());

                    System.out.printf("Área do primeiro triângulo: %2.1f\n",triangulo1.areaCalculator());
                    System.out.printf("Perímetro do primeiro triângulo: %2.1f\n",triangulo1.perimeterCalculator());
                    System.out.printf("Área do segundo triângulo: %2.1f\n",triangulo2.areaCalculator());
                    System.out.printf("Perímetro do segundo triângulo: %2.1f\n",triangulo2.perimeterCalculator());
                    System.out.printf("Os triângulos são iguais? %b\n",triangulo1.equals(triangulo2));
                    break;
                case 3:
                    System.out.println("(classe Retângulo)");
                    System.out.println("Introduza o comprimento e altura primeiro retângulo");
                    System.out.print("Comprimento: ");
                    int comprimento1 = sc.nextInt();
                    System.out.print("Altura: ");
                    int altura1 = sc.nextInt();
                    Retangulo retangulo1 = new Retangulo(comprimento1,altura1);
                    System.out.println(retangulo1.toString());

                    System.out.println("Introduza o comprimento e a altura do segundo retângulo");
                    System.out.print("Comprimento: ");
                    int comprimento2 = sc.nextInt();
                    System.out.print("Altura: ");
                    int altura2 = sc.nextInt();
                    Retangulo retangulo2 = new Retangulo(comprimento2, altura2);
                    System.out.println(retangulo2.toString());

                    System.out.printf("Área do primeiro retângulo: %2.1f\n",retangulo1.areaCalculator());
                    System.out.printf("Perímetro do primeiro retângulo: %2.1f\n",retangulo1.perimeterCalculator());
                    System.out.printf("Área do segundo retângulo: %2.1f\n",retangulo2.areaCalculator());
                    System.out.printf("Perímetro do segundo retângulo: %2.1f\n",retangulo2.perimeterCalculator());
                    System.out.printf("Os retângulos são iguais? %b\n",retangulo1.equals(retangulo2));
                    break;
                case 0:
                    System.exit(0);
                
            }
            
        }
    }
    
}