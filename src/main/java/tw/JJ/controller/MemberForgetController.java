//package tw.JJ.controller;
//
//import java.util.HashMap;
//import java.util.Map;
//
//import javax.servlet.ServletContext;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.SessionAttributes;
//
//import tw.JJ.model.EmailSenderService;
//import tw.JJ.model.IEmailSenderService;
//import tw.JJ.model.Member;
//import tw.JJ.model.MemberService;
//import tw.JJ.util.RandomString;
//
//@Controller
//@SessionAttributes({"member"})
//public class MemberForgetController {
//	@Autowired
//	private MemberService mService;
//	String contextPath ;
//	final String requestPath = "/confirmedMail";
//	                             
//	
//	IEmailSenderService senderService;
//	ServletContext  context	;
//	
//	
//	@Autowired
//	public MemberForgetController(IEmailSenderService senderService, ServletContext context) {
//		this.senderService = senderService;
//		this.context = context;
//		contextPath = context.getContextPath();
//	}
//	
//	@GetMapping("/")
//	public String index() {
//		return "index";
//	} 
//	@GetMapping("/MemberForgetPage.controller")
//	public String MemberForgetPage(Model model) {
//		return "/mail/MemberForgetPage";
//	}
//
//	@PostMapping("/MemberForgetAction.controller")
//	public String MemberForgetAction(Model model, HttpSession session, 
//			@RequestParam String emailAddress) {
//		// 註冊的前置作業，你要自行完成
//		// 假設前端會送一Email Address來後端，本範例將假設放在參數：emailAddress內
//		Map<String, String> map = (Map<String, String>) session.getAttribute("randomCode");
//		if (map == null) {
//			map = new HashMap<>();
//			session.setAttribute("randomCode", map);
//		}
//		RandomString rs = new RandomString(50);
//		String random = rs.nextString();
//		map.put(random, random);
//		String link = "http://localhost:8082" + contextPath + requestPath + "/" + random;
//		senderService.sendEmail(emailAddress, "歡迎加入會員", "請於30分鐘內按下列超連結: " + 
//		        link + "<br>");
//		model.addAttribute("emailAddress", emailAddress);
//		return "/mail/MemberForgetPage";
//	}
//
//	@GetMapping("/confirmedMail/{random}")
//	public String confirm(Model model, HttpSession session, 
//			@PathVariable String random) {
//		String result = null;
//		Map<String, String> map = (Map<String, String>) session.getAttribute("randomCode");
//		if (map == null) {
//			result = "電子郵件地址認證失敗，Session不存在";
//		} else {
//			String value = map.get(random);
//			if (value != null && value.equals(random) ) {
//				result = "電子郵件地址認證成功，random=" + random ;
//			}
//		}
//		System.out.println("result=" + result);
//		model.addAttribute("result", result);
//		return "/mail/MemberForgetChang";
//	}
//	@PostMapping("/MemberForgetSuccess.controller")
//	public String MemberForgetSuccess(Model model, HttpSession session, 
//			@RequestParam("emailAddress") String mail,
//			@RequestParam("password") String password) {
//		
//		mService.findBymail(mail);
//		Member mb = mService.findBymail(mail);
//		String nps = new BCryptPasswordEncoder().encode(mb.getPassword());
//		mb.setPassword(nps);
//		return "/mail/MemberForgetSuccess";
//	}
//}
