package com.app.PeopleManager.data.dao;


import java.util.List;

import com.app.PeopleManager.model.Patient;

public interface PatientDAO {

	public void addPatient(Patient p);
	public void updatePatient(Patient p);
	public List<Patient> listPatients();
	public Patient getPatientById(int id);
	public void removePatient(int id);
}
