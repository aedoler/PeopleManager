<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
	<h2 class="col-lg-offset-3 col-md-offset-3 col-sm-offset-1">${greeting}</h2>
<div class="col-lg-offset-3 col-lg-6 col-md-offset-4 col-md-6 col-sm-offset-2 col-sm-8" >

		<form class="form-horizontal" action="doctorFormSuccess" method="POST">
		<h4>Basic Information</h4>
		  <div class="form-group">
		    <label for="name">First name</label>
		    <input type="text" class="form-control" id="name" placeholder="Enter name" name="firstName">
		  </div>
		  <div class="form-group">
		    <label for="middleName">Middle name</label>
		    <input type="text" class="form-control" id="middleName" placeholder="Enter middlename" name="middleName">
		  </div>
		  <div class="form-group">
		    <label for="lastName">Last name</label>
		    <input type="text" class="form-control" id="lastName" placeholder="Enter last name" name="lastName">
		  </div>
		  <div class="form-group">
		    <label for="dob">DOB</label>
		    <input type="text" class="form-control" id="dob" placeholder="Enter DOB" name="dob">
		  </div>
		  <h4>Specialty</h4>
		  <div class="form-group">
		    <label for="specialty">Physician's specialty</label>
		    <select class="form-control" id="specialty" placeholder="Select specialty below" name="specialty">
		    <option value="general">General</option>
		    <option value="dermatology">Dermatology</option>
		    <option value="earNoseThroat">Ear nose and throat</option>
		    <option value="cardiology">Cardiology</option>
		    <option value="kinesiology">Kinesiolgoy</option>
		    <option value="neurology">Neurology</option>
		    </select>
		  </div>
		  <h4>Contact Information</h4>
		  <div class="form-group">
		    <label for="phoneNumber">Phone number</label>
		    <input type="text" class="form-control" id="phoneNumber" placeholder="Enter phone number" name="phoneNumber">
		  </div>
		  <div class="form-group">
		    <label for="emailAddress">Email address</label>
		    <input type="text" class="form-control" id="emailAddress" placeholder="Enter email address" name="emailAddress">
		  </div>
		  <h4>Address</h4>
		  <div class="form-group">
		    <label for="streetAddress">Street address</label>
		    <input type="text" class="form-control" id="name" placeholder="Enter street address" name="address.streetAddress">
		  </div>
		  <div class="form-group">
		    <label for="city">City</label>
		    <input type="text" class="form-control" id="name" placeholder="Enter city" name="address.city">
		  </div>
		  <div class="form-group">
		    <label for="country">Country</label>
		    <input type="text" class="form-control" id="country" placeholder="Enter country" name="address.country">
		  </div>
		  <button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</div>

</html>