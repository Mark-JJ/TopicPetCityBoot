package tw.JJ;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.PropertySource;

@SpringBootApplication
@PropertySource(value={"classpath:jdbc.properties"},ignoreResourceNotFound = true)
public class TopicPetCityBootApplication {

	public static void main(String[] args) {
		SpringApplication.run(TopicPetCityBootApplication.class, args);
	}

}
