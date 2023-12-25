package Aula10;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashSet;
import java.util.Scanner;

public class Ex10_4 {
    public static void main(String[] args) throws IOException{
        Scanner input = new Scanner(new FileReader("src/Aula10/words.txt"));
        HashSet<String> sh = new HashSet<>();
        while(input.hasNext()){
            String word = input.nextLine();
            System.out.println(word);
            if(word.length() > 2){
                sh.add(word);
            }

            if(!word.matches("\\D+")){ // nao da para remover elementos equanto iteramos atraves da hashSet
                sh.remove(word);
            }
        }
        

        System.out.println("Elementos terminados em 's'");
        for(String entry : sh){
            if(entry.charAt(entry.length()-1) == 's'){
                System.out.println(entry);
            }        
        }

        System.out.println("Remoção de elementos que não contenham apenas letras");
        
        for(String entry : sh){
            System.out.println(entry);    
        }
    }
}
