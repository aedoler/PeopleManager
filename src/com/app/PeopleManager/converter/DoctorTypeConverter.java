package com.app.PeopleManager.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.app.PeopleManager.data.service.DoctorService;
import com.app.PeopleManager.data.service.PatientService;
import com.app.PeopleManager.model.Doctor;
import com.app.PeopleManager.model.Patient;

@Component("doctorTypeConverter")
public class DoctorTypeConverter implements Converter<String, Doctor> {
    
	@Autowired
	@Qualifier(value="doctorService")
	private DoctorService doctorService;

    @Override
    public Doctor convert(String id) {
    		System.out.println("--------------" + id);
    		int intID = 0;

    	    intID = Integer.valueOf(id);

    		System.out.println("--------------- INSIDE DOCTOR CONVERTER ");
    		System.out.println("--------------- INT ID is: " + intID);
    		System.out.println("--Searching for doctor");
    		Doctor doctor = null;
    		try {
    			doctor = doctorService.getDoctorById(intID);
    		}
    		catch (Exception e) {
    			System.out.println("Error getting doctor by ID " + e.getMessage() + e.toString() + e.getCause());
    		}
    		
    		System.out.println("--Got doctor");
    		System.out.println("Doctor is : " + doctor.toString());
    		return doctor;
        
    }

}
