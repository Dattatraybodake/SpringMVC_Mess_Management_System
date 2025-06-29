<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="resources/images/hotel plate.ico" type="image/x-icon">
    <title>Category Management</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        /* Hover effect for rows */
        .table-hover tbody tr:hover {
            background-color: #f1f1f1 !important;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <!-- Include Admin Dashboard -->
    <jsp:include page="adminDashboard.jsp"></jsp:include>

    <div class="container-fluid mt-5">
        <h1 class="text-center mb-4">Category Management</h1>

        <!-- Category Table -->
        <div id="gridShow" class="table-responsive">
            <table class="table table-hover table-bordered align-middle">
                <thead class="table-dark">
                    <tr >
                        <th>ID</th>
                        <th>Category Name</th>
                        <th class="text-center">Action</th>
                        <th class="text-center">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="e" items="${categoryList}">
                        <tr>
                            <td>${e.categoryid}</td>
                            <td>${e.categoryname}</td>
                            <td class="text-center">
                                <a href="updatecategory?categoryid=${e.categoryid}" class="btn btn-sm btn-primary">
                                    Update
                                </a>
                            </td>
                            <td class="text-center">
                                <a href="deletecategory?categoryid=${e.getCategoryid()}" class="btn btn-sm btn-danger">
                                    Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <!-- Pagination -->
        <nav aria-label="Category table pagination">
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