package Aula04;
import java.util.Scanner;

public class Ex4_1 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduza uma palavra, frase ou parágrafo: ");

        String str = sc.nextLine();
        
        
        System.out.printf("Conversão para minusculas: %s\n",str.toLowerCase());
        System.out.printf("Último caráter da frase: %s\n", str.charAt(str.length()-1));
        System.out.printf("Três primeiros carateres: %s\n", str.substring(0, 3));

        System.out.printf("Conversão para maiúsculas: %s\n",str.toUpperCase());
        System.out.printf("Hash code da String: %s\n", str.hashCode());
        System.out.printf("Concatenação de abc: %s\n", str.concat("abc"));

        sc.close();
    }
}
