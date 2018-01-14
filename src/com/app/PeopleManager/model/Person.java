package com.app.PeopleManager.model;

import java.util.Date;

public interface Person {
	
	public void setFirstName(String firstName);
	
	public void setMiddleName(String middleName);
	
	public void setLastName(String lastName);
	
	public void setDob(Date dob);
	
	public void setAddress(Address address);
	
	public void setPhoneNumber(String phoneNumber);
	
	public void setEmailAddress(String emailAddress);
	
	public String getFirstName();
	
	public String getMiddleName();
	
	public String getLastName();
	
	public Date getDob();
	
	public Address getAddress();
	
	public String getPhoneNumber();
	
	public String getEmailAddress();
	
	
	

}
