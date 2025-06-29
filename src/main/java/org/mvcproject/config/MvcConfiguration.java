package org.mvcproject.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan(basePackages="org.mvcproject.Mess_Store_Management")
@EnableWebMvc
public class MvcConfiguration  implements WebMvcConfigurer{
	

	@Bean
	public ViewResolver getViewResolver(){
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	
	  @Bean 
	  public DriverManagerDataSource dataSource() 
	{ 
	  DriverManagerDataSource dataSource = new DriverManagerDataSource();
	  dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
	  dataSource.setUrl("jdbc:mysql://localhost:3306/Mess_Management");
	  dataSource.setUsername("root"); 
	  dataSource.setPassword("root"); 
	  return dataSource; 
	  }
	 
	//live 
	/*
	 * @Bean public DriverManagerDataSource dataSource() { DriverManagerDataSource
	 * dataSource = new DriverManagerDataSource();
	 * dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
	 * dataSource.setUrl("jdbc:mysql://localhost:3306/smprowor_messpredict");
	 * dataSource.setUsername("smprowor_datta");
	 * dataSource.setPassword("PZjb6+=aa80P"); return dataSource; }
	 */
		@Bean
	    public JdbcTemplate jdbcTemplate() {
	        JdbcTemplate template = new JdbcTemplate();
	        template.setDataSource(dataSource());
			return template;
	  }
		// Resource Handler configuration
	    @Override
	    public void addResourceHandlers(ResourceHandlerRegistry registry) {
	        // Mapping /resources/** to /resources/ directory
	        registry.addResourceHandler("/resources/**")
	                .addResourceLocations("/resources/");

	        // Mapping /images/** to /resources/Images/ directory
	        registry.addResourceHandler("/images/**")
	                .addResourceLocations("/resources/images/");
	    }
}
