package pl.coderslab.entity;

public class Genre {
    private Integer genre;

    public Genre(Integer genre) {
        this.genre = genre;
    }

    public Genre() {
    }

    public Integer getGenre() {
        return genre;
    }

    public void setGenre(Integer genre) {
        this.genre = genre;
    }
}
