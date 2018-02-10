package com.app.PeopleManager.model;

import javax.persistence.Entity;
import javax.persistence.Table;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@Table(name="doctor")
public class Doctor extends AbstractPerson {
	
	
	public Doctor() {
		super();
	}
	
	@Column(name = "specialty")
	private String specialty;
	
	public String getSpecialty() {
		return specialty;
	}

	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}




}
