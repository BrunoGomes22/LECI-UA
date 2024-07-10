package State;

public class MediumState implements FanState {
    @Override
    public void pull(CeilingFan fan) {
        fan.setState(new HighState());
    }

    public String toString() {
        return "Medium";
    }
}