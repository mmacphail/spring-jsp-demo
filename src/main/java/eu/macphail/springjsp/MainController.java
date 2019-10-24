package eu.macphail.springjsp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Arrays;
import java.util.List;

@Controller
public class MainController {

    private List<Person> getPersons() {
        return Arrays.asList(
                new Person("Bill", "Gates"),
                new Person("Steeve", "Jobs")
        );
    }

    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String index(Model model) {
        String message = "Hello Spring Boot + JSP";

        model.addAttribute("message", message);

        return "index";
    }

    @RequestMapping(value = {"/personList"}, method = RequestMethod.GET)
    public String viewPersonList(Model model) {
        model.addAttribute("persons", getPersons());

        return "personList";
    }
}
