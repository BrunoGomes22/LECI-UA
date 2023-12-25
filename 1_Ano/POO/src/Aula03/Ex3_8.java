package Aula03;
import java.util.Scanner;
import java.lang.Math;

public class Ex3_8 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        double[][] notas = new double[16][3]; // 16 linhas por 3 colunas
 
        for(int i = 0 ; i<16; i++){
            System.out.print("Introduza a nota da componente teórica: ");

            double notaT = sc.nextDouble();
            notaT = Math.round(notaT);

            System.out.print("Introduza a nota da componente prática: ");

            double notaP = sc.nextDouble();
            notaP = Math.round(notaP);

            if((notaT>20 || notaT<0) || (notaP>20 || notaP<0)){
                System.out.println("Introduza valores válidos!");
                System.exit(1);
            }


            if(notaP<7.0 || notaT<7.0){
                System.out.println("66, reprovado por nota mínima.");
                notas[i][2] = 66;
            }
            else{
                double notaF = 0.4*notaT + 0.6*notaP;
                notaF = Math.round(notaF);
                notas[i][2] = notaF;
                System.out.printf("A nota final é de %2.0f valores \n",notaF);
            }
            notas[i][0] = notaT;
            notas[i][1] = notaP;
            
        }
        
        System.out.print("NotaT NotaP Pauta\n");

        for(int j = 0; j<16; j++){
            System.out.printf("%5.1f %5.1f %5.1f\n",notas[j][0],notas[j][1],notas[j][2]);
        }

        sc.close();
    }
}
