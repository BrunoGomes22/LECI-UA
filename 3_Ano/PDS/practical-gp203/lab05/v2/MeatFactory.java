/**
 * @author [104341 Diogo Silva] [103320 Bruno Gomes]
 * @version 1.0
 */

package v2;

public class MeatFactory {
    public static Portion create(Temperature tempType){
        if(tempType == Temperature.WARM){
            return new Pork();
        }else{
            return new Tuna();
        }
    }
}