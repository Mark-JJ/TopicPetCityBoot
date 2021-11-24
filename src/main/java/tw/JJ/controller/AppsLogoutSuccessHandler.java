package tw.JJ.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.ObjectMapper;

import tw.JJ.model.AccountService;
import tw.JJ.model.MemberService;

@Component
public class AppsLogoutSuccessHandler implements LogoutSuccessHandler {
	
	@Autowired
	MemberService sysService;
	
	@Override
	public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication)
			throws IOException, ServletException {
		System.out.println("PPPPP"+authentication.getName());
//		  ObjectMapper oMapper = new ObjectMapper();
//		  Map<String,String> authDetail = oMapper.convertValue(authentication.getDetails(),Map.class);
//		  sysService.removeWhoisOnline(authDetail.get("name"));
//		  response.sendRedirect("/logout");
		  
		  HttpSession session = request.getSession();
	        if (session != null){
	            session.removeAttribute("managerID");
	        }

	}

}
