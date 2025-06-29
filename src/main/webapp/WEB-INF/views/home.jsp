<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="resources/images/hotel plate.ico" type="image/x-icon">
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="resources/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<c:url value="/resources/js/validation.js" /> "></script>
<script type="text/javascript" src="<c:url value="/resources/js/script.js" /> "></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
   
  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
  <!-- nice select  -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css"/>
  <!-- font awesome style -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css"/>

  <!-- Custom styles for this template -->
  <link href="resources/css/style.css" rel="stylesheet" />
  
  <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- Owl Carousel JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  
  
  <!-- Bootstrap JS (required for toast functionality) -->

<!-- This is used for Toast Notification -->
<script>
  window.addEventListener('DOMContentLoaded', () => {
    const toastElement = document.getElementById('liveToast');
    const toast = new bootstrap.Toast(toastElement);

    // Automatically show toast after 10 seconds
    setTimeout(() => {
      toast.show();
    }, 10000);

    // Optional: Button to manually show toast
    //document.getElementById('liveToastBtn').addEventListener('click', () => {
    // toast.show();
    //});
  });
</script>
  
</head>

<body>
	<!-- MAIN CONTAINER -->
	<div class="container-fluid">
	<!-- NAVBAR -->
		<nav class="navbar navbar-expand-xl navbar-togglable fixed-top bg-white mb-5">
			<div class="container">
			
				<!-- Navbar brand (mobile) -->
				<a class="navbar-brand d-lg-none" href="home">Mess Store Management</a>

				<!-- Navbar toggler -->
				<button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<!-- Navbar collapse -->
				<div class="navbar-collapse collapse fw-medium" id="navbarCollapse" >
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link text-black " href="about">About Us</a></li>
						<li class="nav-item"><a class="nav-link text-black" href="error">Products</a></li>
						<li class="nav-item"><a class="nav-link text-black" href="error">Services</a></li>
						<li class="nav-item"><a class="nav-link text-black" href="tifin">Tiffin Service</a>	
					</ul>

					<!-- Navbar brand -->
					<a class="navbar-brand d-none d-lg-flex mx-lg-auto fs-1" href="home"> Mess Store Management </a>
					
					<!-- Bootstrap icon Link -->
					<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

					<!-- Navbar nav -->
					<ul class="navbar-nav text-black">
						<li class="nav-item text-black"><a class="nav-link text-black" href="reg">Registration</a>
						</li>
						<li class="nav-item"><a class="nav-link text-black" href="log">Sign In</a></li>
						<li class="nav-item"><a class="nav-link text-black" href="joinus">Join us!</a>
						<li class="nav-item"><a class="nav-link text-black" href="contact">Contact</a>						
						</li>
					</ul>
					<button type="button" class="btn btn-success btn-lg fst-italic" id="order-now" style="background-image: linear-gradient(to right, #190A05  51%, #870000  100%)" >Order Now</button>	
				</div>
			</div>
		</nav>
	
	<!-- WELCOME -->
		<div id="carouselExampleAutoplaying" class="carousel slide mt-5" data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="resources/images/1.jpg" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<!--  <h5>First slide label</h5>
						<p>Some representative placeholder content for the first slide.</p>-->
					</div>
				</div>
				<div class="carousel-item">
					<img src="resources/images/2.jpg" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<!--  <h5>Second slide label</h5>
						<p>Some representative placeholder content for the second slide.</p>-->
					</div>

				</div>
				<div class="carousel-item">
					<img src="resources/images/3.jpg" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<!-- <h5>Third slide label</h5>
						<p>Some representative placeholder content for the third slide.</p>  -->
					</div>
				</div>
				<div class="carousel-item">
					<img src="resources/images/4.jpg" class="d-block w-100" alt="...">
					<div class="carousel-caption d-none d-md-block">
						<!--  <h5>Fourth slide label</h5>
						<p>Some representative placeholder content for the Fourth slide.</p> -->
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	
	<!-- Curesol 2 -->
		<div class="container-fluid">
			<h1 class="mb-4 text-center display-4">Products</h1>
			<h2 class="mb-4 text-center display-6">BreakFast</h2>
			<div class="row">
				<div class="owl-carousel owl-theme">
					<div class="item">
						<div class="card p-2">
							<img src="resources/images/6.jpg" class="card-img-top" alt="...">
						</div>

					</div>
					<div class="item">
						<div class="card p-2" >
							<img src="resources/images/Samosa.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Card title</h5>
							</div>
						</div>
					</div>

					<div class="item">
						<div class="card p-2">
							<img src="resources/images/Meduvada.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Card title</h5>
							</div>
						</div>
					</div>

					<div class="item">
						<div class="card p-2">
							<img src="resources/images/Idli.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Card title</h5>
							</div>
						</div>

					</div>
					<div class="item">
						<div class="card p-2">
							<img src="resources/images/Misal Pav.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Card title</h5>
							</div>
						</div>
					</div>

					<div class="item">
						<div class="card p-2">
							<img src="resources/images/Pav Bhaji.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Card title</h5>
							</div>
						</div>
					</div>

					<div class="item">
						<div class="card p-2">
							<img src="resources/images/Poha.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Card title</h5>
							</div>
						</div>
					</div>

					<div class="item">
						<div class="card p-2">
							<img src="resources/images/Uupma.jpg" class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Card title</h5>
							</div>
						</div>
					</div>
				</div>

				<h2 class="mb-4 text-center display-6">Lounch</h2>
			
				<div class="row">
					<h1>Lounch</h1>
					<div class="owl-carousel owl-theme">
						<div class="item">
							<div class="card p-2">
								<img src="resources/images/6.jpg" class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">Card title</h5>
								</div>
							</div>

						</div>
						<div class="item">
							<div class="card p-2">
								<img src="resources/images/6.jpg" class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">Card title</h5>
								</div>
							</div>
						</div>

						<div class="item">
							<div class="card p-2">
								<img src="resources/images/6.jpg" class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">Card title</h5>
								</div>
							</div>
						</div>

						<div class="item">
							<div class="card p-2">
								<img src="resources/images/6.jpg" class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">Card title</h5>
								</div>
							</div>

						</div>
						<div class="item">
							<div class="card p-2">
								<img src="resources/images/6.jpg" class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">Card title</h5>
								</div>
							</div>
						</div>

						<div class="item">
							<div class="card p-2">
								<img src="resources/images/6.jpg" class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">Card title</h5>
								</div>
							</div>
						</div>

						<div class="item">
							<div class="card p-2">
								<img src="resources/images/6.jpg" class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">Card title</h5>
								</div>
							</div>
						</div>

						<div class="item"> 
							<div class="card p-2">
								<img src="/resources/images/6.jpg" class="card-img-top"
									alt="...">
								<div class="card-body">
									<h5 class="card-title">Card title</h5>
								</div>
							</div>
						</div>
					</div>

					<div class="controls">
						<button class="play">Play</button>
						<button class="stop">Stop</button>
					</div>
				</div>
			</div>
		</div>

	<!-- SERVICE -->
		<div class="services " id="services">
			<div class="container px-4 px-lg-5">
				<h2 class="text-center mt-0 display-5">At Your Service</h2>
				<hr class="divider" />
				<div class="row gx-4 gx-lg-5">
					<div class=" box col-lg-3 col-md-6 text-center">
						<div class="mt-5">
							<div class="mb-2">
								<i class="bi-gem fs-1 text-primary"></i>
							</div>
							<h3 class="h4 mb-2">Quality</h3>
							<p class=" card-text mb-0">At our mess, we prioritize quality
								in every dish we serve. Our kitchen is dedicated to using only
								the finest, fresh ingredients to ensure every meal is packed
								with flavor.</p>
						</div>
					</div>
					<div class="box col-lg-3 col-md-6 text-center">
						<div class="mt-5">
							<div class="mb-2">
								<i class="bi-laptop fs-1 text-primary"></i>
							</div>
							<h3 class="h4 mb-2">Cleanliness</h3>
							<p class="card-text mb-0">Cleanliness is non-negotiable. The
								best messes are spotless, from the dining area to the restrooms
								to the kitchen. Cleanliness promotes health, hygiene, and
								well-being</p>
						</div>
					</div>
					<div class="box col-lg-3 col-md-6 text-center">
						<div class="mt-5">
							<div class="mb-2">
								<i class="bi-globe fs-1 text-primary"></i>
							</div>
							<h3 class="h4 mb-2">Service</h3>
							<p class="card-text mb-0">Great service includes quick
								responses to needs, a smooth dining experience, and staff who
								are familiar with the menu, offering helpful suggestions.</p>
						</div>
					</div>
					<div class="box col-lg-3 col-md-6 text-center">
						<div class="mt-5">
							<div class="mb-2">
								<i class="bi-heart fs-1 text-primary"></i>
							</div>
							<h3 class="h4 mb-2">Philosophy</h3>
							<p class="card-text mb-0">This philosophy includes
								accommodating special requests, offering personalized
								experiences, and ensuring that customers leave satisfied.</p>
						</div>
					</div>
				</div>
				
				<div class="row gx-4 gx-lg-5 mt-4">
					<div class="box col-lg-3 col-md-6 text-center">
						<div class="mt-5">
							<div class="mb-2">
								<i class="bi bi-cup-hot fs-1 text-primary"></i>
							</div>
							<h3 class="h4 mb-2">Authentic Taste</h3>
							<p class="card-text mb-0">No matter where you are, your favorite dishes are just a click away. 
							With our wide selection of regional home kitchens, you can enjoy the authentic flavors of your hometown. 
							</p>
						</div>
					</div>
					<div class="box col-lg-3 col-md-6 text-center">
						<div class="mt-5">
							<div class="mb-2">
								<i class="bi bi-basket fs-1 text-primary"></i>
							</div>
							<h3 class="h4 mb-2">Homemade Food</h3>
							<p class="card-text mb-0">Experience the warmth and comfort of 100% homemade food with our extensive range of dishes, 
							from traditional meals to contemporary twists on classic favorites.</p>
						</div>
					</div>
					<div class="box col-lg-3 col-md-6 text-center">
						<div class="mt-5">
							<div class="mb-2">
								<i class="bi bi-award fs-1 text-primary"></i>
								
							</div>
							<h3 class="h4 mb-2">Healthy Outside Food</h3>
							<p class="card-text mb-0">
							You can trust that every bite is healthy, made with locally sourced ingredients, and prepared under the highest hygiene standards. 
							All our kitchens are fully FSSAI certified.</p>
						</div>
					</div>
					<div class="box col-lg-3 col-md-6 text-center">
						<div class="mt-5">
							<div class="mb-2">
								<i class="bi bi-percent fs-1 text-primary"></i>
							</div>
							<h3 class="h4 mb-2">Exclusive Discounts</h3>
							<p class="card-text mb-0">We offer tailor-made deals for customer dining experience. 
							With exclusive discounts, you can enjoy delicious homemade food, a sense of community through good food.</p>
						</div>
				</div>
			</div>
		</div>
		</div>

	<!-- CONTACT -->
		<div class="page-container" id="contact">
			<div class="container mt-5 px-lg-5">
				<div class="row gx-4 gx-lg-5 justify-content-center">
					<div class="col-lg-8 col-xl-6 text-center">
						<h2 class="mt-0	 display-5">Let's Get In Touch!</h2>
						<hr class="divider" />
						<p class="card-text mb-5">We are here to answer any questions you may have about Mess and its services. Fill up basic details and we’ll respond within 24 hours or less.</p>
					</div>
				</div>
				<div class="row gx-4 gx-lg-5 justify-content-center mb-5">
					<div class="col-lg-6">
						<!-- Contact Form -->
						<form id="contactForm" data-sb-form-api-token="API_TOKEN">
							<!-- Name input -->
							<div class="form-floating mb-3">
								<input class="form-control" id="name" type="text"
									placeholder="Enter your name..." required /> <label for="name">Full
									Name</label>
								<div class="invalid-feedback" data-sb-feedback="name:required">A
									name is required.</div>
							</div>
							<!-- Email input -->
							<div class="form-floating mb-3">
								<input class="form-control" id="email" type="email"
									placeholder="name@example.com" required /> <label for="email">Email
									Address</label>
								<div class="invalid-feedback" data-sb-feedback="email:required">An
									email is required.</div>
								<div class="invalid-feedback" data-sb-feedback="email:email">Email
									is not valid.</div>
							</div>
							<!-- Phone input -->
							<div class="form-floating mb-3">
								<input class="form-control" id="phone" type="tel"
									placeholder="(123) 456-7890" required /> <label for="phone">Mobile
									Number</label>
								<div class="invalid-feedback" data-sb-feedback="phone:required">A
									phone number is required.</div>
							</div>
							<!-- Message input -->
							<div class="form-floating mb-3">
								<textarea class="form-control" id="message" placeholder="Enter your message here..." style="height: 10rem" required></textarea>
								<label for="message">Suggestion/ Complaint</label>
								<div class="invalid-feedback"
									data-sb-feedback="message:required">A message is required.</div>
							</div>

							<!-- Submit Button -->
							<div class="d-grid">
								<button class="btn btn-primary btn-xl" id="submit" type="submit">Submit</button>
							</div>
						</form>
					</div>
				</div>
				<div class="row gx-4 gx-lg-5 justify-content-center">
					<div class="col-lg-4 text-center mb-5 mb-lg-0">
						<i class="bi bi-phone fs-2 mb-3 text-muted"></i>
						<div>+91-(123)-456-7890</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- FOOTER -->
		    <jsp:include page="footer.jsp"></jsp:include>
		<!-- FOOTER END -->
	</div>
	
	   <!-- Toast Trigger Button (Optional) -->
<!-- <button type="button" class="btn btn-primary" id="liveToastBtn">Show live toast</button> -->

<!-- Toast Container -->
<div class="toast-container position-fixed bottom-0 end-0 p-3">
  <div id="liveToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
      
      
      <img src="resources/images/live-chat.png" class="rounded me-2" alt="...">
    <strong class="me-auto">Bootstrap</strong>
    <small>Just Now</small>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
    </div>
    <div class="toast-body">
      Hello, User! Welcome to the site 🎉
    </div>
  </div>
</div>


	<!--  JAVASCRIPT LIBRARY -->
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
	
	 <script>
        var owl = $('.owl-carousel');
        owl.owlCarousel({
            loop: true,
            margin: 10,
            autoplay: true,
            autoplayTimeout: 3000,
            autoplayHoverPause: true,
            responsive: {
                0: {
                    items: 1
                },
                600: {
                    items: 2
                },
                768: {
                    items: 3
                },
                1000: {
                    items: 4
                }
            }
        });

        $('.play').on('click', function () {
            owl.trigger('play.owl.autoplay', [4000]);
        });

        $('.stop').on('click', function () {
            owl.trigger('stop.owl.autoplay');
        });
    </script>
	
</body>
</html>