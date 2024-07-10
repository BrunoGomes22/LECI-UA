package lab06.moviex;
import java.util.List;

public class MovieBuilder implements Builder {
    private String title;
    private int year;
    private Person director;
    private Person writer;
    private String series;
    private List<Person> cast;
    private List<Place> locations;
    private List<String> languages;
    private List<String> genres;
    private boolean isTelevision;
    private boolean isNetflix;
    private boolean isIndependent;

    @Override
    public MovieBuilder withTitle(String title) {
        this.title = title;
        return this;
    }

    @Override
    public MovieBuilder withYear(int year) {
        this.year = year;
        return this;
    }

    @Override
    public MovieBuilder withDirector(Person director) {
        this.director = director;
        return this;
    }

    @Override
    public MovieBuilder withWriter(Person writer) {
        this.writer = writer;
        return this;
    }

    @Override
    public MovieBuilder withSeries(String series) {
        this.series = series;
        return this;
    }

    @Override
    public MovieBuilder withCast(List<Person> cast) {
        this.cast = cast;
        return this;
    }

    @Override
    public MovieBuilder withLocations(List<Place> locations) {
        this.locations = locations;
        return this;
    }

    @Override
    public MovieBuilder withLanguages(List<String> languages) {
        this.languages = languages;
        return this;
    }

    @Override
    public MovieBuilder withGenres(List<String> genres) {
        this.genres = genres;
        return this;
    }

    @Override
    public MovieBuilder isTelevision(boolean isTelevision) {
        this.isTelevision = isTelevision;
        return this;
    }

    @Override
    public MovieBuilder isNetflix(boolean isNetflix) {
        this.isNetflix = isNetflix;
        return this;
    }

    @Override
    public MovieBuilder isIndependent(boolean isIndependent) {
        this.isIndependent = isIndependent;
        return this;
    }

    @Override
    public String getTitle() {
        return title;
    }

    @Override
    public int getYear() {
        return year;
    }

    @Override
    public Person getDirector() {
        return director;
    }

    @Override
    public Person getWriter() {
        return writer;
    }

    @Override
    public String getSeries() {
        return series;
    }

    @Override
    public List<Person> getCast() {
        return cast;
    }

    @Override
    public List<Place> getLocations() {
        return locations;
    }

    @Override
    public List<String> getLanguages() {
        return languages;
    }

    @Override
    public List<String> getGenres() {
        return genres;
    }

    @Override
    public boolean isTelevision() {
        return isTelevision;
    }

    @Override
    public boolean isNetflix() {
        return isNetflix;
    }

    @Override
    public boolean isIndependent() {
        return isIndependent;
    }

    @Override
    public Movie build() {
        return new Movie(this);
    }
}