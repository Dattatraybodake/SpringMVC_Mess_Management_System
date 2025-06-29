<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="resources/images/hotel plate.ico" type="image/x-icon">
<title>New Customer</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<jsp:include page="employeeDashboard.jsp"></jsp:include>
	<div class="container-fluid mt-5">
		<!-- Form Start -->
		<div class="col-md-12 mx-auto col-lg-5">
			<h1 class="display-4 lh-1 text-body-emphasis mb-3">New Customer</h1>

			<form class="p-4 p-md-5 border rounded-3 bg-body-tertiary" name='frm' id='frm' action="savecustom" method='POST' onsubmit="return validateForm()">

				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="customername" name='customername' placeholder="customername"> <label for="customername">Name</label>
					<div class="invalid-feedback">Name should contain only alphabets without spaces, digits, or symbols</div>
				</div>

				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="address" name='address' placeholder="Address"> <label for="address">Address</label>
					<div class="invalid-feedback">Address is required and should not contain spaces.</div>
				</div>

				<div class="form-floating mb-3">
					<input type="tel" class="form-control" id="customercontact" name='customercontact' placeholder="customercontact"> <label for="customercontact">Mobile Number</label>
					<div class="invalid-feedback">Contact should contain only numbers.</div>
				</div>

				<div class="form-floating mb-3">
					<input type="email" class="form-control" id="email" name='email' placeholder="name@example.com"> <label for="email">Email</label>
					<div class="invalid-feedback">Enter a valid G mail or Google email address.</div>
				</div>

				<div class="input-group mt-2">
					<div class="input-group-text">
						<input class="form-check-input mt-0" type="radio" aria-label="Radio button for following text input">
					</div>
					<input type="text" class="form-control" aria-label="Text input with radio button" value="Agree to terms and conditions">
				</div>

				<input class="form-control mb-2 mt-2 btn-primary" type="submit" id="s" name="s" value="Add New Customer"> ${msg}
			</form>
		</div>

		<!-- Form Section END -->
		<!-- FOOTER -->
		    <jsp:include page="footer.jsp"></jsp:include>
		<!--  FOOTER END -->
			 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
	</div>
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
	
</body>
</html>