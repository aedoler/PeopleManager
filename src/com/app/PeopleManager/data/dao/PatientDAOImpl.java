package com.app.PeopleManager.data.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.PeopleManager.model.Patient;

@Repository
public class PatientDAOImpl implements PatientDAO {
	
	//private static final Logger logger = LoggerFactory.getLogger(PatientDAOImpl.class);

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	@Override
	public void addPatient(Patient p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		System.out.println("Attempting to add patient.");
		//logger.info("Person saved successfully, Person Details="+p);
	}

	@Override
	public void updatePatient(Patient p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(p);
		//logger.info("Person updated successfully, Person Details="+p);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Patient> listPatients() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Patient> patientsList = session.createQuery("from Person").list();
		for(Patient p : patientsList){
			//logger.info("Person List::"+p);
		}
		return patientsList;
	}

	@Override
	public Patient getPatientById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Patient p = (Patient) session.load(Patient.class, new Integer(id));
		//logger.info("Person loaded successfully, Person details="+p);
		return p;
	}

	@Override
	public void removePatient(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Patient p = (Patient) session.load(Patient.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
		//logger.info("Person deleted successfully, person details="+p);
	}

}
