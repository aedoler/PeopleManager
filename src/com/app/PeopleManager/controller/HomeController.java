package com.app.PeopleManager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping("/login")
	protected ModelAndView loginRequestHandler() {
		ModelAndView model = new ModelAndView("login");
		return model;
	}

}
