package tw.JJ.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebAppConfig implements WebMvcConfigurer {

	@Override
	public void addViewControllers(ViewControllerRegistry registry) {
		registry.addViewController("/login/page1").setViewName("MemberLoginPage");
		registry.addViewController("/login/welcome").setViewName("MemberIndex");
		registry.addViewController("/logout").setViewName("MemberLoginPage");
//		registry.addViewController("/logout/page").setViewName("logout");
	}
    
}
