package tw.JJ.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.JJ.model.Member;
import tw.JJ.model.MemberService;



@Controller
//@SessionAttributes({"member"})
public class MemberInserController {
	@Autowired
	private MemberService mService;
	@GetMapping(path = "/MemberInserPage.controller")
    public String memberinserPage(HttpSession session) {
    	return "MemberInserPage";
    }
	
	@PostMapping(path = "/MemberInserSuccess.controller")
	public String MemberInserSuccess(
			@RequestParam("mail") String mail, 
			@RequestParam("password") String password,
			@RequestParam("phone") String phone,
			@RequestParam("name") String name,
			@RequestParam("numberID") String numberID,
			@RequestParam("birthday") String birthday,
			@RequestParam("address") String address,
			@RequestParam("gender") String gender,
			Model m,HttpSession session) {

		
		Map<String, String> errors = new HashMap<String, String>(); 
		m.addAttribute("errors", errors);
		if(mail==null || mail.length()==0) {
			errors.put("mail", "請輸入Email");
		}

		if(password==null || password.length()==0) {
			errors.put("pwd", "請輸入密碼");
		}
		if(phone==null || phone.length()==0 || phone.length()>10) {
			errors.put("phone", "請輸入正確的電話號碼,共十碼");
		}
		if(errors!=null && !errors.isEmpty()) {
			return "MemberInserPage";
		}
		
		Member checkmb = mService.findBymail(mail);
		if(checkmb!=null) {
			errors.put("mail", "該Email已有人使用，請重新輸入");
		}
		if(errors!=null && !errors.isEmpty()) {
			return "MemberInserPage";
		}
		System.out.println("#########3");
		//第二種方法
		String photo = "login-icon.png";
		Member mb = new Member(mail,password,phone,name,numberID,birthday,address,gender,photo);
		String encodePwd = new BCryptPasswordEncoder().encode(mb.getPassword());
		mb.setPassword(encodePwd);
//		Member newmeb = mService.inser(mb);
		m.addAttribute("mail",mail);
		session.setAttribute("member", mb);
		return "/mail/registerDemo";
	}

}
