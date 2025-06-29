<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join Us</title>
<!-- Bootstrap icon Link -->

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
.book_section {
	margin-top: 100px;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<!-- NAVBAR -->
		<nav class="navbar navbar-expand-xl navbar-togglable fixed-top bg-white">
			<div class="container">

				<!-- Navbar brand (mobile) -->
				<a class="navbar-brand d-lg-none" href="home">Mess Store
					Management</a>

				<!-- Navbar toggler -->
				<button class="navbar-toggler collapsed" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<!-- Navbar collapse -->
				<div class="navbar-collapse collapse fw-medium" id="navbarCollapse">
					<ul class="navbar-nav">

						<li class="nav-item"><a class="nav-link text-black " href="#">About
								Us</a></li>
						<li class="nav-item"><a class="nav-link text-black"
							href="#menus">Products</a></li>
						<li class="nav-item"><a class="nav-link text-black"
							href="#services">Services</a></li>
						<li class="nav-item"><a class="nav-link text-black"
							href="tifin">Tiffin Service</a>
					</ul>

					<!-- Navbar brand -->
					<a class="navbar-brand d-none d-lg-flex mx-lg-auto fs-1"
						href="home"> Mess Store Management </a>

					
					<!-- Navbar nav -->
					<ul class="navbar-nav text-black">
						<li class="nav-item text-black"><a
							class="nav-link text-black" href="reg">Registration</a></li>
						<li class="nav-item"><a class="nav-link text-black"
							href="log">Sign In</a></li>
						<li class="nav-item"><a class="nav-link text-black"
							href="reports">Join us!</a>
						<li class="nav-item"><a class="nav-link text-black"
							href="contact">Contact</a></li>
					</ul>
					<button type="button" class="btn btn-success btn-lg fst-italic"
						id="order-now"
						style="background-image: linear-gradient(to right, #190A05 51%, #870000 100%)">Order
						Now</button>
				</div>
			</div>
		</nav>
		<!-- NAVBAR END -->
		
		<!-- Booking Section -->
		<section class="book_section layout_padding">
			<div class="container">
				<div class="heading_container text-center mb-4">
					<h2 class="section_title">Reserve a Table</h2>
				</div>
				<div class="row">
					<div class="col-md-6">
						<div class="form_container">
							<form action="#" method="post">
								<div class="form-group mb-3">
									<input type="text" class="form-control" name="name"
										placeholder="Full Name" required>
								</div>
								<div class="form-group mb-3">
									<input type="tel" class="form-control" name="phone"
										placeholder="Phone Number" required>
								</div>
								<div class="form-group mb-3">
									<input type="email" class="form-control" name="email"
										placeholder="Email Address" required>
								</div>
								<div class="form-group mb-3">
									<select class="form-control" name="persons" required>
										<option value="" disabled selected>Number of Guests</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5+</option>
									</select>
								</div>
								<div class="form-group mb-4">
									<input type="date" class="form-control" name="date" required>
								</div>
								<div class="btn_box">
									<button type="submit" class="btn btn-primary w-100">Book
										Now</button>
								</div>
							</form>
						</div>
					</div>
					<div class="col-md-6">
						<div class="map_container">
							<div class="col-lg-12">
								<div class="h-100 rounded">
									<iframe class="rounded w-100" style="height: 400px;" src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d133471.5899650545!2d73.85906366519563!3d18.542557499836434!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1742277299089!5m2!1sen!2sin" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Booking Section -->

		<!-- FOOTER -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- FOOTER END -->

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>

</body>
</html>