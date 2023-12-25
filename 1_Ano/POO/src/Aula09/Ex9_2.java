package Aula09;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;


public class Ex9_2 {
    public static void main(String[] args) {
        int DIM = 1000;
        
        Collection<Integer> col = new ArrayList<>();
        System.out.println("Collection   1000   2000   4000   8000  16000");
        System.out.printf("%s\n",col.getClass().getSimpleName());
        //Teste add (ArrayList)
        System.out.printf("%-10s","add");
        do{
            System.out.printf("%7.1f",checkAddPerformance(col,DIM));
            DIM *= 2;
        }while(DIM <= 16000);
        System.out.println();

        //Teste search (ArrayList)
        System.out.printf("%-10s","search");
        DIM = 1000;
        do{
            System.out.printf("%7.1f",checkSearchPerformance(col,DIM));
            DIM *= 2;
        }while(DIM <= 16000);
        System.out.println();

        //Teste remove (Arraylist)
        System.out.printf("%-10s","remove");
        DIM = 1000;
        do{
            System.out.printf("%7.1f",checkRemovePerformance(col,DIM));
            DIM *= 2;
        }while(DIM <= 16000);
        System.out.println();


        Collection<Integer> col1 = new LinkedList<>();
        System.out.printf("%s\n",col1.getClass().getSimpleName());
        // Teste add (LinkedList)
        System.out.printf("%-10s","add");
        DIM = 1000;
        do{
            System.out.printf("%7.1f",checkAddPerformance(col1,DIM));
            DIM *= 2;
        }while(DIM <= 16000);
        System.out.println();

        //Teste search (LinkedList)
        System.out.printf("%-10s","search");
        DIM = 1000;
        do{
            System.out.printf("%7.1f",checkSearchPerformance(col1,DIM));
            DIM *= 2;
        }while(DIM <= 16000);
        System.out.println();


        //Teste remove (LinkedList)
        System.out.printf("%-10s","remove"); 
        DIM = 1000;
        do{
            System.out.printf("%7.1f",checkRemovePerformance(col1,DIM)); 
            DIM *= 2;
        }while(DIM <= 16000);
        System.out.println();

    }

        
        

    public static double checkAddPerformance(Collection<Integer> col, int DIM){
        // Add
        double start, stop, delta;
        start = System.nanoTime(); // clock snapshot before
        for(int i=0; i<DIM; i++ )
            col.add( i );
        stop = System.nanoTime(); // clock snapshot after
        delta = (stop-start)/1e6; // convert to milliseconds

        return delta;
    }

    public static double checkSearchPerformance(Collection<Integer> col, int DIM){
        // Search
        double start, stop, delta;
        start = System.nanoTime(); // clock snapshot before
        for(int i=0; i<DIM; i++ ) {
            int n = (int) (Math.random()*DIM);
            if (!col.contains(n))
                continue;
        }
        stop = System.nanoTime(); // clock snapshot after
        delta = (stop-start)/1e6; // convert nanoseconds to milliseconds
        
        return delta;
    }

    public static double checkRemovePerformance(Collection<Integer> col, int DIM){ 
        // Remove
        double start, stop, delta;
        start = System.nanoTime(); // clock snapshot before
        Iterator<Integer> iterator = col.iterator();
        while (iterator.hasNext()) {
            iterator.next();
            iterator.remove();
        }
        stop = System.nanoTime(); // clock snapshot after
        delta = (stop-start)/1e6; // convert nanoseconds to milliseconds
        return delta;
    }
}
