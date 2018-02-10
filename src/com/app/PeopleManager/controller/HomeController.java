package com.app.PeopleManager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.app.PeopleManager.data.service.PatientService;
import com.app.PeopleManager.model.Patient;

@Controller
public class HomeController {

	@Autowired
	private PatientService patientService;
	
	@Autowired(required=true)
	@Qualifier(value="patientService")
	public void setPatientService(PatientService ps){
		this.patientService = ps;
	}

	@RequestMapping("/")
	protected ModelAndView baseRequestHandler() {
		ModelAndView model = new ModelAndView("index");
		List<Patient> patients = patientService.listPatients();
		System.out.println("RETURNED PATIENTS LIST :" + patients.toString());
		model.addObject("patients", patients);
		model.addObject("greeting",  "Quick Links");
		return model;
	}
	
	
}
