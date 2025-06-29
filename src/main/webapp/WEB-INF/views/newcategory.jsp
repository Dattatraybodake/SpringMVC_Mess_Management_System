<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="resources/images/hotel plate.ico" type="image/x-icon">
    <title>Add Category</title>
    <link rel="stylesheet" href="resources/css/style.css">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <jsp:include page="employeeDashboard.jsp"></jsp:include>
    <div class="container-fluid">
        <!-- Form Section Start -->
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6 form-section p-4">
                <h1 class="text-center mb-4">Add New Category</h1>
                <form class="p-4" name="form" id="frm" action="savecategory" method="POST">
                    <div class="mb-3">
                        <label for="categoryname" class="form-label">Category Name</label>
                        <input type="text" class="form-control" id="categoryname" name="categoryname" placeholder="Enter category name" required>
                    </div>
                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" id="rememberMe" name="rememberMe">
                        <label class="form-check-label" for="rememberMe">Remember me</label>
                    </div>
                    <button class="btn btn-primary w-100" type="submit" name="s">Add New Category</button>
                    <div class="mt-3 text-center text-success">${msg}</div>
                </form>
            </div>
        </div>
        <!-- Form Section End -->
        
        
		<!-- FOOTER -->
		    <jsp:include page="footer.jsp"></jsp:include>
		<!--  FOOTER END -->
        
    </div>
    	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
</body>
</html>
