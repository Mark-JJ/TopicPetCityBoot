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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.JJ.model.Member;
import tw.JJ.model.MemberService;



@Controller
@RequestMapping(path = "/manager")
public class MemberIndexController {
	@Autowired
	private MemberService mService;
	
	@GetMapping(path = "/MemberIndex.controller")
	public String memberIndex() {
		return "MemberIndex";
	}
	

	

}
