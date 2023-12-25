package Aula10;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Ex10_3 {
    public static Scanner sc = new Scanner(System.in);
    public static void main(String[] args){
        
        Map<Character, ArrayList<Integer>> mapa = new HashMap<>();

        System.out.print("Introduza uma palavra ou frase: ");
        String palavra = sc.nextLine();
       

        for(int i = 0; i<palavra.length();i++){
            if(!mapa.containsKey(palavra.charAt(i))){ 
                ArrayList<Integer> newList = new ArrayList<>();
                mapa.put(palavra.charAt(i),newList);
                mapa.get(palavra.charAt(i)).add(i);
            }
            else{
                mapa.get(palavra.charAt(i)).add(i);
            }
        }

        for(Map.Entry<Character, ArrayList<Integer>> entry : mapa.entrySet()){
            System.out.println("Key = " + entry.getKey() + ", Value = "+ entry.getValue());
        }

    }
}
