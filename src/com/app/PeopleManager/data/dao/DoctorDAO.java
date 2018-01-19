package com.app.PeopleManager.data.dao;


import java.util.List;

import com.app.PeopleManager.model.Doctor;

public interface DoctorDAO {

	public void addDoctor(Doctor p);
	public void updateDoctor(Doctor p);
	public List<Doctor> listDoctors();
	public Doctor getDoctorById(int id);
	public void removeDoctor(int id);
}
