package tw.JJ.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.ObjectMapper;

import tw.JJ.model.Account;
import tw.JJ.model.AccountService;
import tw.JJ.model.Member;
import tw.JJ.model.MemberService;

@Component
public class AppsAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
	
	@Autowired
	MemberService sysService;
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		  HttpSession session = request.getSession(false);
		  if (session != null) {
		   // 將 Object 轉換成 Map
		   ObjectMapper oMapper = new ObjectMapper();
		   Map<String,String> authDetail = oMapper.convertValue(authentication.getDetails(),Map.class);
		   Member whois = sysService.setWhoIsOnline( authDetail , authentication.getName());
		   
		   System.out.println("EEEE"+authDetail);
		   System.out.println("AAAAA"+authentication.getName());
		   System.out.println("BBBBB"+authentication.getClass());
		   session.setAttribute("mail", authentication.getName());
//		   session.setAttribute("memberID", authentication.getClass());
		  }
		  if (authentication.isAuthenticated()) {
		   response.sendRedirect("/login/welcome");
		  } else {
		   response.sendRedirect("/login/page");
		  }

	}

}
