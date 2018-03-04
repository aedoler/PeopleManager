package com.app.PeopleManager.data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.PeopleManager.data.*;
import com.app.PeopleManager.data.dao.PatientDAO;
import com.app.PeopleManager.model.*;

@Service("patientService")
public class PatientServiceImpl implements PatientService {
	
	@Autowired
	private PatientDAO patientDAO;

	public void setPatientDAO(PatientDAO patientDAO) {
		this.patientDAO = patientDAO;
	}

	@Override
	@Transactional
	public void addPatient(Patient p) {
		this.patientDAO.addPatient(p);
	}

	@Override
	@Transactional
	public void updatePatient(Patient p) {
		this.patientDAO.updatePatient(p);
	}

	@Override
	@Transactional
	public List<Patient> listPatients() {
		return this.patientDAO.listPatients();
	}

	@Override
	@Transactional
	public Patient getPatientById(int id) {
		System.out.println("Inside getPatientByID");
		return this.patientDAO.getPatientById(id);
	}

	@Override
	@Transactional
	public void removePatient(int id) {
		this.patientDAO.removePatient(id);
	}

}
