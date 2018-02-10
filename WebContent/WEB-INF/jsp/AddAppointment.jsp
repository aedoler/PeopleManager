<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Schedule New Appointment</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Admin LTE -->
<link rel="stylesheet" href="resources/static/adminlte/css/AdminLTE.css">
<script src="resources/static/adminlte/js/adminlte.js"></script>
<link rel="stylesheet" href="resources/static/styles.css">


<link type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.12/themes/ui-lightness/jquery-ui.css" rel="stylesheet" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.12/jquery-ui.js"></script>

        <script type="text/javascript">
            $(function()
            {
                $('#date-pick').datepicker({
                    showOn: "button",
                    dateFormat: "dd/mm/yy",
                    disabled: true,
                    buttonImage: "calendar.png",
                    buttonImageOnly: true
                });
            });
        </script>

<body>

<section class="content">
	<div class="row">
		<div class="col-md-offset-2 col-lg-offset-2 col-md-8 col-lg-8">
		    <div style="padding:1%" class="box box-primary">
		        


		<form role="form" action="appointmentFormSuccess" method="POST">
		<form:errors path="*"/>
		   <h4>Schedule New Appointment</h4>
			<div class="box-body">
		  <div class="form-group row">
		    <label class="col-md-3 col-sm-3" for="patient">Patient:</label>
		    <div class="col-md-9 col-sm-9">
		    <select class="form-control" id="patient" placeholder="Select Patient" name="patient">
		    		<c:forEach items="${patients}" var="patient">
		    			<option value="${patient.id}"><c:out value="${patient.lastName}"/>, <c:out value="${patient.firstName}"/></option>
		    		</c:forEach>
		    </select>
		    </div>
		  </div>
		  <div class="form-group row">
		    <label class="col-md-3 col-sm-3" for="doctor">Physician:</label>
		    <div class="col-md-9 col-sm-9">
		    <select type="text" class="form-control" id="doctor" placeholder="Select Physician" name="doctor">
		    		<c:forEach items="${doctors}" var="doctor">
		    			<option value="${doctor.id}"><c:out value="${doctor.lastName}"/>, <c:out value="${doctor.firstName}"/></option>
		    		</c:forEach>
		    </select>
		    </div>
		  </div>
		  <div class="form-group row">
		    <div class="input-group date"></div>
		    <label class="col-md-3 col-sm-3" for="date">Date</label>
		    <div class="col-md-9 col-sm-9">
		   <input name="date" type="text" id="date-pick" size="10" maxlength="10" />
		    </div>
		    </div>
		   <div class="form-group row">
		    <div class="input-group date"></div>
		    <label class="col-md-3 col-sm-3" for="dob">Time</label>
		    <div class="col-md-9 col-sm-9">
		    <input type="text" class="form-control pull-right" id="time" placeholder="Select a time" name="time">
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
        <script type="text/javascript">
            $(function()
            {
                $('#date-pick').datepicker({
                    showOn: "button",
                    dateFormat: "dd/mm/yy",
                    disabled: true,
                    buttonImage: "calendar.png",
                    buttonImageOnly: true
                });
            });
        </script>
</body>

</html>