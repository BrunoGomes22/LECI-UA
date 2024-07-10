import java.util.ArrayList;
import java.util.List;

public class WeatherData {
	
	private float humidity;
	private float temperature;

	private List<Observer> observers;

	public WeatherData() {
		observers = new ArrayList<>();
	}

	public void registerObserver(Observer observer) {
		observers.add(observer);
	}

	public void removeObserver(Observer observer) {
		observers.remove(observer);
	}

	public void notifyObservers() {
		for (Observer observer : observers) {
			observer.update(temperature, humidity);
		}
	}

	public void setMeasurements(float temperature, float humidity) {
		this.temperature = temperature;
		this.humidity = humidity;
		
		notifyObservers();
	}
}
