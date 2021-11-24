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
public class MemberUpdateController {
	@Autowired
	private MemberService mService;
	
	@GetMapping(path = "/MemberUpdatePage.controller")
    public String memberUpdatePage(Model m) {
		List<Member> memberAll = mService.findAll();
		m.addAttribute("memberAll",memberAll);
    	return "MemberUpdatePage";
    }
	@PostMapping(path = "/MemberUpdateAction.controller")
	public String updateAction(@RequestParam("id")int id,Model m, HttpSession session) {
		Member updateID = mService.findById(id);
		if(updateID==null) {
			return "MemberUpdatePage";
		}
		session.setAttribute("updateID", updateID);
		return "MemberUpdateAction";
	}
	@PostMapping(path = "/MemberUpdateSuccess.controller")
	public String updateAction2(
			@RequestParam("upid")int upid,
			@RequestParam("mail") String mail, 
			@RequestParam("password") String password,
			@RequestParam("phone") String phone,
			@RequestParam("name") String name,
			@RequestParam("numberID") String numberID,
			@RequestParam("birthday") String birthday,
			@RequestParam("address") String address,
			@RequestParam("gender") String gender,
			Model m, HttpSession session) {
		
		Member mb = new Member(upid,mail,password,phone,name,numberID,birthday,address,gender);
		Member newmeb = mService.update(mb);
		m.addAttribute("updateSuccess",mb);
		
		List<Member> upacc = mService.findAll();
		session.setAttribute("upacc", upacc);
		return "MemberUpdateSuccess";
	}
}
