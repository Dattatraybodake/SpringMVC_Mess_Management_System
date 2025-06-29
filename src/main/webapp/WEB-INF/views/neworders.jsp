<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="resources/images/hotel plate.ico" type="image/x-icon">
<title>Orders</title>
  <!-- Include Bootstrap CSS -->
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/search.js'/>"></script>
    

</head>
<body>
	<jsp:include page="employeeDashboard.jsp"></jsp:include>
	<div Class="container-fluid">
		<div class="col-md-10 mx-auto col-lg-5 mt-5">
			<h1 class="display-4 lh-1 text-body-emphasis mb-3">New Orders</h1>


			<form name='frm' id='frm' action='savebill' method='POST'>
				<div class="form-group control">
					<select name="custid" class="form-control mb-3">
						<option>Select Customer</option>
						<c:forEach var="cust" items="${cust}">
							<option value="${cust.customerid}">${cust.getCustomername()}</option>
						</c:forEach>
					</select>
				</div>
				<div class="form-group control">
					<select name="catid" class="form-control mb-3">
						<option>Select Category</option>
						<c:forEach var="s" items="${cat}">
							<option value="${s.categoryid}">${s.getCategoryname()}</option>
						</c:forEach>
					</select>
				</div>
				<div class="form-group control">
					<select name="prodid" class="form-control mb-3">
						<option>Select Product</option>
						<c:forEach var="p" items="${p}">
							<option value="${p.productid}">${p.getProductname()}</option>
						</c:forEach>
					</select>
				</div>

				<div class="col-md-6 ">
					<label for="invoiceid" class="form-label">Invoice id</label> <input
						type="text" class="form-control" id="invoiceid" name="invoiceid"
						required>
				</div>

				<div class="col-md-6 ">
					<label for="price" class="form-label">Price</label> <input
						type="text" class="form-control" id="price" name="price" required>
				</div>

				<div class="col-md-6 ">
					<label for="quantity" class="form-label">Quantity</label> <input
						type="text" class="form-control" id="quantity" name="quantity"
						required>
				</div>
				<div class="col-md-6 mb-3">
					<label for="gst" class="form-label">GST</label> <input type="text"
						class="form-control" id="gst" name="gst" required>
				</div>

				<input class="btn btn-primary btn-lg active" type="submit" name="s" value="Submit Bill" />
				${msg}
			</form>
		</div>
		<!-- FOOTER -->
		<jsp:include page="footer.jsp"></jsp:include>
		<!--  FOOTER END -->
	</div>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
	
</body>
</html>