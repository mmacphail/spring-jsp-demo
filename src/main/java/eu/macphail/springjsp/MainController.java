package eu.macphail.springjsp;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
public class MainController {

    private List<Skill> getSkills() {
        return Arrays.asList(
                new Skill("Javascript", 90),
                new Skill("Vue.js", 90),
                new Skill("Node.js", 75),
                new Skill("HTML5/CSS3", 95),
                new Skill("Databases", 66)
        );
    }

    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public ModelAndView index(Model model) {
        log.info("Model contains: ");
        model.asMap().forEach((key, value) -> log.info(key + " -> " + value));

        if(model.containsAttribute("org.springframework.validation.BindingResult.contact")) {
            ContactMessage contact = (ContactMessage) model.getAttribute("contact");
            return new ModelAndView("index", buildModel(contact, "Error in form")
            );
        } else {
            return new ModelAndView("index", buildModel());
        }

    }

    @RequestMapping(value = "/sendContactMessage", method = RequestMethod.POST)
    public String sendContactMessage(@Valid @ModelAttribute("contact") ContactMessage message,
                                           BindingResult result,
                                           RedirectAttributes attr) {

        if(result.hasErrors()) {
            attr.addFlashAttribute("org.springframework.validation.BindingResult.contact", result);
            attr.addFlashAttribute("contact", message);
            return "redirect:/";
        }

        log.info("Receiving contact message from " + message.getName() + " at " + message.getEmail());
        log.info("Message is " + message.getMessage());
        return "redirect:/";
    }

    private Map<String, Object> buildModel() {
        return buildModel(new ContactMessage(), null);
    }

    private Map<String, Object> buildModel(ContactMessage message, String error) {
        Map<String, Object> model = new HashMap<>();
        model.put("skills", getSkills());
        model.put("contact", new ContactMessage());

        if(error != null) {
            model.put("errorMessage", error);
        }
        return model;
    }
}
