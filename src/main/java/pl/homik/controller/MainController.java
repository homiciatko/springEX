package pl.homik;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

/**
 * Created by Pawel on 2017-04-17.
 */

@Controller
public class MainController {

    @RequestMapping("/main")
    public String gerMainPage() {

        return "main";
    }

    @ResponseBody
    @RequestMapping("/rr")
    String home() {
        return "Hello world!";
    }

    @Value("${welcome.message:test}")
    private String message = "Hello World";

    @RequestMapping("/")
    public String welcome(Map<String, Object> model) {
        model.put("message", this.message);
        return "welcome";
    }


}
