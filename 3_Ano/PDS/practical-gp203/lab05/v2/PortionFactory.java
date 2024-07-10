/**
 * @author [104341 Diogo Silva] [103320 Bruno Gomes]
 * @version 1.0
 */

package v2;

public class PortionFactory {
    public static Portion create(String mealType, Temperature tempType){
        if(mealType.equals("Beverage")){
            return BeverageFactory.create(tempType);
        }else{
            return MeatFactory.create(tempType);
        }
    }
}
