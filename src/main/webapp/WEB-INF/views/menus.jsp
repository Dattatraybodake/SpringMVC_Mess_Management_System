<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
<div class="container-fluid">
	<!-- NAVBAR -->
			<nav class="navbar navbar-expand-xl navbar-togglable fixed-top bg-white mb-5">
			<div class="container">
			
				<!-- Navbar brand (mobile) -->
				<a class="navbar-brand d-lg-none" href="#">Mess Store Management</a>

				<!-- Navbar toggler -->
				<button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<!-- Navbar collapse -->
				<div class="navbar-collapse collapse fw-medium" id="navbarCollapse" >
					<ul class="navbar-nav">
				
						<li class="nav-item"><a class="nav-link text-black " href="about">About Us</a></li>
						<li class="nav-item"><a class="nav-link text-black" href="menus">Products</a></li>
						<li class="nav-item"><a class="nav-link text-black" href="#">Services</a></li>
						<li class="nav-item"><a class="nav-link text-black" href="#">Tiffin Service</a>	
					</ul>

					<!-- Navbar brand -->
					<a class="navbar-brand d-none d-lg-flex mx-lg-auto fs-1" href="home"> Mess Store Management </a>

					<!-- Navbar nav -->
					<ul class="navbar-nav text-black">
						<li class="nav-item text-black"><a class="nav-link text-black" href="reg">Registration</a>
						</li>
						<li class="nav-item"><a class="nav-link text-black" href="log">Sign In</a></li>
						<li class="nav-item"><a class="nav-link text-black" href="#">Join us!</a>
						<li class="nav-item"><a class="nav-link text-black" href="contact">Contact</a>						
						</li>
					</ul>
					<button type="button" class="btn btn-success btn-lg fst-italic" style="background-image: linear-gradient(to right, #190A05  51%, #870000  100%)">Order Now</button>
				</div>
			</div>
		</nav>
		
	<div class="heading_container heading_center mt-5">
        <h2>
          Our Menu
        </h2>
      </div>

      <ul class="filters_menu mt-5">
        <li class="active" data-filter="*">All</li>
        <li data-filter=".burger">Vegeterian</li>
        <li data-filter=".pizza">Non Vegeterian</li>
        <li data-filter=".pasta">Snacks</li>
        <li data-filter=".fries">Spacial Thalis</li>
      </ul>
      
      <!-- FOOTER -->
		    <jsp:include page="footer.jsp"></jsp:include>
		<!--  FOOTER END -->
</div>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
</body>
</html>