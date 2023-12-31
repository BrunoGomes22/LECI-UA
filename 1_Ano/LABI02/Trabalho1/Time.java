/**
 * Time - an abstract data type for processing time information in the form hh:mm:ss.
 * It only accepts valid times between 00:00:00 and 23:59:59.
 * 
 * @author Bruno Gomes 103320
 * @author Sebastian Gonzalez 103690
 * 
 * @version data
 */
 
public class Time implements Cloneable, Comparable <Time>
{
	private int hours;
	private int minutes;
	private int seconds;

	/**
	* The null constructor.
	*/
	public Time ()
	{
		hours = minutes = seconds = 0;
	}

	/**
	* The setup constructor from time in hours, minutes and seconds.
	* @param pHour the hours.
	* @param pMin the minutes.
	* @param pSec the seconds.
	* @throws InvalidValueException if hours, minutes or seconds is invalid.
	*/
	public Time (int pHour, int pMin, int pSec) throws InvalidValueException
	{
		if (pHour < 0 || pHour > 23)
			throw new InvalidValueException ("Invalid hours");
		if (pHour < 0 || pMin > 59)
			throw new InvalidValueException ("Invalid minutes");
		if (pHour < 0 || pSec > 59)
			throw new InvalidValueException ("Invalid seconds");

		hours = pHour; minutes = pMin; seconds = pSec;
	}

	/**
	* The setup constructor from a time object.
	* @param pTime the time.
	* @throws NullPointerException if pTime is null.
	*/
	public Time (Time pTime) throws NullPointerException
	{
		if (pTime == null) throw new NullPointerException ("Null time");
		
		hours = pTime.getHours ();
		minutes = pTime.getMinutes ();
		seconds = pTime.getSeconds ();
	}

	/**
	* The setup constructor from time in total seconds.
	* @param pSeconds the time in seconds.
	* @throws InvalidValueException if total seconds is invalid.
	*/
	public Time (int pSeconds) throws InvalidValueException
	{
		if (pSeconds < 0 || pSeconds > 86398)
			throw new InvalidValueException ("Invalid time");
		
		hours = pSeconds / 3600; // calculation of the hours
		pSeconds = pSeconds % 3600; // calculation of the remaining seconds
		minutes = pSeconds / 60; // calculation of the minutes
		seconds = pSeconds % 60; // calculation of the seconds
	}

	/**
	* The clone method.
	* @return the clone of the time.
	*/ 
	public Time clone ()
	{
		Time copy = null;

		try // invoking the predefined method
		{ copy = (Time) super.clone (); }
		catch (CloneNotSupportedException e)
		{ System.exit (1); }

		return copy; // return the new object
	}

	/**
	* The selector method of the hours.
	* @return the hours of the time.
	*/ 
	public int getHours () // hours component selector
	{
		return hours;
	}

	/**
	* The selector method of the minutes.
	* @return the minutes of the time.
	*/ 
	public int getMinutes () // minutes component selector
	{
		return minutes;
	}

	/**
	* The selector method of the seconds.
	* @return the seconds of the time.
	*/ 
	public int getSeconds () // seconds component selector
	{
		return seconds;
	}

	/**
	* The modifier method of the hours.
	* @param pHour the hours.
	* @throws InvalidValueException if hours is invalid.
	*/ 
	public void setHours (int pHour) throws InvalidValueException
	{
		if (pHour < 0 || pHour > 23)
			throw new InvalidValueException ("Invalid hours");

		hours = pHour;
	}

	/**
	* The modifier method of the minutes.
	* @param pMin the minutes.
	* @throws InvalidValueException if minutes is invalid.
	*/ 
	public void setMinutes (int pMin) throws InvalidValueException
	{
		if (pMin < 0 || pMin > 59)
			throw new InvalidValueException ("Invalid minutes");

		minutes = pMin;
	}

	/**
	* The modifier method of the seconds.
	* @param pSec the seconds.
	* @throws InvalidValueException if seconds is invalid.
	*/ 
	public void setSeconds (int pSec) throws InvalidValueException
	{
		if (pSec < 0 || pSec > 59)
			throw new InvalidValueException ("Invalid seconds");

		seconds= pSec;
	}

	/**
	* The method checks if the time is 00:00:00.
	* @return {@code true} in affirmative case, otherwise {@code false}.
	*/ 
	public boolean isZero ()
	{
		return (hours == 0 && minutes == 0 && seconds == 0);
	}

	/**
	* The method checks if two times are the same.
	* @return {@code true} in affirmative case, otherwise {@code false}.
	*/ 
	public boolean equals (Object pObj)
	{
		if (this == pObj) return true;
		if (!(pObj instanceof Time)) return false;

		Time time = (Time) pObj;
		return (hours == time.getHours () && minutes == time.getMinutes () && seconds == time.getSeconds ());
	}

