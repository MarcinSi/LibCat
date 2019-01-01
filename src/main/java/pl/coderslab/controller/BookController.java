package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.Book;
import pl.coderslab.repositories.BookRepository;
import javax.validation.Valid;
import java.util.Arrays;
import java.util.List;

@Controller
public class BookController {

    @Autowired
    BookRepository bookRepository;

    @ModelAttribute("books")
    public List<Book> getBooks() {
        return bookRepository.findAll();
    }

    @GetMapping("/addBook")
    public String addBook(Model model) {
        model.addAttribute("book", new Book());
        return "addBook";
    }

    @PostMapping("/addBook")
    public String addBook(@Valid @ModelAttribute Book book, BindingResult result) {
        if (result.hasErrors()) {
            return "addBook";
        }
        bookRepository.save(book);
        return "redirect:/";
    }

    @GetMapping("/userBooks")
    public String listUserBooks() {
        return "userBooks";
    }

    @GetMapping("/allBooks")
    public String listAllBooks() {
        return "allBooks";
    }

    @GetMapping("/findBook")
    public String findBook() {
        return "findBook";
    }

    @GetMapping("/delete/{id}")
    public String deleteBook(@PathVariable long id) {
        bookRepository.delete(id);
        return "redirect:/userBooks";
    }

    @GetMapping("/edit/{id}")
    public String editBook(Model model, @PathVariable long id) {
        model.addAttribute("book", bookRepository.findOne(id));
        return "addBook";
    }

    @PostMapping("/edit/**")
    public String editUser(@Valid @ModelAttribute Book book, BindingResult result) {
        if (result.hasErrors()) {
            return "addBook";
        }
        bookRepository.save(book);

        return "redirect:/userBooks";
    }

    @GetMapping("/findbook")
    public String listAllFoundedBooks() {
        return "findBook";
    }

    @PostMapping("/findbookbyauthor")
    public String findBookByAuthorPost(@RequestParam String authorName, Model m) {
        final List<Book> allByAuthor = this.bookRepository.findAllByAuthor(authorName);
        m.addAttribute("searchQuery", "Wszystkie książki napisane przez "+ authorName);
        m.addAttribute("foundBooks", allByAuthor);
        return "findBook";
    }

    @PostMapping("/findbookbytitle")
    public String findBookByTitlePost(@RequestParam String title, Model m) {
        final List<Book> allByTitle = this.bookRepository.findAllByTitle(title);
        m.addAttribute("searchQuery", "Wszystkie książki o tytule "+ title);
        m.addAttribute("foundBooks", allByTitle);
        return "findBook";
    }

    @PostMapping("/findbookbygenre")
    public String findBookBygenrePost(@RequestParam String genre, Model m) {
        final List<Book> allBygenre = this.bookRepository.findAllByGenre(genre);
        m.addAttribute("searchQuery", "Wszystkie książki z gatunku "+ genre);
        m.addAttribute("foundBooks", allBygenre );
        return "findBook";
    }

    @ModelAttribute("genre")
    public List<String> genre() {
        String genre[] = new String[] {"horror", "adult", "sci-fi", "travel", "romance", "children", "science"};
        return Arrays.asList(genre);
    }
}
