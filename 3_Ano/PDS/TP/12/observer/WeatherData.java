package observer;

import java.util.ArrayList;

public class WeatherData {
    private float temperature;
    private float humidity;
    private ArrayList<Subscriver> subscriver = new ArrayList<Subscriver>();

    public void addObserver(Subscriver s) {
        subscriver.add(s);
    }

    public void setMeasurements(float temperature, float humidity) {
        this.temperature = temperature;
        this.humidity = humidity;
        notifyObserver();
    }

    public void notifyObserver() {
        for (Subscriver s : subscriver) {
            s.update(temperature, humidity);
        }
    }
}