	/**
	* The relational operator (method that compares two times).
	* @param pTime the time to compare with.
	* @return {@code positive value} if this time is bigger than pTime, {@code negative value} if it is smaller and {@code 0} if they are equal.
	* @throws NullPointerException if pTime is null.
	*/ 

	public int compareTo (Time pTime) throws NullPointerException
	{
		if (pTime == null) throw new NullPointerException ("Null time");

		return this.totalSeconds () - pTime.totalSeconds ();
	}

	/**
	* The method calculates the total number of seconds.
	* @return the total number of seconds of the time.
	*/ 
	public int totalSeconds ()
	{
		return hours * 3600 + minutes * 60 + seconds;
	}

	/**
	* The method adds two times.
	* @param pTime the time to sum.
	* @return the addition of the times.
	* @throws NullPointerException if pTime is null.
	* @throws InvalidValueException if the addition of times is not a valid time (bigger than 23:59:59).
	*/ 
	public Time addTimes (Time pTime) throws NullPointerException, InvalidValueException {
		if (pTime == null) throw new NullPointerException ("Null time");

		//somar segundos
		if (pTime.seconds + this.seconds > 59){ // se superar os 59 segundos
				this.minutes++;
				if(minutes > 59){
					hours++;
					if(hours > 24){
						this.hours = 0;
						this.seconds = 0;
						this.minutes = 0;
					}
				}
				this.seconds += pTime.seconds;
				this.seconds -= 60;
		}
		else{
			this.seconds += pTime.seconds; // caso normal
		}

		// somar minutos
		if (pTime.minutes + this.minutes > 59){ // se superar os 59 segundos
				this.hours++;
				if(hours > 24){
					this.hours = 0;
					this.seconds = 0;
					this.minutes = 0;
				}
				this.minutes += pTime.minutes;
				this.minutes -= 59;
		}
		else{
			this.minutes += pTime.minutes; // caso normal

		}

		// somar horas
		if (pTime.hours + this.hours > 24){ // se superar as 24 horas
				this.hours += pTime.hours;
				this.hours -= 24; 
		}
		else {
			this.hours += pTime.hours; // caso normal
		}
		Time tempo = new Time();
		tempo.seconds = this.seconds;
		tempo.minutes = this.minutes;
		tempo.hours = this.hours;
		return tempo;
	}
	

	/**
	* The method subtracts two times.
	* @param pTime the time to subtract.
	* @return the subtraction of the times.
	* @throws NullPointerException if pTime is null.
	* @throws InvalidValueException if the subtraction of times is not a valid time (smaller than 0:00:00).
	*/ 
	public Time subTimes (Time pTime) throws NullPointerException, InvalidValueException
	{
		if (pTime == null) throw new NullPointerException ("Null time");

		Time tempo1 = new Time();

		// se os tempos forem iguais
		if (this.minutes == pTime.minutes && this.seconds == pTime.seconds && this.hours == pTime.hours ){
			tempo1.seconds = 0;
			tempo1.minutes = 0;
			tempo1.hours = 0;
			return tempo1;
		}

		if (pTime.minutes == 0 && pTime.seconds == 0 && pTime.hours == 0 ){
			return this;
		}


		//subrair segundos
		if (this.seconds - pTime.seconds < 0){ // se segundos for menor que 0
			this.minutes--;
			if(this.minutes < 0){
				this.hours--;
			}
			this.seconds = 60 - Math.abs(this.seconds - pTime.seconds);
		}
		else{
			this.seconds = this.seconds - pTime.seconds; // caso normal
		}
		System.out.println(this.hours);

		// subtrair minutos
		if (this.minutes - pTime.minutes < 0){ // se minutos for menor que 0
			this.hours--;
			if(this.hours < 0){
				this.hours = 23;
			}
			this.minutes = 60 - Math.abs(this.minutes - pTime.minutes);
		}
		else{
			this.minutes = this.minutes - pTime.minutes; // caso normal
		}
		System.out.println(this.hours);

		// somar horas
		if (this.hours - pTime.hours < 0){ // se horas for menor que 0
			this.hours = 23 - Math.abs(this.hours - pTime.hours);
		}
		else {
			this.hours = this.hours - pTime.hours; // caso normal
		}
		tempo1.seconds = this.seconds;
		tempo1.minutes = this.minutes;
		tempo1.hours = this.hours;
		return tempo1;
	}

	/**
	* The method creates a string representing the time.
	* @return time as a string in the format hh:mm:ss.
	*/
	public String toString ()
	{
		return String.format("%02d:%02d:%02d", hours, minutes, seconds);
	}
}
