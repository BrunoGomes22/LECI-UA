/**
 * @author [104341 Diogo Silva] [103320 Bruno Gomes]
 * @version 1.0
 */

package v2;

public abstract class Food implements Portion {
    protected Temperature temperature;
    protected State state;

    public Food(Temperature temperature, State state) {
        this.temperature = temperature;
        this.state = state;
    }

    @Override
    public Temperature getTemperature() {
        return temperature;
    }

    @Override
    public State getState() {
        return state;
    }

    @Override
    public String toString() {
        return String.format("%s: Temperature %s, State %s", this.getClass().getSimpleName(), getTemperature().name(), getState().name());
    }
}