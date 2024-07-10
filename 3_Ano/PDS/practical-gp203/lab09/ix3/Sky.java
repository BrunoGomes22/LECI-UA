import javax.swing.*;

import startypes.StarType;

import java.awt.*;
import java.util.ArrayList;
import java.util.List;

public class Sky extends JFrame {
    private List<Star> stars = new ArrayList<>();

    public void placeStar(StarType star, int x, int y) {
        stars.add(new Star(star,x,y));
    }

    @Override
    public void paint(Graphics graphics) {
        for (Star star : stars) {
            StarType starType = star.getStarType();
            int x = star.getX();
            int y = star.getY();
            starType.draw(graphics, x, y);
        }
    }
}