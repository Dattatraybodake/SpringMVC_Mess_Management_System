<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="resources/images/hotel plate.ico" type="image/x-icon">
    <title>Customer Management</title>
    
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <script type="text/javascript" src="<c:url value='/resources/js/search.js'/>"></script>
    
    <style>
        /* Highlight row on hover */
        .table-hover tbody tr:hover {
            background-color: #f8d7da !important; /* Light red background */
            color: #721c24 !important; /* Dark red text */
            cursor: pointer;
        }
    </style>
</head>
<body>
    <!-- Include Admin Dashboard -->
    <jsp:include page="adminDashboard.jsp"></jsp:include>

    <div class="container-fluid mt-5">
        <h1 class="text-center mb-4">Customer Management</h1>
        <!-- Search Bar -->
		<div class="d-flex justify-content-center">
			<div class="input-group mb-4" style="width: 50%;">
				<input type="text" name="customername" class="form-control border-1 rounded-start px-3" id="customername" placeholder="Search Your Customers Here..." aria-label="Search for customers" onkeyup="searchcustomer(document.getElementById('customername').value)" style="box-shadow: none;" />		
			</div>
		</div>

		<!-- Customer Table -->
        <div id="gridShow" class="table-responsive">
            <table class="table table-hover table-bordered align-middle">
                <thead class="table-dark">
                    <tr>
                        <th>ID</th>
                        <th>Customer Name</th>
                        <th>Contact</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Action</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="e" items="${CustomerList}">
                        <tr>
                            <td>${e.customerid}</td>
                            <td>${e.customername}</td>
                            <td>${e.customercontact}</td>
                            <td>${e.email}</td>
                            <td>${e.address}</td>
                            
                            <td><a href="updatecust?customerid=${e.getCustomerid()}" class="btn btn-sm btn-primary">Update</a></td>
                            <td><a href="deletecust?customerid=${e.getCustomerid()}" class="btn btn-sm btn-danger">Delete</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <!-- Pagination -->
        <nav aria-label="Customer table pagination">
            <ul class="pagination justify-content-center">
                <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1">Previous</a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                    <a class="page-link" href="#">Next</a>
                </li>
            </ul>
        </nav>
        
		<!-- FOOTER -->
		    <jsp:include page="footer.jsp"></jsp:include>
		<!--  FOOTER END -->
    </div>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>

</body>
</html>
