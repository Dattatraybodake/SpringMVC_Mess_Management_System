<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="resources/images/hotel plate.ico" type="image/x-icon">
<title>Add New Employee</title>
<!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<body>
	<jsp:include page="adminDashboard.jsp"></jsp:include>
	<div Class="container-fluid">
	<div class="col-md-10 mx-auto col-lg-5 mt-5">
		<h1 class="display-4 lh-1 text-body-emphasis mb-3">Register Employee</h1>
		<form class="p-4 p-md-5 border rounded-3 bg-body-tertiary" name='frm' id='frm' action="saveemployee" method='POST' onsubmit="return validateForm()">

			<div class="form-floating mb-3">
				<input type="text" class="form-control" id="employeename" name='employeename' placeholder="employeename"> <label for="employeename">Employee Name</label>
				<div class="invalid-feedback">Name should contain only alphabets without spaces, digits, or symbols</div>
			</div>

			<div class="form-floating mb-3">
				<input type="text" class="form-control" id="education" name='education' placeholder="Enter Education"> <label for="education">Education</label>
				<div class="invalid-feedback">Enter a valid Gmail or Google email address.</div>
			</div>

			<div class="form-floating mb-3">
				<input type="number" class="form-control" id="age" name='age' placeholder="Enter age"> <label for="Age">Age</label>
				<div class="invalid-feedback">Contact should contain only numbers.</div>
			</div>

			<div class="form-floating mb-3">
				<input type="text" class="form-control" id="employeecontact" name='employeecontact' placeholder="Mobile Number">
				<label for="employeecontact">Mobile Number</label>
				<div class="invalid-feedback">Contact should contain only numbers.</div>
			</div>

			<div class="form-floating mb-3">
				<input type="email" class="form-control" id="email" name='email' placeholder="Email"> <label for="email">Email</label>
				<div class="invalid-feedback">Contact should contain only numbers.</div>
			</div>

			<div class="form-floating mb-3">
				<input type="text" class="form-control" id="address" name='address' placeholder="Address"> <label for="address">Address</label>
				<div class="invalid-feedback">Address is required and should not contain spaces.</div>
			</div>

			<div class="input-group mt-2 mb-2">
				<div class="input-group-text">
				<input class="form-check-input mt-0" type="radio" aria-label="Radio button for following text input">
				</div>
				<input type="text" class="form-control" aria-label="Text input with radio button" value="Agree to terms and conditions">
			</div>

			<button class="w-100 btn btn-lg btn-primary" type="submit" id='s' name='s' value="Register Employee">Add New Employee</button>
			${msg}
		</form>
	</div>
		<!--Form End-->		
		<!-- FOOTER -->
		    <jsp:include page="footer.jsp"></jsp:include>
		<!--  FOOTER END -->
	</div>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
	
</body>
</html>