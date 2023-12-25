package Aula10;

import java.util.HashMap;
import java.util.Map;

public class Ex10_1 {
    
    public static void main(String[] args){

        Map<String, String> mapa = new HashMap<>();
        mapa.put("branco","que tem a cor da neve");
        mapa.put("verde","cor do sporting");
        mapa.put("vermelho", "cor do sc braga");
        mapa.put("azul", "cor do belenenses");
        mapa.put("amarelo","cor do sol");

        for(Map.Entry<String, String> entry : mapa.entrySet()){
            System.out.println("Key = " + entry.getKey() + ", Value = "+ entry.getValue());
        }
        
        mapa.put("laranja","cor da fruta");
        mapa.replace("vermelho", mapa.get("vermelho").replaceAll("sc braga", "benfas"));
        mapa.remove("azul");

        System.out.println("------------------------------------------");


        for(Map.Entry<String, String> entry : mapa.entrySet()){
            System.out.println("Key = " + entry.getKey() + ", Value = "+ entry.getValue());
        }

        for(Map.Entry<String, String> entry : mapa.entrySet()){
            System.out.println("Key = " + entry.getKey() );
        }

        for(Map.Entry<String, String> entry : mapa.entrySet()){
            System.out.println("Value = "+ entry.getValue());
        }
    }
}
