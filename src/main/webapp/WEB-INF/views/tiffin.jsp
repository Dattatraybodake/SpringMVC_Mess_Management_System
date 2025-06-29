<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Include Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Custom styles for this template -->
  <link href="resources/css/style.css" rel="stylesheet" />

<style>
#frmheading {
	margin-top: 200px;
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

						<li class="nav-item"><a class="nav-link text-black " href="about">About
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

					<!-- Bootstrap icon Link -->
					<link rel="stylesheet"
						href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

					<!-- Navbar nav -->
					<ul class="navbar-nav text-black">
						<li class="nav-item text-black"><a
							class="nav-link text-black" href="reg">Registration</a></li>
						<li class="nav-item"><a class="nav-link text-black"
							href="log">Sign In</a></li>
						<li class="nav-item"><a class="nav-link text-black"
							href="joinus">Join us!</a>
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
		<!-- Navbar END -->

		<!-- Form -->

		<div class="container-fluid mt-5">
			<div class="row justify-content-center">
				<div class="col-12 col-sm-10 col-md-8 col-lg-6 col-xl-4">
					<h1 class="display-5 text-center text-body-emphasis mb-3 mt-5">Tiffin
						Service</h1>

					<form class="p-4 border rounded-3 shadow"
						name='frm' method='POST' action='dologin'>
						<p class="Warning text-danger">${msg}</p>
						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">Name
								of Customer is: </label> <input class="form-control"
								id="exampleFormControlInput1" type='text'
								placeholder="Enter customer name">
						</div>
						<div class="mb-3">
							<label for="exampleFormControlInput1" class="form-label">Mobile
								Number of Customer is: </label> <input class="form-control"
								id="exampleFormControlInput2" type='text'
								placeholder="Enter customer name">
						</div>
						<div class="mb-3">
							<label for="exampleFormControlInput2" class="form-label">Email
								address</label> <input type="email" class="form-control"
								id="exampleFormControlInput1" placeholder="name@example.com">
						</div>
						<div class="mb-3">
							<label for="exampleFormControlTextarea3" class="form-label">Address</label>
							<textarea class="form-control" id="exampleFormControlTextarea1"
								rows="3"></textarea>
						</div>
						<select class="form-select mb-3"
							aria-label="Default select example">
							<option selected>Open this select menu</option>
							<option value="1">One Time</option>
							<option value="2">Two Time</option>
							<option value="3">Three Time with</option>
						</select>
						<div class="col-auto">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>


					</form>
				</div>
			</div>
		</div>



		<!-- FOOTER -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!--  FOOTER END -->
	</div>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
	
</body>
</html>