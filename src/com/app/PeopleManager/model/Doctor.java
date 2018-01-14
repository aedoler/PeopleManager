package com.app.PeopleManager.model;

public class Doctor extends AbstractPerson {
	
	private String specialty;
	
	public String getSpecialty() {
		return specialty;
	}

	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}

	public Doctor() {
		super();
	}


}
