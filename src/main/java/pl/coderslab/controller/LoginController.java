package pl.coderslab.controller;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.User;
import pl.coderslab.repository.UserRepository;

import javax.validation.Valid;

@Controller
public class LoginController {

    private final UserRepository userRepository;


    public LoginController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @RequestMapping(value = "/log-in", method = RequestMethod.GET)
    public String loginForm(Model model) {

        model.addAttribute("user", new User());
        System.out.println("przekazanie do widoku login/login");
        return "login/login";
    }

    @RequestMapping(value = "/log-in", method = RequestMethod.POST)
    public String loginCheck(@ModelAttribute("user") @Valid User userToLog, BindingResult result, Model model)/*(@RequestParam String login, @RequestParam String password)*/ {
        if (!result.hasErrors()) {

            String login = userToLog.getLogin();
            String password = userToLog.getPassword();

            if (userRepository.findFirstByLogin(login).isPresent()) {
                User userInDb = userRepository.findFirstByLogin(login).get();
                if (BCrypt.checkpw(password, userInDb.getHashedPwd())) {
                    return "redirect:owner/all";
                } else {
                    model.addAttribute("message", "Błędne hasło.");
                    return "login/unsuccessful";
                }
            }
            model.addAttribute("message", "Nie ma takiego użytkownika.");
            return "login/unsuccessful";
        }
        return "login/login";
    }

    @GetMapping("/adduser/{login}/{password}")
    @ResponseBody
    public String addUser(@PathVariable String login,
                          @PathVariable String password) {
        User newUser = new User();
        newUser.setLogin(login);
        newUser.setPassword(password);
        userRepository.save(newUser);
        if (userRepository.findFirstByLogin(login).isPresent()) {
            User retrievedUser = userRepository.findFirstByLogin(login).get();
        } else return "błąd w zapisie do bazy danych";

        return "pomyślnie utworzono użytkownika: " + login
                + ", hasło: " + password;
    }
}
