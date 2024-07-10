package lab06.moviex;
import java.util.List;
public interface Builder {
    Builder withTitle(String title);
    Builder withYear(int year);
    Builder withDirector(Person director);
    Builder withWriter(Person writer);
    Builder withSeries(String series);
    Builder withCast(List<Person> cast);
    Builder withLocations(List<Place> locations);
    Builder withLanguages(List<String> languages);
    Builder withGenres(List<String> genres);
    Builder isTelevision(boolean isTelevision);
    Builder isNetflix(boolean isNetflix);
    Builder isIndependent(boolean isIndependent);
    Movie build();
    String getTitle();
    int getYear();
    Person getDirector();
    Person getWriter();
    String getSeries();
    List<Person> getCast();
    List<Place> getLocations();
    List<String> getLanguages();
    List<String> getGenres();
    boolean isTelevision();
    boolean isNetflix();
    boolean isIndependent();
}

