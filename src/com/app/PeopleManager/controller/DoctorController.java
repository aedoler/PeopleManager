package com.app.PeopleManager.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.app.PeopleManager.data.service.DoctorService;
import com.app.PeopleManager.model.Doctor;

@Controller
public class DoctorController {

	
	@Autowired
	private DoctorService doctorService;
	
	@Autowired(required=true)
	@Qualifier(value="doctorService")
	public void setDoctorService(DoctorService ds){
		this.doctorService = ds;
	}
	
	@RequestMapping("/addDoctor")
	protected ModelAndView addDoctorRequestHandler() {
		ModelAndView model = new ModelAndView("AddDoctor");
		model.addObject("greeting", "Please enter the physician's information below");
		return model;
	}
	
	@RequestMapping("/doctorFormSuccess")
	protected ModelAndView requestHandler(@Valid @ModelAttribute("doctor") Doctor doctor, BindingResult data) {
		ModelAndView model = null;
		if (data.hasErrors()) {
			model = new ModelAndView("AddDoctor");
		}
		else {
			this.doctorService.addDoctor(doctor);
			model = new ModelAndView("AddDoctorSuccess");
		}
		return model;
	}
}
