package x1;

public class VectorIterator<T> implements java.util.Iterator<T>{
    private T[] vec;
    private int size;
    private int index=0;

    public VectorIterator(T[] vec, int  size){
        this.vec = vec;
        this.size = size;
    }

	public boolean hasNext(){
        return index < size;
    }

    public T next(){
        if(!hasNext()){
            throw new java.util.NoSuchElementException();
        }
        else{
            return vec[index++];
        }
    }
    
}
