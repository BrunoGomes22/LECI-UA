package observer;

public class StatisticsDisplay implements Subscriver {
    private float temperature;
    private float humidity;


    public void update(float temperature, float humidity) {
        this.temperature = temperature;
        this.humidity = humidity;
        System.out.println("Statistics: " + temperature + "F degrees and " + humidity + "% humidity");
    }

}
