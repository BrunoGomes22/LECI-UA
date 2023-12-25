package Aula10;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Random;

public class Ex10_2 {
    
    public static void main(String[] args){
        Map<String, HashSet<String>> mapa = new HashMap<>();
    
        HashSet<String> a = new HashSet<>();
        a.add("cor da neve");
        a.add("pálido");
        a.add("nuvem");

        mapa.put("branco", a);

        HashSet<String> b = new HashSet<>();
        b.add("relva");
        b.add("sporting cp");
        b.add("esperança");

        mapa.put("verde",b);

        HashSet<String> c = new HashSet<>();
        c.add("mar");
        c.add("fc porco");
        c.add("ceu");

        mapa.put("azul",c);

        HashSet<String> d = new HashSet<>();
        d.add("milho");
        d.add("sol");
        d.add("banana");

        mapa.put("amarelo",d);

        

        for(Map.Entry<String, HashSet<String>> entry : mapa.entrySet()){
            System.out.println("Key = " + entry.getKey() + ", Value = "+ entry.getValue());
        }

        mapa.remove("azul");
        HashSet<String> newHash = new HashSet<>();
        newHash.add("nada");

        mapa.replace("amarelo",d,newHash);

        System.out.println("------------------------------------------");

        for(Map.Entry<String, HashSet<String>> entry : mapa.entrySet()){
            System.out.println("Key = " + entry.getKey() + ", Value = "+ entry.getValue());
        }

        System.out.println(getRandomElem(mapa,"verde"));
    }

    public static String getRandomElem(Map<String, HashSet<String>> map, String key){
        HashSet<String> tempHash = map.get(key);
        String[] arr = new String[tempHash.size()];
        int i = 0;
        for(String meaning : tempHash){
            arr[i] = meaning;
            i++;
        }

        int rnd = new Random().nextInt(arr.length);
        return arr[rnd];
    }
}
