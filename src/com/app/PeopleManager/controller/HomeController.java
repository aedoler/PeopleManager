package com.app.PeopleManager.controller;

import java.util.ArrayList;
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
		//List<Patient> patients = patientService.listPatients();
		List<Patient> patients = new ArrayList<Patient>();
		Patient patient = patientService.getPatientById(2);
		patients.add(patient);
		System.out.println("------RETURNED PATIENTS LIST :" + patients.toString());
		System.out.println("------Patient #1 is : " + patientService.getPatientById(1));
		model.addObject("patients", patients);
		model.addObject("greeting",  "Quick Links");
		return model;
	}
	
	
}
