package lab06.moviex;

public class Director {
    private Builder builder;

    public Director(Builder builder) {
        this.builder = builder;
    }

    public Movie construct(String title, int year) {
        return builder.withTitle(title)
                      .withYear(year)
                      .build();
    }

    public Movie construct(String title, int year, Person director) {
        return builder.withTitle(title)
                      .withYear(year)
                      .withDirector(director)
                      .build();
    }
    // Podemos criar mais tipos de contrutores para outros tipos de filmes
}