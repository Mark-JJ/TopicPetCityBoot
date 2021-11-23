package tw.JJ.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.JJ.model.Member;
import tw.JJ.model.MemberService;



@Controller
public class MemberDeleteController {
	@Autowired
	private MemberService mService;
	
//	@GetMapping(path = "/MemberDeletePage.controller")
//    public String deleteAction() {
//    	return "MemberDeletePage";
//    }
	
	@PostMapping(path = "/MemberDeleteSuccess.controller")
	public String deleteSuccess(int id ,Model m) {
		mService.deleteById(id);
		m.addAttribute("deleteSuccess",id);
		List<Member> memberAll = mService.findAll();
		m.addAttribute("memberAll",memberAll);
		return "MemberUpdateAndDelete";
	}
	
	

}
