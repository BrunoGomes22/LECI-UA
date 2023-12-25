package Aula12;

import java.util.Set;
import java.util.TreeSet;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;

public class Ex12_2 {
    
    public static void main(String[] args) throws IOException{
        Set<Movie> movies = new TreeSet<Movie>(); 

        Scanner sc = new Scanner(new File("src/Aula12/movies.txt"));

        sc.nextLine(); //ignora a primeira linha (cabecalho)
        
        String[] splt;
        String line;
        while(sc.hasNextLine()){
            line = sc.nextLine();

            splt = line.split("\\t");  //separar por tabs espacos

            movies.add(new Movie(splt[0], Double.parseDouble(splt[1]), splt[2], splt[3], Integer.parseInt(splt[4])));
        }

        //movies.forEach(System.out::println);

        for(Movie m : movies){
            System.out.println(m);
        }

        System.out.print("\n\n\n\n");

        printByScore(movies);
        printToFile("/home/brunogomes/POO/POO/src/Aula12/myselection.txt", movies);
        
    }

    public static void printByScore(Set<Movie> s){ 

        List<Movie> l = new ArrayList<Movie>(s); //esta lista poe os elementos do set s dentro da arrayList

        l.sort((m1,m2) -> Double.compare(m1.getScore(), m2.getScore()));

        Collections.reverse(l);

        l.forEach(System.out::println);


    }

    public static void printToFile(String path, Set<Movie> s) throws IOException{
        PrintWriter pw = new PrintWriter("myselection.txt");

        for(Movie m : s){
            if(m.getScore()>60 && m.getGenre().equals("comedy")){
                pw.println(m.toString());
            }
        }

        pw.close();
    }
}
