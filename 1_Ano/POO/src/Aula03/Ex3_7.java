package Aula03;
import java.util.Random;
import java.util.Scanner;

public class Ex3_7 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int count = 0;
        String resp = "";
        
        do{
            System.out.print("Introduza um número de 1 a 100: ");
            int numero = sc.nextInt();
            count++;
            Random r = new Random();
            int numeroSecreto = r.nextInt(100-1) + 1; //gerar número aleatório
            while(numero != numeroSecreto){
                if(numero<numeroSecreto){
                    System.out.print("Número baixo, pretende continuar? Tente outra vez: ");
                    numero = sc.nextInt();
                    count++;
                }
                else{
                    System.out.print("Número alto, pretende continuar? Tente outra vez: ");
                    numero = sc.nextInt();
                    count++;
                }
            }
            System.out.printf("Acertou, o número secreto era %d.\n",numeroSecreto);
            System.out.printf("Precisou de %d tentativas. \n",count);
            System.out.println("Pretende jogar novamente? Prima (S)im: ");
            
            resp = sc.next();

        }while(resp.equals("S") || resp.equals("Sim") || resp.equals("s") || resp.equals("sim"));


        sc.close();
    }

}
