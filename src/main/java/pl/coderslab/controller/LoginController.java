package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.entity.User;
import pl.coderslab.repositories.UserRepository;

import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    private UserRepository userRepository;

    @Autowired
    public LoginController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/login")
    public String auth(@RequestParam String email, @RequestParam String password, HttpSession session) {
        User user = userRepository.findByEmailIgnoreCaseAndPassword(email, password);
        if (user == null) {
            return "/login";
        }
        session.setAttribute("user", user);
        return "redirect:user";
    }

    @GetMapping("/signout")
    public String signOut(HttpSession session) {
        session.removeAttribute("user");
        return "redirect:/";
    }
}
