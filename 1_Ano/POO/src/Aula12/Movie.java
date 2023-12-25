package Aula12;

public class Movie implements Comparable<Movie>{ //Comparable essencial para metodo compareTo funcionar
    private String name;
    private double score;
    private String rating;
    private String genre;
    private int r_time;

    public Movie(String name, double score, String rating, String genre, int r_time ) {
        this.name = name;
        this.score = score;
        this.rating = rating;
        this.genre = genre;
        this.r_time = r_time;
    }

    public String getName(){
        return name;
    }

    public double getScore(){
        return score;
    }

    public String getGenre(){
        return genre;
    }

    @Override
    public int compareTo(Movie m){
        return this.name.compareToIgnoreCase(m.getName());
    }

    @Override
    public String toString(){
        return String.format("Name: %20s\tScore: %.2f\tRating: %s\tGenre: %s\tRunning Time: %d",this.name, this.score, this.rating, this.genre, this.r_time);
    }
}
