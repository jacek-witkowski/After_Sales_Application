package pl.coderslab.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

public class LoginController {
    @GetMapping("/login")
    @ResponseBody
    public String login() {
        return "admin/login";
    }
}
