<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="org.mvcproject.service.*, java.util.*,org.mvcproject.model.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="resources/images/hotel plate.ico" type="image/x-icon">
<title>Add Products</title>
 <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<jsp:include page="employeeDashboard.jsp"></jsp:include>
<!-- Form Section Start -->
  
	<div class="container-fluid mt-5">
		<!-- Form Start -->
		
		<div class="col-md-12 mx-auto col-lg-5">
			<h1 class="display-4 lh-1 text-body-emphasis mb-3">New Product</h1>
  
      
        <form class="p-4 p-md-5 border rounded-3 bg-body-tertiary" name='frm' id='frm' action='saveproduct' method='POST'>

          <div class="form-floating mb-3">
            
       
        	<select name="catid" class="form-control" id="floatingInput">
            <option >Select Category</option>
            <c:forEach var="s" items="${c}">
                <option value="${s.categoryid}">${s.getCategoryname()}</option>
            </c:forEach>
        </select>
          </div>
          <a href="new" class="btn mb-2">Category not listed in above Group! Add Category</a>
          
          
          <div class="form-floating mb-3">
            <input type="text" class="form-control" id="floatingPassword" name='productname' placeholder="product">
            <label for="floatingPassword">Product Name</label>
          </div>
          <div class="checkbox mb-3">
            <label>
              <input type="checkbox" value="remember-me"> Remember me
            </label>
          </div>
          <button class="w-100 btn btn-lg btn-primary" type="submit" name="s">Add New Products</button>
                ${msg}
      
        </form>
      </div> 
  <!-- Form Section END -->
  
		<!-- FOOTER -->
		    <jsp:include page="footer.jsp"></jsp:include>
		<!--  FOOTER END -->	
</div>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>

</body>
</html>