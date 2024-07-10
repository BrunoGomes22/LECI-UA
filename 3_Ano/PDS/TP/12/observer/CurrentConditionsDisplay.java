package observer;

public class CurrentConditionsDisplay implements Subscriver {
    private float temperature;
    private float humidity;

    public void update(float temperature, float humidity) {
        this.temperature = temperature;
        this.humidity = humidity;
        System.out.println("Current conditions: " + temperature + "F degrees and " + humidity + "% humidity");
    }

}
