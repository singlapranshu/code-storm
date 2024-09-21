package codestorm.dmifinance.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

// import ch.qos.logback.core.model.Model;
// import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
// import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.RequestMapping;
// import org.springframework.web.bind.annotation.RequestMethod;
// import org.springframework.web.bind.annotation.RequestParam;
// import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class MainController {
    @RequestMapping("home")
    public String home() {
        return "home.jsp";
    }
    @PostMapping("/submit")
    public String postMethodName(@RequestParam("name") String bankName, Model model) {
        //TODO: process POST request
        model.addAttribute("bankName", bankName);
        return "signin.jsp";
    }
    
    @PostMapping("/addnewbank")
    public String addNew() {
        // model.addAttribute("bankName", bankName);
        return "addNewBank.jsp";
    }
    
}
