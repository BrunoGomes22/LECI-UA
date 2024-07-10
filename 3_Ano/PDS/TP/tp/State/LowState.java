package State;

public class LowState implements FanState {
    @Override
    public void pull(CeilingFan fan) {
        fan.setState(new MediumState());
    }

    public String toString() {
        return "Low";
    }
}
