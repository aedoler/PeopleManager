package com.app.PeopleManager.data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.PeopleManager.data.*;
import com.app.PeopleManager.data.dao.DoctorDAO;
import com.app.PeopleManager.model.*;

@Service("doctorService")
public class DoctorServiceImpl implements DoctorService {
	
	@Autowired
	private DoctorDAO doctorDAO;

	public void setDoctorDAO(DoctorDAO doctorDAO) {
		this.doctorDAO = doctorDAO;
	}

	@Override
	@Transactional
	public void addDoctor(Doctor p) {
		this.doctorDAO.addDoctor(p);
	}

	@Override
	@Transactional
	public void updateDoctor(Doctor p) {
		this.doctorDAO.updateDoctor(p);
	}

	@Override
	@Transactional
	public List<Doctor> listDoctors() {
		return this.doctorDAO.listDoctors();
	}

	@Override
	@Transactional
	public Doctor getDoctorById(int id) {
		return this.doctorDAO.getDoctorById(id);
	}

	@Override
	@Transactional
	public void removeDoctor(int id) {
		this.doctorDAO.removeDoctor(id);
	}

}
