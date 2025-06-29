<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="resources/images/hotel plate.ico" type="image/x-icon">
<title>Login Administrator</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!--owl slider Style Sheet -->
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

<!-- nice select  -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" />

<!-- font awesome style -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css"/>

<!-- Custom styles for this template -->
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<div class="container-fluid">

		<!-- NAVBAR -->
		<nav
			class="navbar navbar-expand-lg navbar-light bg-white fixed-top shadow-sm">
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
		
		<!--NAVBAR END -->

		<!-- FORM -->
		<div class="container-fluid mt-5">
			<div class="row justify-content-center">
				<div class="col-12 col-sm-10 col-md-8 col-lg-6 col-xl-4">
					<h1 class="section_title mb-3 mt-5">Login Form</h1>

					<form class="p-4 border rounded-3 shadow" name='frm' method='POST'
						action='dologin'>
						<p class="Warning text-danger">${msg}</p>

						<div class="form-floating mb-3">
							<input type="email" class="form-control" id="floatingInput"
								name='email' placeholder="name@example.com"> <label
								for="floatingInput">Email address</label>
						</div>

						<div class="form-floating mb-3">
							<input type="password" class="form-control" id="password"
								name='password' placeholder="Password"> <label
								for="password">Password</label>
						</div>

						<div class="form-check mb-3">
							<input type="checkbox" class="form-check-input" id="showPassword"
								onclick="viewPassword()"> <label
								class="form-check-label" for="showPassword">Show
								Password</label>
						</div>

						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="floatingtype"
								name='logintype' placeholder="Login Type"> <label
								for="floatingtype">Login Type</label>
						</div>

						<div class="form-check mb-3">
							<input type="checkbox" class="form-check-input" id="rememberMe"
								value="remember-me"> <label class="form-check-label"
								for="rememberMe">Remember me</label>
						</div>

						<button class="w-100 btn btn-lg mb-2" type="submit" id="sign"
							name='login'>Sign In</button>
						<button class="w-100 btn btn-lg btn-outline-secondary mb-2"
							id="reset" type="reset">Reset</button>

						<a href="reg" class="w-100 btn btn-lg btn-outline-primary">Sign
							Up</a>
					</form>
				</div>
			</div>
		</div>
		<!-- FORM END -->


		<!-- FOOTER -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!--  FOOTER END -->

	</div>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
</body>
</html>