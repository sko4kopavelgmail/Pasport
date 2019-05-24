package app.Controller;

import app.Entity.Passport;
import app.Service.PassportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class MainController {

    @Autowired
    private PassportService passportService;

    @GetMapping("/")
    public String loadMainPage() {
        return "main";
    }

    @GetMapping("/passportBrowse")
    public String loadBrowsePage(Model model) {
        model.addAttribute("passports",passportService.getAll());
        return "browse";
    }

    @GetMapping("/passportEdit/{passport}")
    public String loadEditPage(
            @PathVariable Passport passport

    ) {
        return "edit";
    }

    @PostMapping("/passportEdit")
    public String getEditPage(){

        return "redirect:/passportBrowse";
    }

    @GetMapping("/createPassport")
    public String loadCreatePage(){
        return "create";
    }

    @PostMapping("/createPassport")
    public String getCreatePage(@RequestParam Map<String,String> form){
        passportService.createPassport(form);
        return "redirect:/passportBrowse";
    }


}
