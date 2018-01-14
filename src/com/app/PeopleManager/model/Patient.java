package com.app.PeopleManager.model;

public class Patient extends AbstractPerson {
	
	public Patient( ) {
		super();
	}
	
	private String doctor;

	public String getDoctor() {
		return doctor;
	}

	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}
	
	

}
