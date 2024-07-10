package x1;

public class Test {
    public static void main(String[] args){
        VectorGeneric<Integer> vector = new VectorGeneric<>();
        // Test addElem
        System.out.println("Adding elements...");
        vector.addElem(1);
        vector.addElem(2);
        vector.addElem(3);
        System.out.println("Total elements: " + vector.totalElem());

        // Test getElem
        System.out.println("Getting elements...");
        System.out.println("Element at index 0: " + vector.getElem(0)); 
        System.out.println("Element at index 1: " + vector.getElem(1)); 
        System.out.println("Element at index 2: " + vector.getElem(2));  

        // Test removeElem
        System.out.println("Removing element 2...");
        vector.removeElem(2);
        System.out.println("Total elements: " + vector.totalElem()); 

        vector.addElem(112);
        vector.addElem(21);
        vector.addElem(34);
        vector.addElem(123);

        System.out.println("New elements added to the vector:");
        java.util.ListIterator<Integer> iterator = vector.listIterator();
        while(iterator.hasNext()){
            System.out.println(iterator.next());
        }
    
        // Test listIterator with index and listIterator
        System.out.println("List iterating over elements from index 6... previous()");
        java.util.ListIterator<Integer> listIterator = vector.listIterator();
        java.util.ListIterator<Integer> listIteratorFromIndex = vector.listIterator(6);
        while (listIteratorFromIndex.hasNext() && listIterator.hasNext()) {
            System.out.println(listIteratorFromIndex.previous() + " previous");
            System.out.println(listIterator.next() + " next");
        }

    }
}
