package Aula09;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeSet;

import Aula05.Date;

public class Ex9_1 {
    public static void main(String[] args) {
        ArrayList<Integer> c1 = new ArrayList<>();
        for (int i = 10; i <= 100; i+=10)
        c1.add(i);
        System.out.println("Size: " + c1.size());
        for (int i = 0; i < c1.size(); i++)
        System.out.println("Elemento: " + c1.get(i));
        ArrayList<String> c2 = new ArrayList<>();
        c2.add("Vento");
        c2.add("Calor");
        c2.add("Frio");
        c2.add("Chuva");
        System.out.println(c2);
        Collections.sort(c2);
        System.out.println(c2);
        c2.remove("Frio");
        c2.remove(0);
        c2.add(1, "Nublado");
        c2.add("Aguaceiros");
        c2.add(2,"Chuva");
        
        System.out.println(c2);
        System.out.println(c2.indexOf("Vento"));
        System.out.println(c2.lastIndexOf("Chuva"));
        System.out.println(c1.get(3));
        c1.set(4, 400);
        System.out.println(c1);
        System.out.println(c2.subList(0, 2));

        Set<Pessoa> c3 = new HashSet<>();
        Pessoa pTest = new Pessoa("Adelaide", 1221313, new Date(13, 2, 1960));
        c3.add(new Pessoa("Matumbino", 1221312, new Date(1, 3, 2005)));
        c3.add(new Pessoa("Arrumbino", 1221319, new Date(1, 12, 2003)));
        c3.add(new Pessoa("Zeca", 1221314, new Date(2, 5, 2005)));
        c3.add(new Pessoa("Zacarias", 1221318, new Date(23, 5, 2009)));
        c3.add(pTest);
        c3.add(pTest); //ignora esta adicao
        Iterator<Pessoa> itr = c3.iterator();

        while(itr.hasNext()){
            System.out.println(itr.next());
        }

        Set<DateYMD> c4 = new TreeSet<>();

        c4.add(new DateYMD(1,12,2001));
        c4.add(new DateYMD(13,3,2003));
        c4.add(new DateYMD(3, 6, 1990));
        c4.add(new DateYMD(19, 4, 2002));
        c4.add(new DateYMD(23, 5, 1972));
        

        for(DateYMD k : c4){
            System.out.println(k);
        }

        System.out.println("---------------------------");

        Set<DateND> c5 = new TreeSet<>();

        c5.add(new DateND(35));
        c5.add(new DateND(70));
        c5.add(new DateND(45));
        c5.add(new DateND(102));
        c5.add(new DateND(250));

        Iterator<DateND> itr2 = c5.iterator();

        while(itr2.hasNext()){
            System.out.println(itr2.next());
        }

    }
}
