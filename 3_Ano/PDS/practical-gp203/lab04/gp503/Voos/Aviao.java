package Voos;

public class Aviao {

    private int[][] rich;
    private int[][] poor;

    public Aviao(int[][] rich, int[][] poor) {
        this.rich = rich;
        this.poor = poor;
    }

    //getters && setters=============================

    public int[][] getRich() {
        return rich;
    }

    public void setRich(int[][] rich) {
        this.rich = rich;
    }

    public int[][] getPoor() {
        return poor;
    }

    public void setPoor(int[][] poor) {
        this.poor = poor;
    }

    //================================================

    //Return occupied seats ==========================

    public int poorFull() {

        int counter = 0;

        for (int[] i : poor) {
            for (int j = 0; j < poor[0].length; j++) {
                if (i[j] != '\0') {
                    counter++;
                }
            }
        }

        return counter;
    }

    public int richFull() {

        int counter = 0;

        for (int[] i : rich) {
            for (int j = 0; j < rich[0].length; j++) {
                if (i[j] != '\0') {
                    counter++;
                }
            }
        }

        return counter;
    }

    //================================================

    //Return max seats for each class ================

    public int poorMax() {
        return poor.length == 0 ? 0 : poor.length * poor[0].length;
    }

    public int richMax() {
        return rich.length == 0 ? 0 : rich.length * rich[0].length;
    }

    //================================================

}
