package com.app.PeopleManager;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.app.PeopleManager.model.Doctor;
import com.app.PeopleManager.model.Patient;

@Controller
public class GreetingController {

	@RequestMapping("/")
	protected ModelAndView baseRequestHandler() {
		ModelAndView model = new ModelAndView("index");
		model.addObject("welcome", "Welcome. What would you like to do?");
		return model;
	}
	
    @RequestMapping("/addPatient")
	public ModelAndView requestHandler() { 
    	ModelAndView model = new ModelAndView("AddPatient");
    	model.addObject("greeting", "Please enter the patient's information below");
    	return model;
    	
    }
    
	@RequestMapping("/patientFormSuccess")
	protected ModelAndView requestHandler(@Valid @ModelAttribute("patient") Patient patient, BindingResult data) {
		ModelAndView model = null;
		if (data.hasErrors()) {
			model = new ModelAndView("AddPatient");
		}
		else {
			model = new ModelAndView("AddPatientSuccess");
		}
		return model;
	}
	
	@RequestMapping("/login")
	protected ModelAndView loginRequestHandler() {
		ModelAndView model = new ModelAndView("login");
		return model;
	}
	
	@RequestMapping("/scheduleAppointment")
	protected ModelAndView scheduleAppoingmentRequestHandler() {
		ModelAndView model = new ModelAndView("ScheduleAppointment");
		return model;
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
			model = new ModelAndView("AddDoctorSuccess");
		}
		return model;
	}

}
