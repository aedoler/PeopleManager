<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Admin LTE -->
<link rel="stylesheet" href="resources/static/adminlte/css/AdminLTE.css">
<link rel="stylesheet" href="resources/static/adminlte/css/skins/_all-skins.css">
<script src="resources/static/adminlte/js/adminlte.js"></script>
<link rel="stylesheet" href="resources/static/styles.css">
<link rel="stylesheet" href="resources/static/adminlte/css/alt/AdminLTE-bootstrap-social.css">
<link rel="stylesheet" href="resources/static/adminlte/css/alt/AdminLTE-select2.css">
<link rel="stylesheet" href="resources/static/adminlte/css/alt/AdminLTE-fullcalendar.css">
<script src="resources/static/adminlte/plugins/jQueryUI/jquery-ui.js"></script>
<script src="resources/static/adminlte/plugins/input-mask/jquery.inputmask.js"></script>
<script src="resources/static/adminlte/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="skin-blue layout-top-nav">
  <header class="main-header">
    <nav class="navbar navbar-static-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <a href="../../index2.html" class="navbar-brand"><b>Admin</b>LTE</a>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
            <i class="fa fa-bars"></i>
          </button>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Appointments <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#">Schedule new</a></li>
                <li><a href="#">Edit</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Patients <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="addPatient">Add new</a></li>
                <li><a href="#">Edit</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Physicians <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="addDoctor">Add new</a></li>
                <li><a href="#">Edit</a></li>
              </ul>
            </li>
          </ul>
        </div>
        <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
    </nav>
  </header>	
<section class="content">
	<div class="container">
			<div class="row index-row">
			<h3 class="content-header">${welcome}</h3>
			<hr>
	        <div class="col-lg-4 col-xs-12">
	          <!-- small box -->
	          <div class="small-box bg-navy">
	            <div class="inner">
	              <h3>Appointment</h3>
	
	              <p>Schedule new appointment</p>
	            </div>
	            <div class="icon">
	              <i class="ion ion-bag"></i>
	            </div>
	            <a href="#" class="small-box-footer">Go <i class="fa fa-arrow-circle-right"></i></a>
	          </div>
	        </div>
	        <!-- ./col -->
	        <div class="col-lg-4 col-xs-12">
	          <!-- small box -->
	          <div class="small-box bg-green">
	            <div class="inner">
	              <h3>Patients</h3>
	
	              <p>Register a new patient in the database</p>
	            </div>
	            <div class="icon">
	              <i class="ion ion-stats-bars"></i>
	            </div>
	            <a href="addPatient" class="small-box-footer">Go <i class="fa fa-arrow-circle-right"></i></a>
	          </div>
	        </div>
	        	        <div class="col-lg-4 col-xs-12">
	          <!-- small box -->
	          <div class="small-box bg-purple">
	            <div class="inner">
	              <h3>Physicians</h3>
	
	              <p>Register a new physician in the database</p>
	            </div>
	            <div class="icon">
	              <i class="ion ion-stats-bars"></i>
	            </div>
	            <a href="addDoctor" class="small-box-footer">Go <i class="fa fa-arrow-circle-right"></i></a>
	          </div>
	        </div>
	       </div>
       </div>

</section>

<div class="container">
<h2>Upcoming Appointments:</h2>
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