public class StatisticsDisplay implements Observer {
	
	private float temperature;
	private float humidity;

	public void update(float temperature, float humidity) {
		this.temperature = temperature;
		this.humidity = humidity;

		display();
	}

	public void display() {
		System.out.println("Statistics: " + temperature + " degrees and " + humidity + "% humidity");
	}

}
