package tw.JJ.model;

import java.util.Map;
import java.util.Optional;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.JJ.exception.UserNotFoundException;

@Service
@Transactional
public class AccountService {
	@Autowired
	private AccountRepository aRps;
	
	public Account findBymanagerID(String managerName){
		Optional<Account> oa = aRps.findBymanagerName(managerName);
		if(oa.isEmpty()) {
			throw new UserNotFoundException("找不到管理者帳號");
		}
//		ServletRequest session = null;
//		HttpServletRequest request = null;
//		HttpSession session = request.getSession();
//		session.setAttribute("managerID", managerName);
		return oa.get();
	}
	
	public Account createAccount(Account ac) {
		return aRps.save(ac);
	}

	public Account setWhoIsOnline(Map<String, String> authDetail, String name) {
		System.out.println("authDetail123"+authDetail);
		System.out.println("name123"+name);
		
		return null;
	}

	public void removeWhoisOnline(String string) {
		System.out.println("string123"+string);
	}
	
	
}
