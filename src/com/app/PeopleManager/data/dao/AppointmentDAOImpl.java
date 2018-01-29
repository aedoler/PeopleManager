package com.app.PeopleManager.data.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.PeopleManager.model.Appointment;

@Repository
public class AppointmentDAOImpl implements AppointmentDAO {
	
	//private static final Logger logger = LoggerFactory.getLogger(AppointmentDAOImpl.class);

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	@Override
	public void addAppointment(Appointment p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		System.out.println("----------Attempting to add appointment.");
		//logger.info("Person saved successfully, Person Details="+p);
	}

	@Override
	public void updateAppointment(Appointment p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		//logger.info("Person updated successfully, Person Details="+p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Appointment> listAppointments() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Appointment> appointmentsList = session.createQuery("from Appointment").list();
		for(Appointment a : appointmentsList){
			//logger.info("Person List::"+p);
		}
		return appointmentsList;
	}

	@Override
	public Appointment getAppointmentById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Appointment a = (Appointment) session.load(Appointment.class, new Integer(id));
		//logger.info("Person loaded successfully, Person details="+p);
		return a;
	}

	@Override
	public void removeAppointment(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Appointment a = (Appointment) session.load(Appointment.class, new Integer(id));
		if(null != a){
			session.delete(a);
		}
		//logger.info("Person deleted successfully, person details="+p);
	}

}
