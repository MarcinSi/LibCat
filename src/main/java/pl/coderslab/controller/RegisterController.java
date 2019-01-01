package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import pl.coderslab.entity.User;
import pl.coderslab.repositories.UserRepository;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
public class RegisterController {

    private UserRepository userRepository;

    @Autowired
    public RegisterController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping("/register")
    public String register(@ModelAttribute User user) {
        return "register";
    }

    @PostMapping("/register")
    public String register(@Valid User user, BindingResult result, @RequestParam String repassword,  Model model, HttpSession session) {
        if (!user.getPassword().equals(repassword) || result.hasErrors()) {
            model.addAttribute("wrong", "złe hasło");
            return "register";
        }

        userRepository.save(user);
        session.setAttribute("user", user);
        return "redirect:user";
    }

}
