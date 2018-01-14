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
	<div class="col-md-offset-3 col-md-6 col-lg-offset-3 col-lg-6">
		<h2>You have successfully added a patient with the following information:</h2>
		<table class="table table-condensed">
		<tr><td>First name:</td><td>${doctor.firstName}</td></tr>
		<tr><td>Middle name:</td><td>${doctor.middleName}</td></tr>
		<tr><td>Last name:</td><td>${doctor.lastName}</td></tr>
		<tr><td>DOB:</td><td>${doctor.dob}</td></tr>
		<tr><td>Specialty:</td><td>${doctor.specialty}</td></tr>
		<tr><td>Phone:</td><td>${doctor.phoneNumber}</td></tr>
		<tr><td>Email:</td><td>${doctor.emailAddress}</td></tr>
		<tr><td>Address:</td><td>${doctor.streetAddress} ${doctor.city}, ${doctor.state}, ${doctor.country}</td></tr>
		</table>
	</div>
</div>
</body>
</html>