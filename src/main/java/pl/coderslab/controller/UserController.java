package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.Book;
import pl.coderslab.entity.User;
import pl.coderslab.repositories.UserRepository;

import javax.validation.Valid;
import java.util.List;

@Controller

public class UserController {

    @Autowired
    UserRepository userRepository;

    @ModelAttribute("users")
    public List<User> getUsers() {
        return userRepository.findAll();
    }

//    public String addUser(Model model) {
//        model.addAttribute("user", new User());
//        return "addUser";
//    }

    @GetMapping("/user")
    public String user(Model model) {
        model.addAttribute("user", new User());
        return "user";
    }

    @GetMapping("/addUser")
    public String addUser(Model model) {
        model.addAttribute("user", new User());
        return "allUsers";
    }

    @PostMapping("/addUser")
    public String addUser(@Valid @ModelAttribute User user, BindingResult result) {
        if (result.hasErrors()) {
            return "addUser";
        }
        userRepository.save(user);
        return "redirect:/";
    }

    @GetMapping("/allUsers")
    public String listAllUsers() {
        return "allUsers";
    }

    @GetMapping("/deleteUser/{id}")
    public String deleteUser(@PathVariable long id) {
        userRepository.delete(id);
        return "redirect:/user/all";
    }

    @GetMapping("/editUser/{id}")
    public String editUser(Model model, @PathVariable long id) {
        model.addAttribute("user", userRepository.findOne(id));
        return "addUser";
    }

    @PostMapping("/editUser/**")
    public String editUser(@Valid @ModelAttribute User user, BindingResult result) {
        if (result.hasErrors()) {
            return "addUser";
        }
        userRepository.save(user);

        return "redirect:/all";
    }

}