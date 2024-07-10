package State;

public class OffState implements FanState{
    @Override
    public void pull(CeilingFan fan){
        fan.setState(new LowState());
    }

    public String toString(){
        return "Off";
    }
}
