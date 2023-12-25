package Aula09;

public class DateYMD extends Date implements Comparable<DateYMD>{
    private int day;
    private int month;
    private int year;

    public DateYMD(int day, int month, int year){ //construtor da classe
        this.day = day;
        this.month = month;
        this.year = year;
        }
    

    public void set(int day, int month, int year){
        if(valid(day, month, year)){
            this.day = day;
            this.month = month;
            this.year = year;
        }
    }

    public void increment(){
        day++;
        if(day>monthDays(month, year)){
            day = 1;
            month++;
            if(month>12){
                month = 1;
                year++;
            }
        }
    }

    public void decrement(){
        day--;
        if(day<1){
            day = monthDays(month, year);
            month--;
            if(month<1){
                month = 12;
                year--;
            }
        }
    }

    public String toString(){
        return String.format("%04d-%02d-%02d",year,month,day);
    }


    public int getDay(){
        return day;
    }

    public int getMonth(){
        return month;
    }

    public int getYear(){
        return year;
    }

    public int compareTo(DateYMD other){ //retorna 1 se this for maior que other, 0 se for igual e -1 se for menor

        if(this.getYear() > other.getYear()){
            return 1;
        }
        else if(this.getYear() < other.getYear()){
            return -1;
        }

        if(this.getMonth() > other.getMonth()){
            return 1;
        }
        else if(this.getMonth() < other.getMonth()){
            return -1;
        }

        if(this.getDay() > other.getDay()){
            return 1;
        }
        else if(this.getDay() < other.getDay()){
            return -1;
        }
        
        return 0;
        
    }
}