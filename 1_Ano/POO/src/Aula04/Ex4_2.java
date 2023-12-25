package Aula04;
import java.util.Scanner;


public class Ex4_2 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduza uma frase (com números) para contar os dígitos: ");

        String frase1 = sc.nextLine();

        System.out.printf("A frase tem %d dígitos.\n",countDigits(frase1));


        System.out.print("Introduza uma frase para contar os espaços: ");

        String frase2 = sc.nextLine();

        System.out.printf("A frase tem %d espaços.\n",countSpaces(frase2));

        System.out.print("Introduza uma frase para verificar se é constituida apenas por minusculas: ");

        String frase3 = sc.nextLine();

        System.out.println(checkLowerCase(frase3));

        System.out.print("Introduza uma frase para remover espaços repetidos: ");

        String frase4 = sc.nextLine();

        System.out.println(removeRepeatedSpaces(frase4));

        System.out.print("Introduza uma frase para verificar se é um palíndromo: ");

        String frase5 = sc.nextLine();

        System.out.println(isPalindrome(frase5));

        sc.close();
    }

    public static boolean isPalindrome(String s){
        String newString = "";
        for(int i = s.length()-1; i>= 0; i--){
            newString += s.charAt(i);

        }
        
        if(newString.equals(s)){
            return true;
        }
        else{
            return false;
        }
    }


    public static String removeRepeatedSpaces(String s){
        String newString = s.trim().replaceAll(" +", " ");

        return newString;

        /*
        String newString = "" + s.charAt(0);
        char last = s.charAt(0); //carater anterior
        for(int i = 1; i<s.length();i++){

            if(!(last == ' ' && s.charAt(i) == ' ')){
                newString += s.charAt(i);
            }
            last = s.charAt(i);
        }
        
        return newString; 
        */
    }


    public static boolean checkLowerCase(String s){
        
        for(int i = 0; i<s.length();i++){
            if(!Character.isLowerCase(s.charAt(i))){
                return false;
            }
        }
        return true;
    }    

    public static int countSpaces(String s){
        int count = 0;
        for(int i = 0; i<s.length();i++){
            char ch = s.charAt(i);
            if (ch == ' '){
                count++;
            }
        }
        return count;
    }
    
    public static int countDigits(String s){
        int count = 0;
        for(int i = 0; i<s.length();i++){
            if (Character.isDigit(s.charAt(i))){
                count++;
            }
        }
        return count;
    }
}
