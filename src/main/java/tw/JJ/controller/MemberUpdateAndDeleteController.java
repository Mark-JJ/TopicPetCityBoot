package tw.JJ.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.JJ.model.Member;
import tw.JJ.model.MemberService;


@Controller
public class MemberUpdateAndDeleteController {
	@Autowired
	private MemberService mService;
	
	@GetMapping(path = "/MemberUpdateAndDelete.controller")
    public String memberUpdatePage(Model m) {
		List<Member> memberAll = mService.findAll();
		m.addAttribute("memberAll",memberAll);
    	return "MemberUpdateAndDelete";
    }
	
}
