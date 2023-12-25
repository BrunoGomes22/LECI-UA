/**
 * Unitary Tests for testing the correctness of Memory class methods
 * 
 * @author Nome e NMec do aluno 1
 * @author Nome e NMec do aluno 2
 * 
 * @version data
 */

import static java.lang.System.*;
import java.util.*;
import java.io.*;

public class TestMemoryTime
{
	public static void main (String[] args)
	{
		Scanner input = new Scanner(System.in);

		Memory<Time> memory = null;
		
		Time time; // element being processed

		/* Make a test with times.csv (8 times in a memory with size 10)
		/* Make a test with empty.csv (empty memory - 0 times in a memory with size 10 */
		out.printf ("\nMaking tests with times.csv and with empty.csv\n");
		try
		{
			memory = loadMemoryFile ();
		}
		catch (IOException e)
		{
			out.printf ("%s\n", e.getMessage ());
			exit (1);
		}

		out.printf ("\nMemory read from the file\n");
		out.printf ("%s\n", memory.toString());

		// Testing the smallerElement method
		out.printf ("\nTesting the smallerElement method\n");
		Time smaller = null;
		try
		{
			smaller = memory.smallerElement ();
			out.printf("Smaller time in memory is %s\n", smaller.toString());
			assert smaller.toString().equals("00:00:00") : "Problems in the smaller method";
		}
		catch (MemoryEmptyException e)
		{
			out.printf ("%s\n", e.getMessage ());
		}

		// Testing the biggerElement method
		out.printf ("\nTesting the biggerElement method\n");
		Time bigger = null;
		try
		{
			bigger = memory.biggerElement ();
			out.printf("Bigger time in memory is %s\n", bigger.toString());
			assert bigger.toString().equals("23:59:59") : "Problems in the bigger method";
		}
		catch (MemoryEmptyException e)
		{
			out.printf ("%s\n", e.getMessage ());
		}

		// implement tests to verify the remaining methods
		//getElem()
		try 
        {
            System.out.println("--Teste da funcão getElem()");
            System.out.print("Insira um índice: ");
            int index = input.nextInt();
            Time elem = memory.getElement(index);
			System.out.println(elem);
			System.out.println(memory.toString());
        }
        catch (IndexOutOfMemoryException e)
        {
            out.printf ("%s\n", e.getMessage ());
        }

		//setElem()
		
		System.out.println("--Teste da funcão setElem()");
		System.out.print("Introduza o índice para o novo tempo: ");
		int index = input.nextInt();
		System.out.print("Horas: ");
		int horas = input.nextInt();
		System.out.print("Minutos: ");
		int minutos = input.nextInt();
		System.out.print("Segundos: ");
		int segundos = input.nextInt();
		try
		{
			Time t = new Time(horas,minutos,segundos);
	
			assert t!= null : "Objeto Time nulo!";

			memory.setElement(index, t);
			System.out.printf("Elemento %s na posicao %d da memória\n",memory.getElement(index).toString(),index);
			System.out.println(memory.toString());
		}
		catch(InvalidValueException e)
		{
			out.printf ("%s\n", e.getMessage ());
		}
		catch(IndexOutOfMemoryException e)
		{
			out.printf ("%s\n", e.getMessage ());
		}
		catch(NullPointerException e)
		{
			out.printf ("%s\n", e.getMessage ());
		}
		
		//insert()

		try
		{
            System.out.println("--Hora para inserir no final da memória (teste insert())");
            System.out.print("Horas: ");
            horas = input.nextInt();
            System.out.print("Minutos: ");
            minutos = input.nextInt();
            System.out.print("Segundos: ");
            segundos = input.nextInt();
            
            
            Time t = new Time(horas,minutos,segundos);
			memory.insert(t);
			int nelem = memory.getNElem();
			int lastIndex = nelem -1;
			System.out.printf("Elemento %s na posicao %d da memória\n",memory.getElement(lastIndex).toString(),lastIndex); 
			System.out.println(memory.toString());

		}      
        catch(InvalidValueException e) 
		{
            out.printf ("%s\n", e.getMessage ());
            
        }
		catch(MemoryFullException e)
		{
			out.printf ("%s\n", e.getMessage ());
		}
		catch(NullPointerException e)
		{
			out.printf ("%s\n", e.getMessage ());
		}
		catch(IndexOutOfMemoryException e)
		{
			out.printf ("%s\n", e.getMessage ());
		}
              
		//insertPos()
		try
		{
            System.out.println("--Teste insertPos()");
            System.out.print("Horas: ");
            horas = input.nextInt();
            System.out.print("Minutos: ");
            minutos = input.nextInt();
            System.out.print("Segundos: ");
            segundos = input.nextInt();
            System.out.print("Indice para introduzir novo elemento: ");
            index = input.nextInt();

            Time t = new Time(horas,minutos,segundos);
			memory.insertPos(t,index);
			System.out.printf("Elemento %s inserido na posicao %d da memória\n",memory.getElement(index).toString(),index); 
			System.out.println(memory.toString());
		}      
        catch(InvalidValueException e) 
		{
            out.printf ("%s\n", e.getMessage ());
            
        }
		catch(MemoryFullException e)
		{
			out.printf ("%s\n", e.getMessage ());
		}
		catch(NullPointerException e)
		{
			out.printf ("%s\n", e.getMessage ());
		}
		catch(IndexOutOfMemoryException e)
		{
			out.printf ("%s\n", e.getMessage ());
		}

		//delete()
		try
		{
            System.out.println("--Hora para remover no final da memória (teste delete())");
            
			int nelem = memory.getNElem();
			Time lastElem = memory.getElement(nelem-1);
			memory.delete();
			
			System.out.printf("Elemento %s removido da posicao %d da memória\n",lastElem.toString(),nelem-1); 
			System.out.println(memory.toString());

		}      
        catch(MemoryEmptyException e) 
		{
            out.printf ("%s\n", e.getMessage ());
            
        }
		catch(IndexOutOfMemoryException e)
		{
			out.printf ("%s\n", e.getMessage ());
		}
		
		//deletePos()
		try
		{
			System.out.println("--Teste deletePos()");
			System.out.print("Introduza um indíce para remover o respetivo elemento: ");
			index = input.nextInt();

			Time elemento = memory.getElement(index);
			memory.deletePos(index);

			System.out.printf("Elemento %s removido da posicão %d\n",elemento.toString(),index);
			System.out.println(memory.toString());
			
		}
		catch(IndexOutOfMemoryException e)
		{
			out.printf ("%s\n", e.getMessage ());
		}
		catch(MemoryEmptyException e)
		{
			out.printf ("%s\n", e.getMessage ());
		}
		catch(IndexOutOfBoundsException e)
		{
			out.printf ("%s\n", e.getMessage ());
		}

		//search()

		try
		{
			System.out.println("--Teste search()");
			System.out.println("Introduza um elemento Time para verificar se ele existe na memória");
			System.out.print("Horas: ");
            horas = input.nextInt();
            System.out.print("Minutos: ");
            minutos = input.nextInt();
            System.out.print("Segundos: ");
            segundos = input.nextInt();

			Time t = new Time(horas,minutos,segundos);

			if(memory.search(t) == -1){
				System.out.println("Elemento não existente!");
			}
			else{
				index = memory.search(t);
				System.out.printf("Elemento %s presente na posição %d\n",t.toString(),index);
			}
			System.out.println(memory.toString());
		}
		catch(NullPointerException e)
		{
			out.printf ("%s\n", e.getMessage ());
		}
		catch(MemoryEmptyException e)
		{
			out.printf ("%s\n", e.getMessage ());
		}
		catch(InvalidValueException e)
		{
			out.printf ("%s\n", e.getMessage ());
		}

		//copy() 
		
		
		System.out.println("--Teste copy()");
		Memory<Time> mem1 = memory.copy();
		System.out.println(mem1.toString());
		System.out.println("Memória copiada com sucesso!");
		

		//clear()
		try
		{
			System.out.println("--Teste clear()");
			memory.clear();
			System.out.println(memory.toString());
		}
		catch(MemoryEmptyException e)
		{
			out.printf ("%s\n", e.getMessage ());
		}
		

	}

