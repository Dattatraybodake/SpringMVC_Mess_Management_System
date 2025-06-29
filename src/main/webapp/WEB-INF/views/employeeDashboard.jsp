<%@ page language="java" contentType="text/html charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="org.mvcproject.model.LoginModel"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="resources/images/hotel plate.ico" type="image/x-icon">
<title>Employee DashBoard</title>
    
    <!--  <link rel="stylesheet" href="resources/css/style.css"> -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css"/>
 <style>
        ul {
            list-style-type: none; /* Remove default bullet points */
        }
        li {
            border-bottom: 1px solid rgba(0, 0, 0, 0.1); /* Border between list items */
            padding: 5px 0; /* Some padding for better spacing */
            padding-left: 5px;
        }

        /* Remove border from the last item */
        li:last-child {
            border-bottom: none;
        }
         
    </style></head>
<body>

<div>
	<nav class="navbar navbar-light bg-subtle fixed-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">MESS MANAGEMENT SYSTEM</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="offcanvas offcanvas-start text-bg-light" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
				<div class="offcanvas-header">
					<h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">MESS MANAGEMENT SYSTEM</h5>
					<button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#sidebarMenu" aria-label="Close"></button>
				</div>
				<div class="sidebar-user align-item-center m-5">
					<img src="resources/images/user.png" alt="Profile" class="rounded-circle" width="180" height="180">

										</div>
				
				<div class="offcanvas-body">
					<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
						<li class="nav-item"><a class="nav-link active" aria-current="page" href="employeedashboard">Home</a></li>
						<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Services </a>
							<ul class="dropdown-menu dropdown-menu-light">
								<li><a class="dropdown-item" href="booktable">Book Table</a>
								<li><a class="dropdown-item" href="menu">View Menus </a>
							</ul>
						</li>
						<li class="nav-item "><a class="nav-link" href="customer">New Customers</a></li>
						<li class="nav-item "><a class="nav-link" href="category">New Category</a></li>
						<li class="nav-item "><a class="nav-link" href="addProduct">New Products</a></li>
						<li class="nav-item "><a class="nav-link" href="order">Orders</a></li>
						<li class="nav-item "><a class="nav-link" href="#">Setting</a></li>
						<li class="nav-item "><a class="nav-link" href="logout">Logout</a></li>
						</ul>
				</div>
			</div>
		</div>
	</nav>
    </div>
   <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    
</body>
</html>