package com.app.PeopleManager.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.app.PeopleManager.data.service.PatientService;
import com.app.PeopleManager.model.Doctor;
import com.app.PeopleManager.model.Patient;

@Controller
public class PatientController {
	
	@Autowired
	private PatientService patientService;
	
	@Autowired(required=true)
	@Qualifier(value="patientService")
	public void setPatientService(PatientService ps){
		this.patientService = ps;
	}
	
    
	@RequestMapping("/patientFormSuccess")
	protected ModelAndView requestHandler(@Valid @ModelAttribute("patient") Patient patient, BindingResult data) {
		ModelAndView model = null;
		if (data.hasErrors()) {
			model = new ModelAndView("AddPatient");
		}
		else {
			this.patientService.addPatient(patient);
			model = new ModelAndView("AddPatientSuccess");
		}
		return model;
	}
	
	@RequestMapping("/scheduleAppointment")
	protected ModelAndView scheduleAppoingmentRequestHandler() {
		ModelAndView model = new ModelAndView("ScheduleAppointment");
		return model;
	}

}
