<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="org.mvcproject.service.*, java.util.*,org.mvcproject.model.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="resources/images/hotel plate.ico" type="image/x-icon">
    <title>Product Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/search.js'/>"></script>
    <style>
        .table-hover tbody tr:hover {
            background-color: #f8f9fa !important;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <!-- Include Admin Dashboard -->
    <jsp:include page="adminDashboard.jsp"></jsp:include>

    <div class="container-fluid mt-5">
        <h1 class="text-center mb-4">Product Management</h1>

          <!-- Search Bar -->
		<div class="d-flex justify-content-center">
			<div class="input-group mb-4" style="width: 50%;">
				<input type="text" name="productname" class="form-control border-1 rounded-start px-3" id="productname" placeholder="Search Your Products Here..." aria-label="Search for customers" onkeyup="searchproduct(document.getElementById('productname').value)" style="box-shadow: none;" />		
			</div>
		</div>

        <!-- Product Table -->
        <div class="table-responsive">
            <table class="table table-hover table-bordered align-middle">
                <thead class="table-dark">
                    <tr>
                        <th>Product ID</th>
                        <th>Product Name</th>
                        <th colspan="2" class="text-center">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="e" items="${product}">
                        <tr>
                            <td>${e.productid}</td>
                            <td>${e.productname}</td>
                            <td class="text-center">
                                <a href="viewproduct?productid=${e.getProductid()}" class="btn btn-sm btn-primary">
                                    Update
                                </a>
                            </td>
                            <td class="text-center">
                                <a href="deleteproduct?productid=${e.getProductid()}" class="btn btn-sm btn-danger">
                                    Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <!-- Pagination -->
        <nav aria-label="Product table pagination">
            <ul class="pagination justify-content-center mt-4">
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
