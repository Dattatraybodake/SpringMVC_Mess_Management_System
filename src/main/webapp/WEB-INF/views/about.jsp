<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="resources/images/hotel plate.ico" type="image/x-icon">
<title>About us</title>

<!-- Icon Font Stylesheet -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Add this line to link to Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>

<link href="resources/css/style.css" rel="stylesheet" />


<style>
.about-section{
margin-top:200px;
}
.testimonial section
{
border: 1px solid black;
}
</style>
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
		
	
		<!-- About-section -->
		<div class="about-section bg-light py-5 mt-5">
			<div class="container">
				<div class="row align-items-center gy-4">
					<div class="col-12 col-md-6 col-lg-4">
						<div class="image-block text-center">
							<img src="images/speakers/featured-speaker.jpg"
								alt="Owner of Mess" class="img-fluid rounded shadow">
						</div>
					</div>
					<div class="col-12 col-md-6 col-lg-8">
						<div class="content-block">
							<h2 class="fw-bold mb-3">
								About The <span class="text-primary">Mess Management</span>
							</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Doloribus, delectus.</p>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Quasi, voluptate!</p>
							<div class="d-flex flex-wrap gap-2 mt-3">
								<a href="#" class="btn btn-primary">View Menus</a> <a href="#"
									class="btn btn-outline-secondary">Read more</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Testimonials Section -->
		<div class="testimonial-section py-3 my-3">
			<div class="container-fluid">
				<div class="text-center mb-3">
					<h3>
						What People <span class="text-primary">Say?</span>
					</h3>
					<p class="text-muted">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Deleniti aliquid vero harum rerum voluptates,
						ab, ullam.</p>
				</div>
				<div class="row gy-4">

					<!-- Testimonial Item -->
					<div class="col-md-6 col-lg-4">
						<div class="testimonial-item bg-light p-3 border rounded shadow-sm h-100">
							<div class="comment mb-3 ">
								<p class="mb-0">"Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Reiciendis voluptate modi sunt placeat..."</p>
							</div>
							<div class="person d-flex align-items-center mt-3">
								<img src="images/person.png" alt="person"
									class="img-fluid rounded-circle me-3"
									style="width: 50px; height: 50px;">
								<div>
									<div class="fw-semibold">Abhijit Jadhva</div>
									<div class="text-muted small">Kothrud, Pune</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Duplicate structure for other testimonials -->
					<div class="col-md-6 col-lg-4">
						<div class="testimonial-item bg-light p-3 border rounded shadow-sm h-100">
							<div class="comment mb-3">
								<p class="mb-0">"Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Reiciendis voluptate modi sunt placeat..."</p>
							</div>
							<div class="person d-flex align-items-center mt-3">
								<img src="images/person.png" alt="person"
									class="img-fluid rounded-circle me-3"
									style="width: 50px; height: 50px;">
								<div>
									<div class="fw-semibold">Vedant Patil</div>
									<div class="text-muted small">Talegoan, Pune</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-md-6 col-lg-4">
						<div class="testimonial-item bg-light p-3 border rounded shadow-sm h-100">
							<div class="comment mb-3">
								<p class="mb-0">"Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Reiciendis voluptate modi sunt placeat..."</p>
							</div>
							<div class="person d-flex align-items-center mt-3">
								<img src="images/person.png" alt="person"
									class="img-fluid rounded-circle me-3"
									style="width: 50px; height: 50px;">
								<div>
									<div class="fw-semibold">Sunil kale</div>
									<div class="text-muted small">Dighi, Pune</div>
								</div>
							</div>
						</div>
					</div>	
				</div>
				
				<div class="row gx-4 gy-4 mt-2">
					<!-- Testimonial Item -->
					<div class="col-md-6 col-lg-4">
						<div class="testimonial-item bg-light p-3 border rounded shadow-sm h-100">
							<div class="comment mb-3">
								<p class="mb-0">"Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Reiciendis voluptate modi sunt placeat..."</p>
							</div>
							<div class="person d-flex align-items-center mt-3">
								<img src="images/person.png" alt="person"
									class="img-fluid rounded-circle me-3"
									style="width: 50px; height: 50px;">
								<div>
									<div class="fw-semibold">Abhijit Raje</div>
									<div class="text-muted small">Bhosari, Pune</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Duplicate structure for other testimonials -->
					<div class="col-md-6 col-lg-4">
						<div class="testimonial-item bg-light p-3 border rounded shadow-sm h-100">
							<div class="comment mb-3">
								<p class="mb-0">"Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Reiciendis voluptate modi sunt placeat..."</p>
							</div>
							<div class="person d-flex align-items-center mt-3">
								<img src="images/person.png" alt="person"
									class="img-fluid rounded-circle me-3"
									style="width: 50px; height: 50px;">
								<div>
									<div class="fw-semibold">Shriraj Pawar</div>
									<div class="text-muted small">Shivaji Nagar,Pune</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-md-6 col-lg-4">
						<div class="testimonial-item bg-light p-3 border rounded shadow-sm h-100">
							<div class="comment mb-3">
								<p class="mb-0">"Lorem ipsum dolor sit amet, consectetur
									adipisicing elit. Reiciendis voluptate modi sunt placeat..."</p>
							</div>
							<div class="person d-flex align-items-center mt-3">
								<img src="images/person.png" alt="person"
									class="img-fluid rounded-circle me-3"
									style="width: 50px; height: 50px;">
								<div>
									<div class="fw-semibold">Chetan Yadav</div>
									<div class="text-muted small">Magarpatta City</div>
								</div>
							</div>
						</div>
					</div>

					
				</div>
			</div>
		</div>

		<!-- FOOTER -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!--  FOOTER END -->
	</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.min.js" integrity="sha384-RuyvpeZCxMJCqVUGFI0Do1mQrods/hhxYlcVfGPOfQtPJh0JCw12tUAZ/Mv10S7D" crossorigin="anonymous"></script>

</body>
</html>