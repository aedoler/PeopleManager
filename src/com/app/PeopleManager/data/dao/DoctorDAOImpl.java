package com.app.PeopleManager.data.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.PeopleManager.model.Doctor;

@Repository
public class DoctorDAOImpl implements DoctorDAO {
	
	//private static final Logger logger = LoggerFactory.getLogger(DoctorDAOImpl.class);

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	@Override
	public void addDoctor(Doctor p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		System.out.println("----------Attempting to add doctor.");
		//logger.info("Person saved successfully, Person Details="+p);
	}

	@Override
	public void updateDoctor(Doctor p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		//logger.info("Person updated successfully, Person Details="+p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Doctor> listDoctors() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Doctor> doctorsList = session.createQuery("from Doctor").list();
		for(Doctor p : doctorsList){
			//logger.info("Person List::"+p);
		}
		return doctorsList;
	}

	@Override
	public Doctor getDoctorById(int id) {
		Session session = this.sessionFactory.openSession();		
		Doctor p = (Doctor) session.load(Doctor.class, new Integer(id));
		//logger.info("Person loaded successfully, Person details="+p);
		return p;
	}

	@Override
	public void removeDoctor(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Doctor p = (Doctor) session.load(Doctor.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
		//logger.info("Person deleted successfully, person details="+p);
	}

}
