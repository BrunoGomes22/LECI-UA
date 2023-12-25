package Aula09;

public class DateND extends Date implements Comparable<DateND>{
    
    private int days;

    public DateND(int days){
        this.days = days;
    }

    public int getDays(){
        return days;
    }

    public void setDays(int days){
        this.days = days;
    }

    public void increment(){
        days++;
    }

    public void decrement(){
        days--;
    }

    public String toString(){
        return String.format("%s", this.ndToYmd().toString());
    }

    public DateYMD ndToYmd(){
        DateYMD base = new DateYMD(1, 1, 2000);

        if(days > 0){
            for(int i = days; i > 0;i--){
                base.increment();
            }
        }
        else{
            for(int i = days; i<0;i++){
                base.decrement();
            }
        }

        return base;
    }

    public int compareTo(DateND other){
        if(this.getDays() > other.getDays()){
            return 1;
        }
        else if(this.getDays() < other.getDays()){
            return -1;
        }

        return 0;
    }
}
