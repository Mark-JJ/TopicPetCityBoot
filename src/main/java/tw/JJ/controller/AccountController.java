package tw.JJ.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import tw.JJ.model.Account;
import tw.JJ.model.AccountService;

@RestController
public class AccountController {
	@Autowired
    private AccountService aService;
	
	@PostMapping("/addAccount.controller")
	public Account addAccount(@RequestBody tw.JJ.model.Account ac) {
		String encodePwd = new BCryptPasswordEncoder().encode(ac.getManagerPw());
		ac.setManagerPw(encodePwd);
		return aService.createAccount(ac);
	}
}
