<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<!-- Icon Font Stylesheet -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Add this line to link to Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet" />

<!-- Add Bootstrap Icons for Phone Icon -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">


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

		
		<div class="container-fluid contact">
            
                    <div class="row g-4 mt-5">
                        <div class="col-12">
                            <div class="text-center mx-auto" style="max-width: 700px;">
                                <h1 class="text-primary">Get in touch</h1>
                                <p class="mb-4">The contact form is currently inactive.</p>
                            </div>
                        </div>
                        <div class="col-lg-12" id="map">
                            <div class="h-100 rounded"> 
                                <iframe class="rounded w-100" style="height: 400px;" src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d133471.5899650545!2d73.85906366519563!3d18.542557499836434!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1742277299089!5m2!1sen!2sin" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                        </div>
                        <div class="col-lg-7">
                            <form action="" class="">
                                <input type="text" class="w-100 form-control border-0 py-3 mb-4" placeholder="Your Name">
                                <input type="email" class="w-100 form-control border-0 py-3 mb-4" placeholder="Enter Your Email">
                                <textarea class="w-100 form-control border-0 mb-4" rows="5" cols="10" placeholder="Your Message"></textarea>
                                <button class="w-100 btn form-control border-secondary py-3 bg-white text-primary " type="submit">Submit</button>
                            </form>
                        </div>
                        <div class="col-lg-5">
                            <div class="d-flex p-4 rounded mb-4 bg-white">
                                <i class="fas fa-map-marker-alt fa-2x text-primary me-4"></i>
                                <div>
                                    <h4>Address</h4>
									<p class="mb-2">Near ACME Corporation Shop.No.1024, Above
										Shree Sweets, Swargate, Pune City P:(123)-456-7890</p>
								</div>
                            </div>
                            <div class="d-flex p-4 rounded mb-4 bg-white">
                                <i class="fas fa-envelope fa-2x text-primary me-4"></i>
                                <div>
                                    <h4>Mail Us</h4>
									<a class="nav-link text-black" href="mailto:dattatraynb07@gmail.com?subject=Inquiry&body=Hello,%20I%20would%20like%20to%20ask%20about...">info@messmanagement.in</a>                                
									</div>
                            </div>
                            
                            <div class="d-flex p-4 rounded bg-white">
								<i class="fa-brands fa-whatsapp fa-2x text-primary me-4" style="color: #63E6BE;"></i>								
								<div>
									<h4>Whatsapp Me</h4>
									<a class="nav-link text-black"
										href="https://wa.me/+918975822054?text=Hi!%20I%20need%20assistance."
										target="_blank"> 8975822054 </a>
								</div>
							</div>
							
							<div class="d-flex p-4 rounded bg-white">
                                <i class="fa fa-mobile-alt fa-2x text-primary me-4"></i>
								<div>
									<h4>Telephone</h4>
									<a class="nav-link text-black"
										href="tel:+918975822054"
										target="_blank"> 8975822054 </a>
								</div>
							</div>
                        </div>
                    </div>
               
            
        </div>
        <!-- Contact End -->
        
        <!-- FOOTER -->	
		    <jsp:include page="footer.jsp"></jsp:include>
	<!--  FOOTER END -->
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
</body>
</html>