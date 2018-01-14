package com.app.PeopleManager.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import com.app.PeopleManager.security.WebSecurityConfig;

@ComponentScan
@EnableAutoConfiguration
public class MyApp {
	
	@Bean
    public WebSecurityConfigurerAdapter webSecurityConfigurerAdapter() {
        return new WebSecurityConfig();
    }
	
    public static void main(String[] args) {
        SpringApplication app = new SpringApplication(MyApp.class);
        app.run(args);
    }
}