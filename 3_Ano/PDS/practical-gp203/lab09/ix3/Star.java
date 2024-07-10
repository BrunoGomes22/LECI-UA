import startypes.StarType;

public class Star {
    private StarType starType;
    private int x;
    private int y;

    public Star(StarType starType, int x, int y) {
        this.starType = starType;
        this.x = x;
        this.y = y;
    }

    public StarType getStarType() {
        return starType;
    }

    public int getX(){
        return x;
    }

    public int getY(){
        return y;
    }

}