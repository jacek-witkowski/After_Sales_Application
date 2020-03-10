package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.time.LocalDate;
import java.time.LocalTime;

@Controller
public class TestController {

    @RequestMapping("/")
    @ResponseBody
    public String home() {
        return "hello world !!!";
    }

    @GetMapping("/about")
    @ResponseBody
    public String about() {
        return "Here you can find some details for logged users";
    }

    @GetMapping("/show/{tekst}")
    @ResponseBody
    public String tekst(@PathVariable String tekst) {

        return tekst.toUpperCase() + "\n" + "\n  Teraz jest " +
                LocalDate.now() + ", " +
                LocalTime.now().getHour() + ":" +
                LocalTime.now().getMinute() + ":" +
                LocalTime.now().getSecond();
    }
}
