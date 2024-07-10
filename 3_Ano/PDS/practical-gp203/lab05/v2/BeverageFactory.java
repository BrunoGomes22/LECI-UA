/**
 * @author [104341 Diogo Silva] [103320 Bruno Gomes]
 * @version 1.0
 */
package v2;

public class BeverageFactory {
    public static Portion create(Temperature tempType){
        if(tempType == Temperature.WARM){
            return new Milk();
        }else{
            return new FruitJuice("Orange");
        }
    }
}
