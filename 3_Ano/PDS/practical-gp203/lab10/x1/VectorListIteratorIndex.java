package x1;

public class VectorListIteratorIndex<T> extends VectorIterator<T> implements java.util.ListIterator<T> {
    private int index;
    private T[] array;
    private int size;

    public VectorListIteratorIndex(T[] array, int size, int index){
        super(array,size);
        this.array = array;
        this.size = size;
        this.index = index;
    }

    public int nextIndex(){
        return index+1;
    }

    public int previousIndex(){
        return index-1;
    }

    @Override
    public boolean hasPrevious() {
        return index>0;
    }

    @Override
    public T previous() {
        if(!hasPrevious()){
            throw new java.util.NoSuchElementException();
        }
        else{
            return array[--index];
        }
    }

    @Override
    public void add(T e) {
        throw new UnsupportedOperationException("Unimplemented method 'add'");
    }

    @Override
    public void set(T e) {
        throw new UnsupportedOperationException("Unimplemented method 'set'");
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Unimplemented method 'remove'");
    }
}
