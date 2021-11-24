package tw.JJ.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import tw.JJ.controller.AppsAuthenticationSuccessHandler;
import tw.JJ.controller.AppsLogoutSuccessHandler;
import tw.JJ.model.AccountDetailsService;
import tw.JJ.model.MemberDetailsService;

@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Autowired
	private MemberDetailsService aDS;
//	private AccountDetailsService aDS;
	@Autowired
	AppsAuthenticationSuccessHandler appsAuthenticationSuccessHandler;
	@Autowired
	AppsLogoutSuccessHandler appsLogoutSuccessHandler;
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth
		  .userDetailsService(aDS)
		  .passwordEncoder(new BCryptPasswordEncoder());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		//驗證方法
		.authorizeRequests()
		//user底下的都要驗證
		.antMatchers(HttpMethod.GET,"/member/**").authenticated()
		//其餘的GET方法都給過
		.antMatchers(HttpMethod.GET).permitAll()
		.antMatchers(HttpMethod.POST,"/member/**").authenticated()
		.antMatchers(HttpMethod.POST).permitAll()
		//前面沒寫到的，都要驗證
		.anyRequest().authenticated()
		.and()
		//記住我設定
		.rememberMe()
		.tokenValiditySeconds(86400)
		.key("rememberMe-key")
		.and()
		//關掉csrf(跨站請求偽造)安全驗證
		.csrf().disable()
		//自訂義登入畫面
		.formLogin().loginPage("/login/page1")
//		.usernameParameter("mail")
		.defaultSuccessUrl("/login/welcome")
		.permitAll()
		.successHandler(appsAuthenticationSuccessHandler)
		.and()
		.logout()                 
		.logoutSuccessUrl("/logout")
		.permitAll()
		.logoutSuccessHandler(appsLogoutSuccessHandler);
	;}
	
	@Override
	public void configure(WebSecurity web) throws Exception {
	}


	
}
