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
<div class="col-lg-offset-3 col-lg-6 col-md-offset-3 col-md-6 col-sm-offset-1 col-sm-9" >

		<form  action="doctorFormSuccess" method="POST">
		<h4>Basic Information</h4>
		  <div class="form-group row">
		    <label class="col-md-3 col-sm-3" for="name">First name:</label>
		    <div class="col-md-9 col-sm-9">
		    <input type="text" class="form-control" id="name" placeholder="Enter name" name="firstName">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label class="col-md-3 col-sm-3" for="middleName">Middle name</label>
		    <div class="col-md-9 col-sm-9">
		    <input type="text" class="form-control" id="middleName" placeholder="Enter middlename" name="middleName">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label class="col-md-3 col-sm-3" for="lastName">Last name</label>
		    <div class="col-md-9 col-sm-9">
		    <input type="text" class="form-control" id="lastName" placeholder="Enter last name" name="lastName">
		   </div>
		  </div>
		  <div class="form-group row">
		    <label class="col-md-3 col-sm-3" for="dob">DOB</label>
		    <div class="col-md-9 col-sm-9">
		    <input type="text" class="form-control" id="dob" placeholder="Enter DOB" name="dob">
		    </div>
		  </div>
		  <hr>
		  <h4>Specialty</h4>
		  <div class="form-group row">
		    <label class="col-md-3 col-sm-3" for="specialty">Physician's specialty</label>
		    <div class="col-md-9 col-sm-9">
			    <select class="form-control" id="specialty" placeholder="Select specialty below" name="specialty">
				    <option value="general">General</option>
				    <option value="dermatology">Dermatology</option>
				    <option value="earNoseThroat">Ear nose and throat</option>
				    <option value="cardiology">Cardiology</option>
				    <option value="kinesiology">Kinesiolgoy</option>
				    <option value="neurology">Neurology</option>
			    </select>
		    </div>
		  </div>
		  <hr>
		  <h4>Contact Information</h4>
		  <div class="form-group row">
		    <label class="col-md-3 col-sm-3 for="phoneNumber">Phone number</label>
		    <div class="col-md-9 col-sm-9">
		    <input type="text" class="form-control" id="phoneNumber" placeholder="Enter phone number" name="phoneNumber">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label class="col-md-3 col-sm-3 for="emailAddress">Email address</label>
		    <div class="col-md-9 col-sm-9">
		    <input type="text" class="form-control" id="emailAddress" placeholder="Enter email address" name="emailAddress">
		    </div>
		  </div>
		  <hr>
		  <h4>Address</h4>
		  <div class="form-group row">
		    <label class="col-md-3 col-sm-3" for="streetAddress">Street address</label>
		    <div class="col-md-9 col-sm-9">
		    <input type="text" class="form-control" id="name" placeholder="Enter street address" name="address.streetAddress">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label class="col-md-3 col-sm-3" for="city">City</label>
		    <div class="col-md-9 col-sm-9">
		    <input type="text" class="form-control" id="name" placeholder="Enter city" name="address.city">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label class="col-md-3 col-sm-3" for="country">Country</label>
		    <div class="col-md-9 col-sm-9">
		    <input type="text" class="form-control" id="country" placeholder="Enter country" name="address.country">
		    </div>
		  </div>
		  <hr>
		  <button class="btn btn-primary col-sm-offset-3 col-sm-6 col-md-offset-3 col-md-6" type="submit" class="btn btn-primary">Submit</button>
			<br>
		</form>
		<br>
		<br>
	</div>
</div>

</html>