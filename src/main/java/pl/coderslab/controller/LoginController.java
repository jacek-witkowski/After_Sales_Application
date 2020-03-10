package pl.coderslab.controller;

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
            System.out.println("otrzymano żądanie zalogowania użytkownika " + login + " z hasłem " + password);

            if (userRepository.findFirstByLogin(login).isPresent()) {
                User userInDb = userRepository.findFirstByLogin(login).get();

                if (password.equals(userInDb.getPassword())) {
                    System.out.println("Znaleziono użytkownika " + login + " i hasło " + password + ". Przekierowanie do /owner/list");
                    return "redirect:owner/all";
                } else {
                    model.addAttribute("message", "Błędne hasło.");
                    return "login/unsuccessful";
                }


            }
            System.out.println("Nie znaleziono użytkownika " + login);
            model.addAttribute("message", "Nie ma takiego użytkownika.");
            return "login/unsuccessful";
        }
        return "login/login";
    }

    @GetMapping("/adduser/{id}/{login}/{password}")
    @ResponseBody
    public String addUser(@PathVariable Integer id,
                          @PathVariable String login,
                          @PathVariable String password) {
        User newUser = new User();
        //newUser.setId(id);
        newUser.setLogin(login);
        newUser.setPassword(password);
        userRepository.save(newUser);
        User retrievedUser = userRepository.findFirstById(id).get();
        return "dodano użytkownika " + retrievedUser.getLogin() + ", hasło: " + retrievedUser.getPassword();
    }


}
