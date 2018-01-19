package com.app.PeopleManager.data.service;

import java.util.List;

import com.app.PeopleManager.model.Doctor;

public interface DoctorService {
	

	    public void addDoctor(Doctor p);
		public void updateDoctor(Doctor p);
		public List<Doctor> listDoctors();
		public Doctor getDoctorById(int id);
		public void removeDoctor(int id);
		


}

