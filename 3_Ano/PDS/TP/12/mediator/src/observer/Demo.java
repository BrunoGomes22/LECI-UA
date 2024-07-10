public class Demo {
	public static void main(String[] args) {
		WeatherData weatherData = new WeatherData();

		CurrentConditionsDisplay currentDisplay = new CurrentConditionsDisplay();
		StatisticsDisplay statisticsDisplay = new StatisticsDisplay();

		weatherData.registerObserver(currentDisplay);
		weatherData.registerObserver(statisticsDisplay);

		weatherData.setMeasurements(22, 22);
		weatherData.setMeasurements(10, 10);
		weatherData.setMeasurements(56, 94);
		weatherData.setMeasurements(33, 80);
		weatherData.setMeasurements(25, 75);
	}
}
