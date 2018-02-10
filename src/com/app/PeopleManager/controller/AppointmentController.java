package com.app.PeopleManager.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.app.PeopleManager.data.service.AppointmentService;
import com.app.PeopleManager.data.service.DoctorService;
import com.app.PeopleManager.data.service.PatientService;
import com.app.PeopleManager.model.Appointment;
import com.app.PeopleManager.model.Doctor;
import com.app.PeopleManager.model.Patient;

@Controller
public class AppointmentController {
	
	@Autowired
	private AppointmentService appointmentService;
	private PatientService patientService;
	private DoctorService doctorService;
	
	@Autowired(required=true)
	@Qualifier(value="appointmentService")
	public void setAppointmentService(AppointmentService as){
		this.appointmentService = as;
	}
	
	@Autowired(required=true)
	@Qualifier(value="patientService")
	public void setPatientService(PatientService ps){
		this.patientService = ps;
	}
	
	@Autowired(required=true)
	@Qualifier(value="doctorService")
	public void setDoctorService(DoctorService ds){
		this.doctorService = ds;
	}
	
	@RequestMapping("/addAppointment")
	protected ModelAndView addAppointmentRequestHandler() {
		List<Patient> patients = patientService.listPatients();
		List<Doctor> doctors = doctorService.listDoctors();
		ModelAndView model = new ModelAndView("AddAppointment");
		model.addObject("patients", patients);
		model.addObject("doctors", doctors);
		return model;
	}
	
	@RequestMapping("/appointmentFormSuccess")
	protected ModelAndView requestHandler(@Valid @ModelAttribute("appointment") Appointment appointment, BindingResult data) {
		ModelAndView model = null;
		//Patient patient = this.patientService.getPatientById(appointment.getPatient().getId());
		System.out.println("Patient is: "+ appointment.getPatient());
		if (data.hasErrors()) {
			System.out.println("Errors in form." + data.getAllErrors().toString());
			model = new ModelAndView("AddAppointment");
		}
		else {
			this.appointmentService.addAppointment(appointment);
			model = new ModelAndView("AddAppointmentSuccess");
		}
		return model;
	}

}
