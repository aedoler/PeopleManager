package com.app.PeopleManager.model;

import java.sql.Time;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="appointment")
public class Appointment {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", updatable = false, nullable = false)
	protected Long id;
	
	/* I need to come back to this to fix the OneToOne relationship for patients and doctors. Currently, 
	 * upon insert, Hibernate only inserts the IDs without associating them with the corresponding object.
	 * 
	 */
	
    //@OneToOne(cascade=CascadeType.ALL)
    //@JoinColumn(name="patient_id", referencedColumnName="id", insertable=false, updatable=false)
	//@Column(name = "patient_id")
	@ManyToOne(optional=false)
	@JoinColumn(name="patient_id", referencedColumnName="id")
	private Patient patient;
    
    //@OneToOne(cascade=CascadeType.ALL)
    //@JoinColumn(name="doctor_id", referencedColumnName="id", insertable=false, updatable=false)
	@Column(name = "doctor_id")
	private int doctor;
	
	@Column(name = "date")
	private Date date;
	
	@Column(name = "time")
	private String time;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	
	public Patient getPatient() {
		return patient;
	}
	
	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	public int getDoctor() {
		return doctor;
	}
	public void setDoctor(int doctor) {
		this.doctor = doctor;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}


}
