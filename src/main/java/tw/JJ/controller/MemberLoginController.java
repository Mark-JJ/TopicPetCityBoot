//package tw.JJ.controller;
//
//
//import javax.servlet.http.HttpSession;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.support.SessionStatus;
//
//
//
//@Controller
//public class MemberLoginController {
//	private String user="";
//	@GetMapping(path = "/login/page")
//	public String processAction() {
//		return "MemberLoginPage";
//	}
//	@PostMapping(path = "/login/page2")
//	public String processAction2(@RequestParam("username") String user, 
//			HttpSession session) {
//		session.setAttribute("managerID", user);
//		return "MemberLoginPage";
//	}
//	
//	@GetMapping(path = "/login/welcome")
//	public String processAction3() {
//		
//		return "MemberIndex";
//	}
//	@GetMapping(path = "/LoginOut.controller")
//    public String LoginOut(HttpSession session,SessionStatus sessionStatus) {
//		session.removeAttribute("managerID");
//		sessionStatus.setComplete();
//    	return "MemberLoginPage";
//    }
//}
