package com.app.PeopleManager.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.app.PeopleManager.data.service.PatientService;
import com.app.PeopleManager.model.Patient;

@Component("patientTypeConverter")
public class PatientTypeConverter implements Converter<String, Patient> {
    
	@Autowired
	@Qualifier(value="patientService")
	private PatientService patientService;

    @Override
    public Patient convert(String id) {
    		System.out.println("--------------" + id);
    		int intID = 0;

    	    intID = Integer.valueOf(id);

    		System.out.println("--------------- INSIDE PATIENT CONVERTER ");
    		//System.out.println("----Patient service is " + patientService.toString());
    		System.out.println("--------------- INT ID is: " + intID);
    		System.out.println("--Searching for patient");
    		Patient patient = null;
    		try {
    			patient = patientService.getPatientById(intID);
    		}
    		catch (Exception e) {
    			System.out.println("Error getting patient by ID " + e.getMessage() + e.toString() + e.getCause());
    		}
    		
    		System.out.println("--Got patient");
    		System.out.println("Patient is : " + patient.toString());
    		return patient;
        
    }

}
