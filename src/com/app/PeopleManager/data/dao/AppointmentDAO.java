package com.app.PeopleManager.data.dao;

import java.util.List;

import com.app.PeopleManager.model.Appointment;

public interface AppointmentDAO {
	
	public void addAppointment(Appointment a);
	public void updateAppointment(Appointment a);
	public List<Appointment> listAppointments();
	public Appointment getAppointmentById(int id);
	public void removeAppointment(int id);

}
