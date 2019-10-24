package eu.macphail.springjsp;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
    public ModelAndView index() {
        Map<String, Object> model = new HashMap<>();
        model.put("skills", getSkills());
        model.put("contact", new ContactMessage());

        return new ModelAndView("index", model);
    }

    @RequestMapping(value = "/sendContactMessage", method = RequestMethod.POST)
    public ModelAndView sendContactMessage(@Valid @ModelAttribute("contact") ContactMessage message) {
        log.info("Receiving contact message from " + message.getName() + " at " + message.getEmail());
        log.info("Message is " + message.getMessage());
        return index();
    }
}
