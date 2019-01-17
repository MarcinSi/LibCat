package pl.coderslab.entity;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "users")
public class User {
    public User() {
    }

    public User(String firstName, String lastName, String email, String phone, String city, String password, List<Book> books) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.phone = phone;
        this.city = city;
        this.password = password;
        this.books = books;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(columnDefinition = "TEXT")
    @NotBlank
    private String firstName;

    @Column(columnDefinition = "TEXT")
    private String lastName;

    @Column
    @NotBlank
    @Email
    private String email;

    @Column
    @NotBlank
    private String phone;

    @Column
    @NotBlank
    private String city;
    
    @NotBlank
    @Column(columnDefinition = "TEXT")
    private String password;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getName() {
        return firstName + " " + lastName;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public String getPassword() {
        return password;
    }

    public String getCity() {
        return city;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<Book> getBooks() {
        return books;
    }

    public void setBooks(List<Book> books) {
        this.books = books;
    }

    @ManyToMany
    private List<Book> books;
}
