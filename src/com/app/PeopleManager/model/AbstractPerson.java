package com.app.PeopleManager.model;

import java.util.Date;

public abstract class AbstractPerson implements Person {
	
	private String firstName;
	private String middleName;
	private String lastName;
	private Date dob;
	private Address address;
	private String phoneNumber;
	private String emailAddress;

	@Override
	public void setFirstName(String firstName) {
		this.firstName = firstName;
		
	}

	@Override
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
		
	}

	@Override
	public void setLastName(String lastName) {
		this.lastName = lastName;
		
	}

	@Override
	public void setDob(Date dob) {
		this.dob = dob;
		
	}

	@Override
	public void setAddress(Address address) {
		this.address = address;
		
	}
	
	@Override
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	@Override
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
		
	}

	@Override
	public String getFirstName() {
		// TODO Auto-generated method stub
		return firstName;
	}

	@Override
	public String getMiddleName() {
		// TODO Auto-generated method stub
		return middleName;
	}

	@Override
	public String getLastName() {
		// TODO Auto-generated method stub
		return lastName;
	}

	@Override
	public Date getDob() {
		// TODO Auto-generated method stub
		return dob;
	}

	@Override
	public Address getAddress() {
		// TODO Auto-generated method stub
		return address;
	}
	
	@Override
	public String getPhoneNumber() {
		return phoneNumber;
	}
	
	@Override
	public String getEmailAddress() {
		return emailAddress;
	}
	


}
