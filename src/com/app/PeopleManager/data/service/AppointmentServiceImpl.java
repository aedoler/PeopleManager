package com.app.PeopleManager.data.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.PeopleManager.data.*;
import com.app.PeopleManager.data.dao.AppointmentDAO;
import com.app.PeopleManager.model.*;

@Service("appointmentService")
public class AppointmentServiceImpl implements AppointmentService {
	
	@Autowired
	private AppointmentDAO appointmentDAO;

	public void setAppointmentDAO(AppointmentDAO appointmentDAO) {
		this.appointmentDAO = appointmentDAO;
	}

	@Override
	@Transactional
	public void addAppointment(Appointment a) {
		this.appointmentDAO.addAppointment(a);
	}

	@Override
	@Transactional
	public void updateAppointment(Appointment a) {
		this.appointmentDAO.updateAppointment(a);
	}

	@Override
	@Transactional
	public List<Appointment> listAppointments() {
		return this.appointmentDAO.listAppointments();
	}

	@Override
	@Transactional
	public Appointment getAppointmentById(int id) {
		return this.appointmentDAO.getAppointmentById(id);
	}

	@Override
	@Transactional
	public void removeAppointment(int id) {
		this.appointmentDAO.removeAppointment(id);
	}

}
