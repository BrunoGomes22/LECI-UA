package State;

public class HighState implements FanState {
    @Override
    public void pull(CeilingFan fan) {
        fan.setState(new OffState());
    }

    public String toString() {
        return "High";
    }
}