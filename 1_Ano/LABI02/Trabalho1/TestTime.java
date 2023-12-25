/**
 * Unitary Tests for testing the correctness of Time class methods
 * 
 * @author Bruno Gomes 103320
 * @author Sebastian Gonzalez 103690
 * 
 * @version data
 */

import static java.lang.System.*;
import java.util.*;

public class TestTime
{
	public static void main (String[] args) throws NullPointerException, InvalidValueException
	{
		// Testing the null constructor
		out.printf("\nTesting the null constructor\n");
		Time time1 = new Time();
		out.printf("Time1 (zero time) = %s\n", time1.toString());
		assert time1.toString().equals("00:00:00");

		// Testing the isZero method
		out.printf("\nTesting the isZero method\n");
		assert time1.isZero() == true : "Problems in isZero method";
		
		// Testing the setup constructor from time in hours, minutes and seconds
		out.printf("\nTesting the setup constructor from time in hours, minutes and seconds\n");
		Time time2 = null;
		try
		{
			time2 = new Time(23,12,35);
			out.printf("Time2 (23 hours, 12 minutes and 35 seconds) = %s\n", time2.toString());
		}
		catch (InvalidValueException e)
		{
			throw new InvalidValueException (e.getMessage());
		} 
		assert time2.toString().equals("23:12:35"): "Problems in setup constructor from time in h:m:s";;

		// Testing again the isZero method
		out.printf("\nTesting again the isZero method\n");
		assert time2.isZero() == false : "Problems in isZero method";

		// Testing the setup constructor from object time using the equals method
		out.printf("\nTesting the setup constructor from object time using the equals method\n");
		Time time3 = null;
		try
		{
			time3 = new Time(time2);
			out.printf("Time3 (copy of Time2) = %s\n", time3.toString());
			assert time3.equals(time2): "Problems in setup constructor from a time object";

		}
		catch (NullPointerException e)
		{
			throw new NullPointerException (e.getMessage());
		} 
		// Testing the setup constructor from time in total seconds
		out.printf("\nTesting the setup constructor from time in total seconds\n");
		Time time4 = null;
		try
		{
			time4 = new Time(15025);
			out.printf("Time4 (15025 seconds) = %s\n", time4.toString());
		}
		catch (NullPointerException e)
		{
			throw new NullPointerException (e.getMessage());
		} 
		assert time4.toString().equals("04:10:25"): "Problems in setup constructor from time in total seconds";
		
		// Testing the totalSeconds method
		out.printf("\nTesting the totalSeconds method\n");
		int totalSeconds = time4.totalSeconds();
		out.printf("Total seconds of Time4 = %d\n", totalSeconds);
		assert totalSeconds == 15025: "Problems in totalSeconds methods";
		
		totalSeconds = time1.totalSeconds();
		out.printf("Total seconds of Time1 = %d\n", totalSeconds);
		assert totalSeconds == 0: "Problems in totalSeconds methods";

		// implement tests to verify the remaining methods
		// getHours - getMinutes - getSeconds - setHours - setMinutes - setSeconds

		// Teste dos Setters
		System.out.println(time1.getHours());
		System.out.println(time1.getSeconds());
		System.out.println(time1.getMinutes());

		// Teste dos Setters
		time1.setHours(21);
		time1.setMinutes(1);
		time1.setSeconds(29);

		System.out.println(time1.toString());

		//time1.setHours(91): - Teste de Horas inválidas
		//time1.setMinutes(-1); - Teste de Minutos inválidas
		//time1.setSeconds(90); - Teste de Segundos inválidas

		System.out.println(time1.toString());
		// implement tests to verify the compareTo method with equal and different times

		Time empty = null;

		//System.out.println(time1.compareTo(empty)); - Testa compareTo

		// implement tests to verify the addTimes method with acceptable values

		System.out.println(time3.addTimes(time2));

		// implement tests to verify the subTimes method with acceptable values
		Time time5 = new Time(3,1,50); 
		System.out.println(time2.subTimes(time5));
	}
}
