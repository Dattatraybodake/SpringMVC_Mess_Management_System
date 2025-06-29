<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="resources/images/hotel plate.ico" type="image/x-icon">
<title>Register Administrator</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet" />

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css"/>
</head>
<body>
	<div class="container-fluid">
		<!-- NAVBAR -->
		<nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top shadow-sm">
			<div class="container">
				<a class="navbar-brand d-lg-none" href="#">Mess Store Management</a>

				<!-- Navbar Toggler -->
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<!-- Navbar Collapse -->
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ul class="navbar-nav me-auto">
						<li class="nav-item"><a class="nav-link text-black"
							href="about">About Us</a></li>
						<li class="nav-item"><a class="nav-link text-black"
							href="menus">Products</a></li>
						<li class="nav-item"><a class="nav-link text-black" href="#">Services</a></li>
						<li class="nav-item"><a class="nav-link text-black"
							href="tifin">Tiffin Service</a></li>
					</ul>

					<!-- Navbar brand -->
					<a class="navbar-brand d-none d-lg-flex mx-lg-auto fs-1"
						href="home"> Mess Store Management </a>

					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link text-black"
							href="reg">Registration</a></li>
						<li class="nav-item"><a class="nav-link text-black"
							href="log">Sign In</a></li>
						<li class="nav-item"><a class="nav-link text-black"
							href="joinus">Join us!</a></li>
						<li class="nav-item"><a class="nav-link text-black"
							href="contact">Contact</a></li>
					</ul>

					<button type="button" class="btn btn-success btn-lg"
						style="background-image: linear-gradient(to right, #190A05 51%, #870000 100%)">
						Order Now</button>
				</div>
			</div>
		</nav>

		<!-- REGISTER FORM -->
		<div class="container-fluid mt-5">
			<div class="row justify-content-center pb-2">
				<div class="col-12 col-sm-10 col-md-8 col-lg-6 col-xl-4">
					<h1 class="section_title mb-3 mt-5">Register Form</h1>

					<form class="p-4 border rounded-3 shadow" name="frm" id="frm"
						action="save" method="POST">
						<p class="Warning text-danger">${msg}</p>

						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="name" name="name"
								placeholder="Name" required> <label for="name">Name</label>
						</div>

						<div class="form-floating mb-3">
							<input type="email" class="form-control" id="email" name="email"
								placeholder="name@example.com" required> <label
								for="email">Email</label>
						</div>

						<div class="form-floating mb-3">
							<input type="tel" class="form-control" id="contact"
								name="contact" placeholder="Contact" required> <label
								for="contact">Contact</label>
						</div>

						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="address"
								name="address" placeholder="Address" required> <label
								for="address">Address</label>
						</div>

						<div class="form-floating mb-3">
							<input type="password" class="form-control" id="password"
								name="password" placeholder="Password" required> <label
								for="password">Password</label>
						</div>

						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="logintype"
								name="logintype" placeholder="Login Type" required> <label
								for="logintype">Login Type</label>
						</div>

						<div class="form-check mb-3">
							<input type="checkbox" class="form-check-input" id="remember"
								value="remember-me"> <label class="form-check-label"
								for="remember">Remember me</label>
						</div>

						<button class="btn btn-lg mb-2 w-100" id="sign" type="submit">Sign Up</button>
						<button class="btn btn-lg w-100 mb-2" id="reset" type="reset">Reset</button>
						<hr>
						<a class="btn btn-lg btn-outline-primary w-100" href="log">Sign In Here</a>
					</form>
				</div>
			</div>
		</div>

		<!-- FOOTER -->
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

	<!-- Bootstrap JS -->
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
</body>
</html>
