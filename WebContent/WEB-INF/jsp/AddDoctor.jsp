<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Getting Started: Serving Web Content</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/static/adminlte/css/AdminLTE.css">
<link rel="stylesheet" href="resources/static/adminlte/js/adminlte.js">
<link rel="stylesheet" href="resources/static/styles.css">

<!-- Select2 -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<section class="content">
	<div class="row">
		<div class="col-md-offset-2 col-lg-offset-2 col-md-8 col-lg-8">
		    <div class="box box-primary">
		        

	<h2 class="box-header with-border">${greeting}</h2>


		<form role="form" action="doctorFormSuccess" method="POST">
		   <h4>Basic Information</h4>
			<div class="box-body">
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
		    <div class="input-group date"></div>
		    <label class="col-md-3 col-sm-3" for="dob">DOB</label>
		    <div class="col-md-9 col-sm-9">
		    <input type="text" class="form-control pull-right" data-inputmask="'alias':'mm/dd/yyyy" id="dob" placeholder="Enter DOB" name="dob" datamask>
		    </div>
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
		    <input type="text" class="form-control" id="streetAddress" placeholder="Enter street address" name="streetAddress">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label class="col-md-3 col-sm-3" for="city">City</label>
		    <div class="col-md-9 col-sm-9">
		    <input type="text" class="form-control" id="city" placeholder="Enter city" name="city">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label class="col-md-3 col-sm-3" for="state">State/Province</label>
		    <div class="col-md-9 col-sm-9">
		    <input type="text" class="form-control" id="state" placeholder="Enter state" name="state">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label class="col-md-3 col-sm-3" for="country">Country</label>
		    <div class="col-md-9 col-sm-9">
		    <input type="text" class="form-control" id="country" placeholder="Enter country" name="country">
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
	</div>


</section>
</body>

</html>