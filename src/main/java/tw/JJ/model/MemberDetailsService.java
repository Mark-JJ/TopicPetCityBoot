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
public class MemberDetailsService implements UserDetailsService{
	@Autowired
	private MemberService aService;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Member ac = aService.findBymail(username);
		System.out.println("QQQQQQ"+ac);
		System.out.println(ac.getMail());
		return new User(ac.getMail(),ac.getPassword(),Collections.emptyList());
	}

}
