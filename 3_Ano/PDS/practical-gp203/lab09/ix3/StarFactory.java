import java.util.HashMap;
import java.util.Map;

import startypes.AStar;
import startypes.BStar;
import startypes.FStar;
import startypes.GStar;
import startypes.KStar;
import startypes.MStar;
import startypes.OStar;
import startypes.StarType;

public class StarFactory {
    private Map<Character, StarType> stars = new HashMap<>();

    public StarType getStar(char type){
        StarType star = stars.get(type);
        if(star == null){
            switch (type) {
                case 'O': star = new OStar(); break;
                case 'A': star = new AStar(); break;
                case 'B': star = new BStar(); break;
                case 'F': star = new FStar(); break;
                case 'G': star = new GStar(); break;
                case 'K': star = new KStar(); break;
                case 'M': star = new MStar(); break;
            }
            stars.put(type,star);
        }
        return star;
    }
}
