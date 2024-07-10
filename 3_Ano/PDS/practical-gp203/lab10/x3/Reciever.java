package x3;
import java.util.*;

class Receiver<E> {
    private Collection<E> collection;

    public Receiver() {
        this.collection = new ArrayList<>();
    }

    public void addElement(E element) {
        collection.add(element);
        System.out.println("Added element: " + element);
        System.out.println("Current state of collection: " + collection);
    }

    public void removeElement(E element) {
        collection.remove(element);
        System.out.println("Removed element: " + element);
        System.out.println("Current state of collection: " + collection);
    }
}