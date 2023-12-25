import static java.lang.System.*;
import java.io.*;
import java.util.*;	/* NoSuchElementException */

public class TestRecList
{

  public static void main(String[] args) throws IOException
  {
    RecLinkedList<IntId> list = new RecLinkedList<IntId> ();

	list.insertLast (new IntId (40));
    list.insertFirst (new IntId (20));
    list.insertLast (new IntId (20));
    list.insertFirst (new IntId (30));
    list.insertLast (new IntId (20));
    list.insertLast (new IntId (20));
    list.insertLast (new IntId (20));
    list.insertLast (new IntId (40));

    out.println (list.toString ("original"));

	RecLinkedList<IntId> list2 = new RecLinkedList<IntId> ();

	RecLinkedList<IntId> list3 = new RecLinkedList<IntId> ();



	//teste copy
	try{
		list2 = list.copy();
	}
	catch (EmptyListException e)
	{ out.printf ("%s\n", e.getMessage ()); }
	out.println (list2.toString ("copia"));
	
	//teste reverse
	try{
		list3 = list.reverse();
	}
	catch(EmptyListException e)
	{ out.printf ("%s\n", e.getMessage ()); }
	out.println (list3.toString ("invertida"));
	



	IntId first = null;
	try
	{
		first = list.first();
		assert first.toString().equals("(30/4)");
		out.println ("first = " + first.toString ());
	}
	catch (EmptyListException e)
    { out.printf ("%s\n", e.getMessage ()); }
    
    IntId last = null;
	try
	{
		last = list.last();
		assert last.toString().equals("(40/8)");
		out.println ("last = " + last.toString ());
	}
	catch (EmptyListException e)
    { out.printf ("%s\n", e.getMessage ()); }
	
	out.println ("\nChange element at position 5");
    
    IntId newelem = new IntId (99);
	int pos = 5;
    IntId set = null;
	try
	{
		set = list.set (newelem, pos);
		if (set != null) out.println ("changed element at position " + pos + " " + set.toString () + " -> " + newelem.toString ());
		out.println (list.toString ("after change"));
	}
	catch (EmptyListException e)
    { out.printf ("%s\n", e.getMessage ()); }
    catch (IndexOutOfBoundsException e2)
    { out.printf ("%s\n", e2.getMessage ()); }  

	out.println ("\nRemove last element");

    IntId rem = null;
	try
	{
		rem = list.removeLast ();
		if (rem != null) out.println ("removed element = " + rem.toString ());
		out.println (list.toString ("after remove"));
	}
	catch (EmptyListException e)
    { out.printf ("%s\n", e.getMessage ()); }    
    
	out.println ("\nInsert element after the end");

	IntId i = new IntId (70);
	try
	{
		list.insertPos (i, list.size()+1);
		out.println ("inserted element (out of the end) = " + i.toString ());
		out.println (list.toString ("after insertion"));
	}
	catch (IndexOutOfBoundsException e)
    { out.printf ("%s\n", e.getMessage ()); }	

	out.println ("\nInsert element before the end");

	try
	{
		list.insertPos (i, list.size()-1); //list.size()-1
		out.println ("inserted element (before the end) = " + i.toString ());
		out.println (list.toString ("after insertion"));
	}
	catch (IndexOutOfBoundsException e)
    { out.printf ("%s\n", e.getMessage ()); }	

	out.println ("\nLook for the index of the first occurrence of an element ");

	IntId jf = new IntId (30);
	int firstIndex = -1;
	try
	{
		firstIndex = list.firstIndexOf(jf);
		out.println ("element " + jf.toStringElement () + " first occurrence at index = " + firstIndex);
	}
	catch (EmptyListException e)
    { out.printf ("%s\n", e.getMessage ()); }
    catch (NoSuchElementException e2)
    { out.printf ("%s\n", e2.getMessage ()); }

	out.println ("\nLook for the index of the last occurrence of an element ");

	IntId jl = new IntId (20);
	int lastIndex = -1;
	try
	{
		lastIndex = list.lastIndexOf(jl);
		out.println ("element " + jl.toStringElement () + " last occurrence at index = " + lastIndex);
	}
	catch (EmptyListException e)
    { out.printf ("%s\n", e.getMessage ()); }	
    catch (NoSuchElementException e2)
    { out.printf ("%s\n", e2.getMessage ()); }

	IntId k = new IntId (20);
	out.println ("\nSearch for the first occurrence of the element " +  k.toStringElement());
	first = null;
	try
	{
		first = list.searchFirst(k); //teste do searchDown
		out.println ("first element = " + first.toString ());
	}
	catch (EmptyListException e1)
    { out.printf ("%s\n", e1.getMessage ()); }
    catch (NoSuchElementException e2)
    { out.printf ("%s\n", e2.getMessage ()); }

	IntId next = null;
	out.println ("\nSearch for the next occurrence of the element " +  jf.toStringElement());
	
	try
	{
		next = list.searchNext(jf);
		out.println ("next element = " + next.toString ());
	}
	catch (EmptyListException e1)
    { out.printf ("%s\n", e1.getMessage ()); }
    catch (NoSuchElementException e2)
    { out.printf ("%s\n", e2.getMessage ()); }
	
	out.println ("\nSearch for the next occurrence of the element " +  jf.toStringElement());
	try
	{
		next = list.searchNext(jf);
		out.println ("next element = " + next.toString ());
	}
	catch (EmptyListException e1)
    { out.printf ("%s\n", e1.getMessage ()); }
    catch (NoSuchElementException e2)
    { out.printf ("%s\n", e2.getMessage ()); }

	/* 
	teste searchUp
	out.println ("\nSearch for the last occurrence of the element " +  jf.toStringElement());
	last = null;
	
	try
	{
		last = list.searchLast(jf);
		out.println ("last element = " + last.toString ());
	}
	catch (EmptyListException e1)
    { out.printf ("%s\n", e1.getMessage ()); }
    catch (NoSuchElementException e2)
    { out.printf ("%s\n", e2.getMessage ()); }
	*/

	// teste removeAllElements
	out.println ("\nRemove all occurrences of the element " +  jl.toStringElement());
	out.println (list.toString ("original"));
	try{
		list.removeAllElements(jl);
	}catch(EmptyListException e1)
	{ out.printf ("%s\n", e1.getMessage ()); }
	out.println (list.toString ("Com os elementos removidos"));

	//teste removeFirstElement
	IntId jbl = new IntId (40);
	list.insertFirst(jbl);
	out.println ("\nRemove first occurrence of the element " +  jbl.toStringElement());
	out.println (list.toString ("Original"));
	try{
	list.removeFirstElement(jbl);
	}catch(EmptyListException e1)
	{ out.printf ("%s\n", e1.getMessage ()); }
	out.println (list.toString ("Com o elemento removido"));
	
  }
}
