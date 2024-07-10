/**
 * @author [104341 Diogo Silva] [103320 Bruno Gomes]
 * @version 1.0
 */

package v2;

public class Container {
    private Portion portion;
    public static Container create(Portion portion){
        Container container;
        if(portion.getState() == State.Liquid){
            if(portion.getTemperature() == Temperature.COLD){
                container = new PlasticBottle();
                container.setPortion(portion);
                return container;
            }else{
                container = new TermicBottle();
                container.setPortion(portion);
                return container;
            }
        }else{
            if(portion.getTemperature() == Temperature.COLD){
                container = new PlasticBag();
                container.setPortion(portion);
                return container;
            }else{
                container = new Tupperware();
                container.setPortion(portion);
                return container;
            }
        }
    }


    public void setPortion(Portion p){
        this.portion = p;
    }

    public String toString(){
        return  String.format("%s with portion = %s", this.getClass().getSimpleName(), portion);
    }
}
