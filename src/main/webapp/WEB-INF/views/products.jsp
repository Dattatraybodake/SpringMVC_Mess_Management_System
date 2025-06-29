<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Tagesschrift&display=swap" rel="stylesheet">
    <link href="css/product.css" rel="stylesheet">
</head>

<body>
    <div class="container-fluid">
    
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
						<li class="nav-item"><a class="nav-link text-black" href="products">Products</a></li>
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
	
        <!-- heading Section -->
        <section class="product-section p-3 p-lg-5 d-flex flex-column" id="product">
            <div class="row my-3">
                <div class="col-12">
                    <h2 class="text-center">Products </h2>
                    <div class="mb-5 heading-border"></div>
                </div>
                <div class="col-md-12">
                    <div class="port-head-cont d-flex justify-content-center flex-wrap gap-2">
                        <button class="btn btn-outline-primary filter-b" data-filter="all">All</button>
                        <button class="btn btn-outline-primary filter-b" data-filter="consulting">BreakFast</button>
                        <button class="btn btn-outline-primary filter-b" data-filter="finance">Lounch</button>
                        <button class="btn btn-outline-primary filter-b" data-filter="marketing">Dinner</button>
                        <button class="btn btn-outline-primary filter-b" data-filter="#">Spacial</button>
                    </div>
                </div>
            </div>

            <!-- Product Starts -->
            <div class="row my-5">
                <div class="col-lg-6 col-xl-4 product-item filter finance">
                    <a class="product-link" href="#productModal1" data-toggle="modal">
                        <div class="caption-port">
                            <div class="caption-port-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid" src="images/Meduvada.jpg" alt="">
                    </a>
                </div>
                <div class="col-lg-6 col-xl-4 product-item filter marketing">
                    <a class="product-link" href="#productModal2" data-toggle="modal">
                        <div class="caption-port">
                            <div class="caption-port-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid" src="images/Vadapav.jpg" alt="">
                    </a>
                </div>
                <div class="col-lg-6 col-xl-4 product-item filter consulting">
                    <a class="product-link" href="#productModal3" data-toggle="modal">
                        <div class="caption-port">
                            <div class="caption-port-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid" src="images/samosa/jpg" alt="">
                    </a>
                </div>
            </div>
            <div class="row my-5">
                <div class="col-lg-6 col-xl-4 product-item filter consulting">
                    <a class="product-link" href="#productModal4" data-toggle="modal">
                        <div class="caption-port">
                            <div class="caption-port-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid" src="images/Uupma.jpg" alt="">
                    </a>
                </div>
                <div class="col-lg-6 col-xl-4 product-item filter consulting">
                    <a class="product-link" href="#productModal5" data-toggle="modal">
                        <div class="caption-port">
                            <div class="caption-port-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid" src="images/Misal Pav.jpg" alt="">
                    </a>
                </div>
                <div class="col-lg-6 col-xl-4 product-item filter finance">
                    <a class="product-link" href="#productModal6" data-toggle="modal">
                        <div class="caption-port">
                            <div class="caption-port-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid" src="images/Pav Bhaji.jpg" alt="">
                    </a>
                </div>
            </div>
            <div class="row my-5">
                <div class="col-lg-6 col-xl-4 product-item filter marketing">
                    <a class="product-link" href="#productModal7" data-toggle="modal">
                        <div class="caption-port">
                            <div class="caption-port-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid" src="images/poha.jpg" alt="">
                    </a>
                </div>
                <div class="col-lg-6 col-xl-4 product-item filter marketing">
                    <a class="product-link" href="#productModal8" data-toggle="modal">
                        <div class="caption-port">
                            <div class="caption-port-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid" src="images/Idli.jpg" alt="">
                    </a>
                </div>
                <div class="col-lg-6 col-xl-4 product-item filter finance">
                    <a class="product-link" href="#productModal9" data-toggle="modal">
                        <div class="caption-port">
                            <div class="caption-port-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img class="img-fluid" src="images/pulao.jpg" alt="">
                    </a>
                </div>
            </div>
        </section>

        <!-- Products End -->


        <!-- Product Model Starts -->
        <div class="product-modal modal fade" id="productModal1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="modal-body">
                                <div class="title-bar">
                                    <div class="col-md-12">
                                        <h2 class="text-center">Our Product</h2>
                                        <div class="heading-border"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <img class="img-fluid img-centered" src="images/Meduvada.jpg" alt="">
                                    </div>
                                    <div class="col-md-6">
                                        <p>Our new Project every processes had become fragmented; meaning quality and
                                            service were inconsistent. This lack of standardization was adversely
                                            impacting operating costs, productivity and customer satisfaction. For
                                            several years now Payfast has worked strategically with innovations as a
                                            means of developing new solutions, products and services. In line with this
                                            vision, Success was approached to find new payments solutions to offer
                                            Payfast customers on their website, including open invoice and partial
                                            payments options.</p>
                                        <ul class="list-inline item-details">
                                            <li>Client:
                                                <strong>
                                                    <a href="#">Techs Soft</a>
                                                </strong>
                                            </li>
                                            <li>Date:
                                                <strong>
                                                    <a href="#">April 2018</a>
                                                </strong>
                                            </li>
                                            <li>Service:
                                                <strong>
                                                    <a href="#">Web Development</a>
                                                </strong>
                                            </li>
                                        </ul>
                                        <button class="btn btn-general btn-white" type="button" data-dismiss="modal">
                                            <i class="fa fa-times"></i> Close
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="product-modal modal fade" id="productModal2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="modal-body">
                                <div class="title-bar">
                                    <div class="col-md-12">
                                        <h2 class="text-center">Our Project</h2>
                                        <div class="heading-border"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <img class="img-fluid img-centered" src="img/product/p-2.jpg" alt="">
                                    </div>
                                    <div class="col-md-6">
                                        <p>Our new product every processes had become fragmented; meaning quality and
                                            service were inconsistent. This lack of standardization was adversely
                                            impacting operating costs, productivity and customer satisfaction. For
                                            several years now Payfast has worked strategically with innovations as a
                                            means of developing new solutions, products and services. In line with this
                                            vision, Success was approached to find new payments solutions to offer
                                            Payfast customers on their website, including open invoice and partial
                                            payments options.</p>
                                        <ul class="list-inline item-details">
                                            <li>Client:
                                                <strong>
                                                    <a href="#">Techs Soft</a>
                                                </strong>
                                            </li>
                                            <li>Date:
                                                <strong>
                                                    <a href="#">April 2018</a>
                                                </strong>
                                            </li>
                                            <li>Service:
                                                <strong>
                                                    <a href="#">Web Development</a>
                                                </strong>
                                            </li>
                                        </ul>
                                        <button class="btn btn-general btn-white" type="button" data-dismiss="modal">
                                            <i class="fa fa-times"></i> Close
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-modal modal fade" id="productModal3" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="modal-body">
                                <div class="title-bar">
                                    <div class="col-md-12">
                                        <h2 class="text-center">Our product</h2>
                                        <div class="heading-border"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <img class="img-fluid img-centered" src="img/product/p-3.jpg" alt="">
                                    </div>
                                    <div class="col-md-6">
                                        <p>Our new product every processes had become fragmented; meaning quality and
                                            service were inconsistent. This lack of standardization was adversely
                                            impacting operating costs, productivity and customer satisfaction. For
                                            several years now Payfast has worked strategically with innovations as a
                                            means of developing new solutions, products and services. In line with this
                                            vision, Success was approached to find new payments solutions to offer
                                            Payfast customers on their website, including open invoice and partial
                                            payments options.</p>
                                        <ul class="list-inline item-details">
                                            <li>Client:
                                                <strong>
                                                    <a href="#">Techs Soft</a>
                                                </strong>
                                            </li>
                                            <li>Date:
                                                <strong>
                                                    <a href="#">April 2018</a>
                                                </strong>
                                            </li>
                                            <li>Service:
                                                <strong>
                                                    <a href="#">Web Development</a>
                                                </strong>
                                            </li>
                                        </ul>
                                        <button class="btn btn-general btn-white" type="button" data-dismiss="modal">
                                            <i class="fa fa-times"></i> Close
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-modal modal fade" id="productModal4" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="modal-body">
                                <div class="title-bar">
                                    <div class="col-md-12">
                                        <h2 class="text-center">Our product</h2>
                                        <div class="heading-border"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <img class="img-fluid img-centered" src="img/product/p-4.jpg" alt="">
                                    </div>
                                    <div class="col-md-6">
                                        <p>Our new product every processes had become fragmented; meaning quality and
                                            service were inconsistent. This lack of standardization was adversely
                                            impacting operating costs, productivity and customer satisfaction. For
                                            several years now Payfast has worked strategically with innovations as a
                                            means of developing new solutions, products and services. In line with this
                                            vision, Success was approached to find new payments solutions to offer
                                            Payfast customers on their website, including open invoice and partial
                                            payments options.</p>
                                        <ul class="list-inline item-details">
                                            <li>Client:
                                                <strong>
                                                    <a href="#">Techs Soft</a>
                                                </strong>
                                            </li>
                                            <li>Date:
                                                <strong>
                                                    <a href="#">April 2018</a>
                                                </strong>
                                            </li>
                                            <li>Service:
                                                <strong>
                                                    <a href="#">Web Development</a>
                                                </strong>
                                            </li>
                                        </ul>
                                        <button class="btn btn-general btn-white" type="button" data-dismiss="modal">
                                            <i class="fa fa-times"></i> Close
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-modal modal fade" id="productModal5" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="modal-body">
                                <div class="title-bar">
                                    <div class="col-md-12">
                                        <h2 class="text-center">Our product</h2>
                                        <div class="heading-border"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <img class="img-fluid img-centered" src="img/product/p-5.jpg" alt="">
                                    </div>
                                    <div class="col-md-6">
                                        <p>Our new product every processes had become fragmented; meaning quality and
                                            service were inconsistent. This lack of standardization was adversely
                                            impacting operating costs, productivity and customer satisfaction. For
                                            several years now Payfast has worked strategically with innovations as a
                                            means of developing new solutions, products and services. In line with this
                                            vision, Success was approached to find new payments solutions to offer
                                            Payfast customers on their website, including open invoice and partial
                                            payments options.</p>
                                        <ul class="list-inline item-details">
                                            <li>Client:
                                                <strong>
                                                    <a href="#">Techs Soft</a>
                                                </strong>
                                            </li>
                                            <li>Date:
                                                <strong>
                                                    <a href="#">April 2018</a>
                                                </strong>
                                            </li>
                                            <li>Service:
                                                <strong>
                                                    <a href="#">Web Development</a>
                                                </strong>
                                            </li>
                                        </ul>
                                        <button class="btn btn-general btn-white" type="button" data-dismiss="modal">
                                            <i class="fa fa-times"></i> Close
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-modal modal fade" id="productModal6" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="modal-body">
                                <div class="title-bar">
                                    <div class="col-md-12">
                                        <h2 class="text-center">Our product</h2>
                                        <div class="heading-border"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <img class="img-fluid img-centered" src="img/product/p-6.jpg" alt="">
                                    </div>
                                    <div class="col-md-6">
                                        <p>Our new product every processes had become fragmented; meaning quality and
                                            service were inconsistent. This lack of standardization was adversely
                                            impacting operating costs, productivity and customer satisfaction. For
                                            several years now Payfast has worked strategically with innovations as a
                                            means of developing new solutions, products and services. In line with this
                                            vision, Success was approached to find new payments solutions to offer
                                            Payfast customers on their website, including open invoice and partial
                                            payments options.</p>
                                        <ul class="list-inline item-details">
                                            <li>Client:
                                                <strong>
                                                    <a href="#">Techs Soft</a>
                                                </strong>
                                            </li>
                                            <li>Date:
                                                <strong>
                                                    <a href="#">April 2018</a>
                                                </strong>
                                            </li>
                                            <li>Service:
                                                <strong>
                                                    <a href="#">Web Development</a>
                                                </strong>
                                            </li>
                                        </ul>
                                        <button class="btn btn-general btn-white" type="button" data-dismiss="modal">
                                            <i class="fa fa-times"></i> Close
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-modal modal fade" id="productModal7" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="modal-body">
                                <div class="title-bar">
                                    <div class="col-md-12">
                                        <h2 class="text-center">Our product</h2>
                                        <div class="heading-border"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <img class="img-fluid img-centered" src="img/product/p-7.jpg" alt="">
                                    </div>
                                    <div class="col-md-6">
                                        <p>Our new product every processes had become fragmented; meaning quality and
                                            service were inconsistent. This lack of standardization was adversely
                                            impacting operating costs, productivity and customer satisfaction. For
                                            several years now Payfast has worked strategically with innovations as a
                                            means of developing new solutions, products and services. In line with this
                                            vision, Success was approached to find new payments solutions to offer
                                            Payfast customers on their website, including open invoice and partial
                                            payments options.</p>
                                        <ul class="list-inline item-details">
                                            <li>Client:
                                                <strong>
                                                    <a href="#">Techs Soft</a>
                                                </strong>
                                            </li>
                                            <li>Date:
                                                <strong>
                                                    <a href="#">April 2018</a>
                                                </strong>
                                            </li>
                                            <li>Service:
                                                <strong>
                                                    <a href="#">Web Development</a>
                                                </strong>
                                            </li>
                                        </ul>
                                        <button class="btn btn-general btn-white" type="button" data-dismiss="modal">
                                            <i class="fa fa-times"></i> Close
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-modal modal fade" id="productModal8" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="modal-body">
                                <div class="title-bar">
                                    <div class="col-md-12">
                                        <h2 class="text-center">Our product</h2>
                                        <div class="heading-border"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <img class="img-fluid img-centered" src="img/product/p-8.jpg" alt="">
                                    </div>
                                    <div class="col-md-6">
                                        <p>Our new product every processes had become fragmented; meaning quality and
                                            service were inconsistent. This lack of standardization was adversely
                                            impacting operating costs, productivity and customer satisfaction. For
                                            several years now Payfast has worked strategically with innovations as a
                                            means of developing new solutions, products and services. In line with this
                                            vision, Success was approached to find new payments solutions to offer
                                            Payfast customers on their website, including open invoice and partial
                                            payments options.</p>
                                        <ul class="list-inline item-details">
                                            <li>Client:
                                                <strong>
                                                    <a href="#">Techs Soft</a>
                                                </strong>
                                            </li>
                                            <li>Date:
                                                <strong>
                                                    <a href="#">April 2018</a>
                                                </strong>
                                            </li>
                                            <li>Service:
                                                <strong>
                                                    <a href="#">Web Development</a>
                                                </strong>
                                            </li>
                                        </ul>
                                        <button class="btn btn-general btn-white" type="button" data-dismiss="modal">
                                            <i class="fa fa-times"></i> Close
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-modal modal fade" id="productModal9" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="row">
                            <div class="modal-body">
                                <div class="title-bar">
                                    <div class="col-md-12">
                                        <h2 class="text-center">Our Project</h2>
                                        <div class="heading-border"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <img class="img-fluid img-centered" src="img/product/p-9.jpg" alt="">
                                    </div>
                                    <div class="col-md-6">
                                        <p>Our new Project every processes had become fragmented; meaning quality and
                                            service were inconsistent. This lack of standardization was adversely
                                            impacting operating costs, productivity and customer satisfaction. For
                                            several years now Payfast has worked strategically with innovations as a
                                            means of developing new solutions, products and services. In line with this
                                            vision, Success was approached to find new payments solutions to offer
                                            Payfast customers on their website, including open invoice and partial
                                            payments options.</p>
                                        <ul class="list-inline item-details">
                                            <li>Client:
                                                <strong>
                                                    <a href="#">Techs Soft</a>
                                                </strong>
                                            </li>
                                            <li>Date:
                                                <strong>
                                                    <a href="#">April 2018</a>
                                                </strong>
                                            </li>
                                            <li>Service:
                                                <strong>
                                                    <a href="#">Web Development</a>
                                                </strong>
                                            </li>
                                        </ul>
                                        <button class="btn btn-general btn-white" type="button" data-dismiss="modal">
                                            <i class="fa fa-times"></i> Close
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Product Model End -->
        
        <!-- FOOTER -->
		    <jsp:include page="footer.jsp"></jsp:include>
		<!-- FOOTER END -->

    </div>

    <script src="js/jquery/jquery.min.js"></script>

    <script>
        $(document).ready(function () {

            $(".filter-b").click(function () {
                var value = $(this).attr('data-filter');
                if (value == "all") {
                    $('.filter').show('1000');
                }
                else {
                    $(".filter").not('.' + value).hide('3000');
                    $('.filter').filter('.' + value).show('3000');
                }
            });

            if ($(".filter-b").removeClass("active")) {
                $(this).removeClass("active");
            }
            $(this).addClass("active");
        });

    </script>
</body>

</html>