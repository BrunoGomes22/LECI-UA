package State;

public class CeilingFan {
    private FanState state;

    public CeilingFan() {
        state = new OffState();
    }

    public void setState(FanState state) {
        this.state = state;
    }

    public FanState getState() {
        return state;
    }

    public void pull() {
        state.pull(this);
    }
}