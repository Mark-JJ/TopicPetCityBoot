package tw.JJ.model;

import java.util.Collections;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;

@Service
@Transactional
public class AccountDetailsService implements UserDetailsService{
	@Autowired
	private AccountService aService;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Account ac = aService.findBymanagerID(username);
		return new User(ac.getManagerName(),ac.getManagerPw(),Collections.emptyList());
	}
//	public void AccountDetailsService(@RequestParam("username")String username,HttpSession session) {
//		session.setAttribute("managerID", username);
//	}
}
