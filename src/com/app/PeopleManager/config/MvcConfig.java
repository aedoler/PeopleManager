package com.app.PeopleManager.config;

import java.util.HashSet;
import java.util.Properties;
import java.util.Set;

import javax.sql.DataSource;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.ConversionServiceFactoryBean;
import org.springframework.core.convert.ConversionService;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.app.PeopleManager.converter.DoctorTypeConverter;
import com.app.PeopleManager.converter.PatientTypeConverter;

@EnableWebMvc
@ComponentScan(basePackages = {"com.app.PeopleManager.config", "com.app.PeopleManager.controller",
		"com.app.PeopleManager.security", "com.app.PeopleManager.data.dao",
		"com.app.PeopleManager.data.service", "com.app.PeopleManager.converter", "com.app.PeopleManager.*"})
@Configuration
@EnableTransactionManagement
public class MvcConfig extends WebMvcConfigurerAdapter {
	
	@Autowired
	private PatientTypeConverter patientTypeConverter;
	
	@Autowired
	private DoctorTypeConverter doctorTypeConverter;
	
    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

	    @Bean
	 public InternalResourceViewResolver viewResolver() {
	  InternalResourceViewResolver resolver = new InternalResourceViewResolver();
	  resolver.setPrefix("/WEB-INF/jsp/");
	  resolver.setSuffix(".jsp");
	  return resolver;
	 }
	    
	    @Override
	    public void addResourceHandlers(ResourceHandlerRegistry registry) {
	        registry
	          .addResourceHandler("/resources/**")
	          .addResourceLocations("/resources/"); 
	    }
	    /*
	     * Boot Config
	     
	    @Bean
	    @Autowired
	    public ConversionServiceFactoryBean conversionFacilitator(Set<Converter> converters) {
	      ConversionServiceFactoryBean factory = new ConversionServiceFactoryBean();
	      factory.setConverters(converters);
	      return factory;
	    }	
	    */
	    
	    @Override
	    public void addFormatters(FormatterRegistry formatterRegistry) {
	        formatterRegistry.addConverter(patientTypeConverter);
	        formatterRegistry.addConverter(doctorTypeConverter);
	    }
    	
	    /*
    @Bean(name = "datasource")
    public static DataSource dataSource() {
        BasicDataSource ds = new BasicDataSource();
        ds.setDriverClassName("com.mysql.jdbc.Driver");
        ds.setUrl("jdbc:mysql://localhost:3306/license_prod_2");
        ds.setUsername("root");
        ds.setPassword("");

        return ds;
    }
    
    @Bean
    public LocalSessionFactoryBean sessionFactory(){
        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
        sessionFactory.setDataSource(dataSource());
        sessionFactory.setPackagesToScan(new String[]{"com.app.PeopleManager.model"});
        sessionFactory.setHibernateProperties(hibernateProperties());
        return sessionFactory;
        
    }
    
    private Properties hibernateProperties() {
        Properties properties = new Properties();
        properties.put("hibernate.dialect", environment.getRequiredProperty("hibernate.dialect"));
        properties.put("hibernate.show_sql", environment.getRequiredProperty("hibernate.show_sql"));
        properties.put("hibernate.format_sql", environment.getRequiredProperty("hibernate.format_sql"));
        return properties;        
    }
    
    
    @Bean
    @Autowired
    public HibernateTransactionManager transactionManager(SessionFactory sessionFactory){
        HibernateTransactionManager tx = new HibernateTransactionManager();
        tx.setSessionFactory(sessionFactory);
        return tx;
    }
    */
}
