package p2utils;



class KeyValueNode<E> {

  final String key;
  E elem;
  KeyValueNode<E> next;

  KeyValueNode(String k, E e, KeyValueNode<E> n) {
    key  = k;
    elem = e;
    next = n;
  }

  KeyValueNode(String k, E e) {
    key  = k;
    elem = e;
    next = null;
  }

  //...

}



class KeyValueList<E> {

  private KeyValueNode<E> first = null;
  private int size = 0;

  /** {@code KeyValueList} constructor.
   */
  public KeyValueList() { }

  /** Returns the number of elements in the list.
   * @return Number of elements in the list
   */
  public int size() { return size; }

  /** Checks if the list is empty.
   * @return  {@code true} if list empty, otherwise {@code false}.
   */
  public boolean isEmpty() { return size == 0; }

  /** Updates the element associated to the given key, if the
   * key already exists; otherwise, inserts a new pair with
   * the given key and element.
   * @param  k a key
   * @param  e an element
   * @return  {@code true} if the key was added (size increased), 
   *          otherwise {@code false}.
   */
  public boolean set(String k, E e) {
    int prev_size = size;
    first = set(first, k, e);
    assert contains(k) && get(k).equals(e);
    return size>prev_size;
  }
  private KeyValueNode<E> set(KeyValueNode<E> n, String k, E e) {
    if (n==null) {
      n = new KeyValueNode<E>(k, e);
      size++;
    }
    else if (n.key.equals(k)) {
      n.elem = e;
    }
    else n.next = set(n.next, k, e);
    return n;
  }

  /** Returns the element associated to the given key.
   * @param  k a key
   * @return The associated element
   */
  public E get(String k) {
    assert contains(k) : "Key does not exist";
    return get(first, k);
  }
  private E get(KeyValueNode<E> n, String k) {
    if (n.key.equals(k)) return n.elem;
    return get(n.next, k);
  }

  /** Removes the given key and associated element.
   * @param  k a key
   */
  public void remove(String k) {
    assert contains(k) : "Key does not exist";
    first = remove(first, k);
    size--;
    assert !contains(k) : "Key still exists";
  }
  private KeyValueNode<E> remove(KeyValueNode<E> n, String k) {
    if (n.key.equals(k)) return n.next;
    n.next = remove(n.next, k);
    return n;
  }

  /** Checks if the given key exists in the list.
   * @param k a key
   * @return {@code true} if the key exists and {@code false} otherwise
   */
  public boolean contains(String k) { 
    return contains(first, k);
  }
  private boolean contains(KeyValueNode<E> n, String k) {
    if (n == null) return false;
    if (n.key.equals(k)) return true; 
    return contains(n.next, k);
  }

  /** Removes all entries from the list.
   */
  public void clear() {
    first = null;
    size = 0;
  }

  /** Returns an array with all keys in the list.
   * @return An array of keys
   */
  public String[] keys() {
    String[] keys = new String[size];
    keys(first, 0, keys);
    return keys;
  }
  private void keys(KeyValueNode<E> n, int i, String[] keys) {
    if (n==null) return;
    keys[i] = n.key;
    keys(n.next, i+1, keys);
    return;      
  }

  /** Returns a string representing the contents of the key-value list.
   * The result is formatted as a comma-separated sequence of pairs inside
   * braces.  Something like "{(k1, e1), (k2, e2), (k3, e3)}".
   * @return A string representing the contents of the key-value list
   */
  public String toString() {
    // Call a more versatile version with the proper delimiters and separator:
    return toString("", ", ", "");
  }

  /** Extended version of {@link #toString()}.
   * The parameters allow configuring the separator and delimiters.
   * @param left the left delimitor
   * @param sep the item separator
   * @param right the right delimitor
   * @return A formatted string representing the contents of the key-value list
   */
  public String toString(String left, String sep, String right) {
    // Complete this function (11.2)
    String s = left;
    KeyValueNode<E> n = first;
    while(n!=null){
		s+= "(" + n.key + sep + n.elem + ")";
		n = n.next;
	}
	s += right;
	return s;
  }

 }







public class HashTable<E> {

  private KeyValueList<E>[] array;
  private int size = 0;

  /** {@code HashTable} constructor.
   * @param dim The dimension of the table
   */
  @SuppressWarnings("unchecked")
  public HashTable(int dim) {
    assert dim > 0;
    int len = dim; // should be the nearest prime number
    array = (KeyValueList<E>[])new KeyValueList[len]; 
    clear();
  }

  /** Updates the element associated to the given key, if the
   * key already exists; otherwise, inserts a new pair with
   * the given key and element.
   * @param  key a key
   * @param  elem an element
   * @return  {@code true} if the key was added (size increased), 
   *          otherwise {@code false}.
   */
  public boolean set(String key, E elem) {
    int pos = hashFcn(key);
    boolean newelem = array[pos].set(key,elem);
    if (newelem) size++;

    assert contains(key) && get(key).equals(elem);
    return newelem;
  }

  /** Returns the element associated to the given key.
   * @param key A key
   * @return The element associated to the given key
   */
  public E get(String key) {
    assert contains(key);

    int pos = hashFcn(key);
    return array[pos].get(key);
  }

  /** Removes the given key and associated element.
   * @param  key a key
   */
  public void remove(String key) {
    assert contains(key);

    int pos = hashFcn(key);
    array[pos].remove(key);
    size--;

    assert !contains(key);
  }

  /** Checks if the given key exists in the list.
   * @param key a key
   * @return {@code true} if the key exists and {@code false} otherwise
   */
  public boolean contains(String key) {
    int pos = hashFcn(key);
    return array[pos].contains(key);
  }

  /** Checks if the table is empty.
   * @return  {@code true} if table empty, otherwise {@code false}.
   */
  public boolean isEmpty() {
    return size == 0;
  }

  /** Returns the number of elements in the table.
   * @return Number of elements in the table
   */
  public int size() {
    return size;
  }

  /** Clear the table.
   */
  public void clear() {
    for(int i = 0;i < array.length;i++)
      array[i] = new KeyValueList<E>();
    size = 0;
  }

  // Devolve o índice correspondente à chave str.
  // (É o hashCode da str "enrolado" modulo N, onde N=array.length.)
  private int hashFcn(String str) {
    int result = str.hashCode() % array.length;
    if (result < 0)
      result += array.length;
    assert 0<=result && result<array.length;  // pós-condição
    return result;
  }

  // fazer aqui as funções pedidas no guião...
  public String[] keys(){
	  String[] chaves = new String[size];
	  int count = 0;
	  for(int i = 0; i<array.length; i++){
		  for(String valores : array[i].keys()){
				if(valores != null){
					chaves[count] = valores;
					count++;
				}
		  }
	  }
	  return chaves; 
  }
  
  public String toString() {
    // Call a more versatile version with the proper delimiters and separator:
    return toString("{", ", ", "}");
  }
  
  
 public String toString(String left, String sep, String right) {
    // Complete this function (11.2)
    String s = left;
    int i;
    for(i = 0;i <array.length; i++){
		s+= array[i] + sep;
	}
	s = s.substring(0, s.length()-2);
	s += right;
	return s;
  }
	
}
