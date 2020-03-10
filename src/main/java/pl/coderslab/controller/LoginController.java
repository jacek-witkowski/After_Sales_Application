package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.User;
import pl.coderslab.repository.UserRepository;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
public class LoginController {

    private final UserRepository userRepository;


    public LoginController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }


    @GetMapping("/login")
    public String loginForm(Model model) {
        User userToLog = new User();
        userToLog.setId(0);
        model.addAttribute("user", userToLog);
        System.out.println("przekazanie do widoku login/login");
        return "login/login";
    }

    @PostMapping("/logging")
    @ResponseBody
    public String loginCheck(@ModelAttribute User userToLog)/*(@RequestParam String login, @RequestParam String password)*/ {
       /* User userToLog = new User();
        userToLog.setLogin(login);
        userToLog.setPassword(password);*/

        //poniżej trzeba wyciągnąć z modelu właściwe parametry.
        System.out.println("Otrzymano żądanie metodą POST do akcji logging");
        return "Użytkownik: " + userToLog.getLogin() + "<br/>ma hasło: " + userToLog.getPassword();

//        return "/owner/list";

     /*   if (userRepository.findFirstByLogin(login).isPresent()) {
            //User userInDb = userRepository.findFirstByLogin(userToLog.getLogin()).get();
            User registeredUser = userRepository.findFirstByLogin(login).get();
            if (userToLog.getPassword().equals(registeredUser.getPassword())) {
                System.out.println("nie wykryto błędów - przekierowanie do /owner/list");
//                return "redirect:/owner/list";
                return "/owner/list";
            }

        }
        return "/login/unsuccessful";*/
    }


    @GetMapping("/adduser/{id}/{login}/{password}")
    @ResponseBody
    public String addUser(@PathVariable Integer id,
                          @PathVariable String login,
                          @PathVariable String password) {
        User newUser = new User();
        newUser.setId(id);
        newUser.setLogin(login);
        newUser.setPassword(password);
        userRepository.save(newUser);
        User retrievedUser = userRepository.findFirstById(id).get();
        return "dodano użytkownika " + retrievedUser.getLogin() + ", hasło: " + retrievedUser.getPassword();
    }

}
