/**
 * @author [104341 Diogo Silva] [103320 Bruno Gomes]
 * @version 1.0
 */

package v2;

public class FruitJuice extends Food {
    private String juiceType;

    public FruitJuice(String juiceType) {
        super(Temperature.COLD, State.Liquid);
        this.juiceType = juiceType;
    }

    public String getJuiceType() {
        return juiceType;
    }

    @Override
    public String toString() {
        return String.format("%s: %s, Temperature %s, State %s", this.getClass().getSimpleName(), getJuiceType(), getTemperature().name(), getState().name());
    }
}
