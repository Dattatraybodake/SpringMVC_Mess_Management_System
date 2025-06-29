<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="org.mvcproject.model.LoginModel, org.mvcproject.model.Register"%>
<%
    LoginModel model = (LoginModel) session.getAttribute("loginUser");
    if (model == null || !"admin".equalsIgnoreCase(model.getLogintype())) {
        response.sendRedirect("login"); // Redirect to login if not an admin
      return;
    }
%>
<html>
<head>
<link rel="icon" href="resources/images/hotel plate.ico" type="image/x-icon">
    <title>Administrator DashBoard</title>
    
<link rel="stylesheet" href="resources/css/style.css"> 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
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

    </style>
</head>
<body>

	<nav class="navbar navbar-light bg-subtle fixed-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">MESS MANAGEMENT SYSTEM</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="offcanvas offcanvas-start text-bg-light" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
				<div class="offcanvas-header">
					<h5 class="offcanvas-title" id="offcanvaDarkNavbarLabel">MESS MANAGEMENT SYSTEM</h5>
					<button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#sidebarMenu" aria-label="Close"></button>
				</div>
				<div class="sidebar-user align-item-center m-5">
					<img src="resources/images/user.png" alt="Profile"
						class="rounded-circle" width="180" height="180">
					<div class="fw-bold">

						<%
						String username = model.getEmail();
						out.println("<h5>Wecome, " + username + "</h5>");
						%>

					</div>
				</div>

				<div class="offcanvas-body">
					<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
						<li class="nav-item"><a class="nav-link active" aria-current="page" href="admindashboard">Home</a></li>
						<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Employee Management</a>
							<ul class="dropdown-menu dropdown-menu-light">
								<li><a class="dropdown-item" href="employee">New Employee</a></li>
								<li><a class="dropdown-item" href="viewemployee">Employee Data</a></li>
							</ul>
						</li>
						
						<li class="nav-item"><a class="nav-link" aria-current="page" href="viewcustom">Customer Management</a></li>
						<li class="nav-item "><a class="nav-link" href="viewcaty">Product Categorization</a></li>
						<li class="nav-item"><a class="nav-link" aria-current="page" href="viewproduct">Product Management</a></li>
						
						<li class="nav-item"> <a class="nav-link" aria-current="page" href="vieworder" >Sales and Invoice Management</a></li>
											
						<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Reporting and Analytics</a>
							<ul class="dropdown-menu dropdown-menu-light">
								<li><a class="dropdown-item" href="searchbydate">Search Orders By Date</a>
								<li><a class="dropdown-item" href="searchbymonth">Search Orders By Month</a>
								<li><a class="dropdown-item" href="#">Search Orders By Year</a></li>
								<li><a class="dropdown-item" href="#">Search By Customer Name</a>
								
							</ul>
						</li>
						<li class="nav-item "><a class="nav-link" href="#">Setting</a></li>
						<li class="nav-item "><a class="nav-link" href="logout">Log Out</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
</body>
</html>
