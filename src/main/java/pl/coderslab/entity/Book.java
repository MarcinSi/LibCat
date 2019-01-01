package pl.coderslab.entity;

import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import java.util.List;


@Entity
@Table(name = "books")
public class Book {
    public Book() {
    }

    public Book(String author, String title, List<User> users, String publisher, String year, int pages, int isbn, String genre) {
        this.author = author;
        this.title = title;
        this.publisher = publisher;
        this.year = year;
        this.pages = pages;
        this.isbn = isbn;
        this.genre = genre;
        this.users = users;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(columnDefinition = "TEXT")
    @NotBlank
    private String author;

    @Column(columnDefinition = "TEXT")
    @NotBlank
    private String title;

    @ManyToMany
    @Column(columnDefinition = "TEXT")
    private List<User> users;

    @Column(columnDefinition = "TEXT")
    private String publisher;

    @Column
    private String year;

    @Column
    private int pages;

    @Column
    private int isbn;

    @Column(columnDefinition = "TEXT")
    private String genre;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public int getPages() {
        return pages;
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

    public int getIsbn() {
        return isbn;
    }

    public void setIsbn(int isbn) {
        this.isbn = isbn;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }



}

