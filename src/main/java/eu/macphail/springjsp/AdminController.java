package eu.macphail.springjsp;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;

@Slf4j
@Controller
public class AdminController {

    @RequestMapping(value = "admin", method = RequestMethod.GET)
    public String getAdminPage(Principal principal, Model model) {
        model.addAttribute("user", principal.getName());

        return "admin";
    }
}
