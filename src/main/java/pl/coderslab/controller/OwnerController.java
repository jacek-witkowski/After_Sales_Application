package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.Owner;
import pl.coderslab.repository.OwnerRepository;

import javax.validation.Valid;

@Controller
@RequestMapping("/owner")
public class OwnerController {

    private final OwnerRepository ownerRepository;

    public OwnerController(OwnerRepository ownerRepository) {
        this.ownerRepository = ownerRepository;
    }


    @GetMapping("/add")
    public String form(Model model) {
        model.addAttribute("owner", new Owner());
        model.addAttribute("pageTitle", "<h4>Dodawanie nowego klienta</h4>");
        return "/owner/form";
    }

    @PostMapping("/add")
    public String saveForm(@ModelAttribute("owner") @Valid Owner owner, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "/owner/form";
        } else {
            ownerRepository.save(owner);
            model.addAttribute("pageTitle", "<h4>Potwierdź prawidłowość wprowadzonych danych</h4>");
            return "/owner/singleowner";
        }
    }

    @GetMapping("/all")
    public String showAll(Model model) {
        model.addAttribute("owners", ownerRepository.findAll());
        model.addAttribute("pageTitle", "<h4>Lista klientów</h4>");
        return "/owner/list";
    }


    @GetMapping("/get")
    public String getOwner(@RequestParam int ownerId, Model model) {
        if (ownerRepository.findFirstById(ownerId).isPresent()) {

            model.addAttribute("owner", ownerRepository.findFirstById(ownerId).get());
            model.addAttribute("pageTitle", "<h4>Dane klienta</h4>");
        } else return "/owner/none";

        return "/owner/singleowner";
    }

    @GetMapping("/edit")
    public String editOwner(@RequestParam Integer ownerId, Model model) {
        if (ownerRepository.findFirstById(ownerId).isPresent()) {
            model.addAttribute("owner", ownerRepository.findFirstById(ownerId).get());
        } else return "/owner/none";
        model.addAttribute("pageTitle", "Edycja danych klienta");
        return "/owner/form";
    }

    @PostMapping("/edit")
    public String updateOwner(@ModelAttribute("owner") @Valid Owner owner, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "/owner/form";
        } else {
            ownerRepository.save(owner);
            model.addAttribute("pageTitle", "<h4>Aktualne dane klienta</h4>");
        }
        return "/owner/singleowner";
    }

    @GetMapping("/search")
    public String searchOwner(@RequestParam String string, @RequestParam String ownerKind, Model model) {

        switch (ownerKind) {
            case "activeOnly":
                if (ownerRepository.findAllByNameContainingIgnoreCaseAndActiveIsTrue(string).isPresent()) {
                    model.addAttribute("owners", ownerRepository.findAllByNameContainingIgnoreCaseAndActiveIsTrue(string).get());
                    break;
                }

            case "notActiveOnly":
                if (ownerRepository.findAllByNameContainingIgnoreCaseAndActiveIsFalse(string).isPresent()) {
                    model.addAttribute("owners", ownerRepository.findAllByNameContainingIgnoreCaseAndActiveIsFalse(string));
                    break;
                }


            case "all":
                if (ownerRepository.findAllByNameContainingIgnoreCase(string).isPresent()) {
                    model.addAttribute("owners", ownerRepository.findAllByNameContainingIgnoreCase(string));
                    break;
                }

            default:
                return "/owner/none";
        }
        return "/owner/list";
    }

}
