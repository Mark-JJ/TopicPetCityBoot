package tw.JJ.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("home.controller")
	public String homec() {
		return "Home.jsp";
	}
}