	/* If the file is corrupted and being impossible to load the memory with all is useful elements the memory will not be created. */
	public static Memory<Time> loadMemoryFile () throws IOException
	{
		Scanner input = new Scanner(System.in);
		out.printf("Filename to acquire the memory? ");
		String filename = input.nextLine();		
		
		Memory<Time> memory;
		Scanner stream = new Scanner (new File (filename)); // opening the file
		int size = Integer.parseInt (stream.nextLine ()); // reading the file dimension (first line)
		int ne = Integer.parseInt (stream.nextLine ()); // reading the number of useful elements (second line)

		try
		{ memory = new Memory<Time> (size); } // creating the empty memory with the given size
		catch (NegativeArraySizeException e)
		{ out.printf ("%s\n", e.getMessage ()); stream.close (); return null; }

		for (int i = 0; i < ne; i++) // reading the time information (remaining lines)
		{
			// reading each time information and creating the Time object
			String line = stream.nextLine ();
			String [] timevalues = line.split (":");
			if (timevalues.length != 3)
			{
				stream.close ();
				out.printf ("File format incorrect\n");
				return null;
			}
			
			int hours = Integer.parseInt (timevalues[0]);
			int minutes = Integer.parseInt (timevalues[1]);
			int seconds = Integer.parseInt (timevalues[2]);

			Time time = null;
			try
			{ time = new Time (hours, minutes, seconds); }
			catch (InvalidValueException e)
			{ out.printf ("%s\n", e.getMessage ()); stream.close (); return null; }

			try
			{ memory.insert (time); } // inserting in the end of the memory
			catch (MemoryFullException e)
			{ out.printf ("%s\n", e.getMessage ()); stream.close (); return null;}
			catch (NullPointerException e)
			{ out.printf ("%s\n", e.getMessage ()); stream.close (); return null;}
		}

		stream.close (); // closing the file
		return memory; // returning the memory
	}
}
