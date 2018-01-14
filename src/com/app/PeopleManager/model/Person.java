package com.app.PeopleManager.model;

import java.util.Date;

public interface Person {
	
	public void setFirstName(String firstName);
	
	public void setMiddleName(String middleName);
	
	public void setLastName(String lastName);
	
	public void setDob(Date dob);
	
	public void setStreetAddress(String streetAddress);
	
	public void setCity(String city);
	
	public void setState(String state);
	
	public void setCountry(String country);
	
	public void setPhoneNumber(String phoneNumber);
	
	public void setEmailAddress(String emailAddress);
	
	public String getFirstName();
	
	public String getMiddleName();
	
	public String getLastName();
	
	public Date getDob();
	
	public String getStreetAddress();
	
	public String getCity();
	
	public String getState();
	
	public String getCountry();
	
	public String getPhoneNumber();
	
	public String getEmailAddress();
	

}
