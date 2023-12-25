package Aula11;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import java.util.Map;
import java.util.Scanner;

public class Ex11_1 {
    public static void main(String[] args) throws IOException{
        
        String path = "src/Aula11/major.txt";
        ArrayList<String> lista = new ArrayList<>();
        Map<String,Map<String,Integer>> mapa1 = new HashMap<String,Map<String,Integer>>();
        Map<String, Integer> mapa2 = new HashMap<String,Integer>();

        filterText(path, lista); //introduzir apenas palavras necessarias na lista
        
        for(int i = 0; i<lista.size();i++){ //associar um mapa a cada palavra
            
            mapa1.put(lista.get(i), mapa2);   
        }
        
        for(int i = 0; i<lista.size();i++){ //preencher a lista com os pares
            String first = lista.get(i);
            String next = lista.get(i+1);
            mapa1.get(first).put(next, mapa1.get(first).getOrDefault(next, 0)+1);
        }
         
        for (String par : mapa1.toString().substring(1, mapa1.toString().length()-2).split("}, ")) {
            System.out.println(par + "}");
        }
    }

    public static void filterText(String path, ArrayList<String> lista) throws IOException{
        Scanner sc = new Scanner(new File(path));
        while(sc.hasNext()){
            if(sc.next().length() > 2){
                lista.add(sc.next());
            }
            else if(sc.next().equals("\\t") || sc.next().equals("\\n") || sc.next().equals("\\.") || sc.next().equals("\\,") || sc.next().equals("\\:") || sc.next().equals("\\'") || sc.next().equals("\\‘") || sc.next().equals("\\’") || sc.next().equals("\\;") || sc.next().equals("\\?") || sc.next().equals("\\!") || sc.next().equals("\\-") || sc.next().equals("\\*") || sc.next().equals("\\{") || sc.next().equals("\\}") || sc.next().equals("\\=") || sc.next().equals("\\+") || sc.next().equals("\\&") || sc.next().equals("\\/") || sc.next().equals("\\(") || sc.next().equals("\\)") || sc.next().equals("\\[") || sc.next().equals("\\]") || sc.next().equals("\\”") || sc.next().equals("\\“") || sc.next().equals("\\“") || sc.next().equals("\\") || sc.next().equals("\\\"") || sc.next().equals("\\\'"))  {
                continue;
            }
        }
    }

    
}
