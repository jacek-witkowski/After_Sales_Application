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
    public String getOwner(@RequestParam String name, Model model) {
        if (ownerRepository.findAllByNameContainingIgnoreCase(name).isPresent()) {
            model.addAttribute("owners", ownerRepository.findAllByNameContainingIgnoreCase(name).get());
        } else return "/owner/none";
        model.addAttribute("pageTitle", "<h4>Znalezieni klienci</h4>");
        return "/owner/list";
    }

    @GetMapping("/edit")
    public String editOwner(@RequestParam Integer clientId, Model model) {
        if (ownerRepository.findFirstById(clientId).isPresent()) {
            model.addAttribute("owner", ownerRepository.getOne(clientId));
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
    public String searchOwner(@RequestParam String name, @RequestParam String kindOfClients, Model model) {

        switch (kindOfClients) {
            case "activeOnly":
                if (ownerRepository.findAllByNameContainingIgnoreCaseAndActiveIsTrue("name").isPresent()) {
                    model.addAttribute("owners", ownerRepository.findAllByNameContainingIgnoreCaseAndActiveIsTrue("name").get());
                }
                break;

            case "notActiveOnly":
                if (ownerRepository.findAllByNameContainingIgnoreCaseAndActiveIsTrue("name").isPresent()) {
                    model.addAttribute("owners", ownerRepository.findAllByNameContainingIgnoreCaseAndActiveIsFalse("name"));
                }
                break;

            case "all":
                if (ownerRepository.findAllByNameContainingIgnoreCaseAndActiveIsTrue("name").isPresent()) {
                    model.addAttribute("owners", ownerRepository.findAllByNameContainingIgnoreCase("name"));
                }
                break;
            default:
                return "/owner/none";
        }
        return "/owner/list";
    }

}
