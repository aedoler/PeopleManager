<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/static/styles.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/static/adminlte/css/AdminLTE.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<header class="main-header">
	<nav class="navbar navbar-default">
	  <div class="container-fluid">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href=""><i class="fa fa-home" aria-hidden="true"></i></a>
	    </div>
	
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	      	<li><a href="scheduleAppointment">Schedule Appointment</a></li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Manage Patients <span class="caret"></span></a>
	          <ul class="dropdown-menu">
	            <li><a href="#">Action</a></li>
	            <li><a href="#">Another action</a></li>
	            <li><a href="#">Something else here</a></li>
	            <li role="separator" class="divider"></li>
	            <li><a href="#">Separated link</a></li>
	            <li role="separator" class="divider"></li>
	            <li><a href="#">One more separated link</a></li>
	          </ul>
	        </li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Manage Physicians <span class="caret"></span></a>
	          <ul class="dropdown-menu">
	            <li><a href="#">Action</a></li>
	            <li><a href="#">Another action</a></li>
	            <li><a href="#">Something else here</a></li>
	            <li role="separator" class="divider"></li>
	            <li><a href="#">Separated link</a></li>
	            <li role="separator" class="divider"></li>
	            <li><a href="#">One more separated link</a></li>
	          </ul>
	        </li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="#">Logout</a></li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
</header>	
<section class="content">
<h2>${welcome}</h2>
	<div class="container">
	    <div class="col-lg-offset-1 col-lg-10 col-md-offset-1 col-md-10">
			<div class="row index-row">
			<h3 class="content-header">Appointments</h3>
			<hr>
	        <div class="col-lg-6 col-xs-6">
	          <!-- small box -->
	          <div class="small-box bg-aqua">
	            <div class="inner">
	              <h3>New</h3>
	
	              <p>Schedule a new appointment</p>
	            </div>
	            <div class="icon">
	              <i class="ion ion-bag"></i>
	            </div>
	            <a href="#" class="small-box-footer">Go <i class="fa fa-arrow-circle-right"></i></a>
	          </div>
	        </div>
	        <!-- ./col -->
	        <div class="col-lg-6 col-xs-6">
	          <!-- small box -->
	          <div class="small-box bg-green">
	            <div class="inner">
	              <h3>Edit</h3>
	
	              <p>Edit an existing appointment</p>
	            </div>
	            <div class="icon">
	              <i class="ion ion-stats-bars"></i>
	            </div>
	            <a href="#" class="small-box-footer">Go <i class="fa fa-arrow-circle-right"></i></a>
	          </div>
	        </div>
	       </div>
	       <div class="row">
			<h3 class="content-header">Manage Patients</h3>
			<hr>
	        <div class="col-lg-6 col-xs-6">
	          <!-- small box -->
	          <div class="small-box bg-orange">
	            <div class="inner">
	              <h3>New</h3>
	
	              <p>Register a new patient</p>
	            </div>
	            <div class="icon">
	              <i class="ion ion-bag"></i>
	            </div>
	            <a href="addPatient" class="small-box-footer">Go <i class="fa fa-arrow-circle-right"></i></a>
	          </div>
	        </div>
	        <!-- ./col -->
	        <div class="col-lg-6 col-xs-6">
	          <!-- small box -->
	          <div class="small-box bg-purple">
	            <div class="inner">
	              <h3>Edit</h3>
	
	              <p>Edit an existing patient</p>
	            </div>
	            <div class="icon">
	              <i class="ion ion-stats-bars"></i>
	            </div>
	            <a href="#" class="small-box-footer">Go <i class="fa fa-arrow-circle-right"></i></a>
	          </div>
	        </div>
	       </div>
	       <div class="row">
			<h3 class="content-header">Manage Physicians</h3>
			<hr>
	        <div class="col-lg-6 col-xs-6">
	          <!-- small box -->
	          <div class="small-box bg-navy">
	            <div class="inner">
	              <h3>New</h3>
	
	              <p>Add a new physican</p>
	            </div>
	            <div class="icon">
	              <i class="ion ion-bag"></i>
	            </div>
	            <a href="addDoctor" class="small-box-footer">Go <i class="fa fa-arrow-circle-right"></i></a>
	          </div>
	        </div>
	        <!-- ./col -->
	        <div class="col-lg-6 col-xs-6">
	          <!-- small box -->
	          <div class="small-box bg-red">
	            <div class="inner">
	              <h3>Edit</h3>
	
	              <p>Edit an existing patient</p>
	            </div>
	            <div class="icon">
	              <i class="ion ion-stats-bars"></i>
	            </div>
	            <a href="#" class="small-box-footer">Go <i class="fa fa-arrow-circle-right"></i></a>
	          </div>
	      </div>
	      </div>
        </div>
       </div>

</section>
<a href="addPatient">
<button>Register new patient</button>
</a>
<a href="addDoctor">
<button>Register new physician</button>
</a>

<div class="container">
<h2>Currently registered patients:</h2>
<table class="table table-striped">
		<tr>
			<td></td><td>NAME</td><td>DOB</td><td>Phone</td><td>Email</td><td>Address</td>
		</tr>
		<c:forEach items="${patients}" var="patient">
			<tr>
			<td>
				<button type="button" class="btn btn-primary">Edit</button>
				<button type="button" class="btn btn-danger">Delete</button>
			</td>
			<td><c:out value="${patient.firstName}"/> <c:out value="${patient.middleName}"/> <c:out value="${patient.lastName}"/></td>
			<td><c:out value="${patient.dob}"/></td>
			<td><c:out value="${patient.phoneNumber}"/></td>
			<td><c:out value="${patient.emailAddress}"/></td>
			<td><c:out value="${patient.streetAddress}"/> <c:out value="${patient.city}"/> <c:out value="${patient.state}"/> <c:out value="${patient.country}"/></td>
		<!--  
			<td><a href="<c:url value='/edit-${employee.ssn}-employee' />">${employee.ssn}</a></td>
			<td><a href="<c:url value='/delete-${employee.ssn}-employee' />">delete</a></td>
		-->
			</tr>
		</c:forEach>
	</table>
</div>

</body>
</html>