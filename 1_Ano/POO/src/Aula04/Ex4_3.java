package Aula04;
import java.util.Scanner;

public class Ex4_3 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        System.out.print("Introduza uma frase para criar o seu acrónimo: ");

        String acronimo = "";

        String frase = sc.nextLine();

        String[] words = frase.split(" ");

        for(int i = 0; i<words.length;i++){
            if(words[i].length()>=3){
                acronimo += words[i].charAt(0);
            }
        }
       
        System.out.printf("Acrónimo: %s\n",acronimo);
        sc.close();
    }
}
