package Aula07;

public class DateND extends Date{
    
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
}
