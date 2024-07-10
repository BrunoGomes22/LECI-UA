package observer;

public class Main {
    public static void main(String[] args) {
        WeatherData weatherData = new WeatherData();
        CurrentConditionsDisplay currentDisplay = new CurrentConditionsDisplay();
        StatisticsDisplay statisticsDisplay = new StatisticsDisplay();

        weatherData.addObserver(currentDisplay);
        weatherData.addObserver(statisticsDisplay);
        
        weatherData.setMeasurements(28, 65);
        weatherData.setMeasurements(22, 70);
        weatherData.setMeasurements(26, 90); }
}
