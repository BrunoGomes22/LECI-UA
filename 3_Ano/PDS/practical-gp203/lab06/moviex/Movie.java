package lab06.moviex;

public class Movie {
    private String title;
    private int year;
    private Builder builder;

    Movie(Builder builder) {
        this.title = builder.getTitle();
        this.year = builder.getYear();
        this.builder = builder;
    }

    public String getTitle() {
        return title;
    }

    public int getYear() {
        return year;
    }

    public Person getDirector() {
        return builder.getDirector();
    }
}