package helper;

import javax.persistence.EntityManager;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan("controller,dao,helper,service")
public class myconfiguration {
	
	
	@Bean
	EntityManager entityManagerFactory()
	{
		
		return Persistence.createEntityManagerFactory("dev").createEntityManager();
	}

	@Bean
	ViewResolver resolver()
	{
		InternalResourceViewResolver Resolver=new InternalResourceViewResolver();
		Resolver.setPrefix("/jsp/");
		Resolver.setSuffix(".jsp");
		return Resolver;
	}
}
