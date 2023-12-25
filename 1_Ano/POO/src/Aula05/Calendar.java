package Aula05;

public class Calendar{
    private int year;
    private int weekDay;

    public Calendar(int year,int weekDay){
        assert weekDay >= 1 && weekDay <= 7;
        this.year = year;
        this.weekDay = weekDay;
    }

    public int year(){
        return year;
    }

    public int firstWeekdayOfYear(){
        return weekDay;
    }

    public int firstWeekdayOfMonth(int month){ //dúvida nesta função
        assert month>= 1 && month <= 12;

        int totalDays = 0;
        for(int i = 1; i<month;i++){
            totalDays += Date.monthDays(i, year);
        }
        return (totalDays+weekDay-1)%7+1;

    }


    public String printMonthYear(int a, int m){
        String[] meses = {"Janeiro","Fevereiro","Março","Abril","Maio","Junho","Julho","Agosto","Setembro","Outubro","Novembro","Dezembro"};

        return String.format("  %s de %d \n",meses[m-1],a);

    }

    public void printMonth(int month){
        System.out.println(" Su Mo Tu We Th Fr Sa ");

        int diasSemana = firstWeekdayOfMonth(month);
        int diasMes = Date.monthDays(month, year);
        int k = 1; 
        int counter = diasSemana;

        while(k<diasSemana){
            System.out.print("   ");
            k++;
        }

        for(int i = 1; i<=diasMes;i++){
            System.out.printf(" %2d",i);

            if(counter%7 == 0){
                System.out.print("\n");
            }
            counter++;
        }

        System.out.print("\n");

    }

    public void printCalendarYear(){
        for(int i = 1; i<=12;i++){
            System.out.print(printMonthYear(year, i));
            printMonth(i);
            System.out.print("\n");
        }
    }
}
