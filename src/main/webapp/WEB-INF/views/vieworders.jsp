<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="icon" href="resources/images/hotel plate.ico" type="image/x-icon">
    <title>View Orders</title>
  <!-- Include Bootstrap CSS -->
     <!-- Include Bootstrap CSS -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/search.js'/>"></script>
    
  
    <style>
      
        
    </style>
    <script>
        function populateModal(data) {
            document.getElementById('modalInvoiceId').innerText = data.invoiceid;
            document.getElementById('modalCustomerName').innerText = data.customername;
            document.getElementById('modalCategoryName').innerText = data.categoryname;
            document.getElementById('modalProductName').innerText = data.productname;
            document.getElementById('modalPrice').innerText = data.price;
            document.getElementById('modalQuantity').innerText = data.quantity;
            document.getElementById('modalGrandTotal').innerText = data.grandtotal;
            document.getElementById('modalPurchaseDate').innerText = data.purchasedate;
        }
    </script>
</head>
<body>
    <jsp:include page="adminDashboard.jsp"></jsp:include>

    <!-- Main Table -->
    <div class="container-fluid mt-5">
     <h1 class="text-center mb-4">Sales Management</h1>

         <!-- Search Bar -->
		<div class="d-flex justify-content-center">
			<div class="input-group mb-4" style="width: 50%;">
				<input type="text" name="purchasedate" class="form-control border-1 rounded-start px-3" id="purchasedate" placeholder="Search Your Sales Here..." aria-label="Search for sales here" onkeyup="searchbill(document.getElementById('customername').value)" style="box-shadow: none;" />		
			</div>
		</div>
        
        <div id="gridShow" class="table-responsive">
            <table class="table table-hover table-bordered align-middle">
            <thead class="table-dark">
                <tr>
                    <th>Invoice ID</th>
                    <th>Customer Name</th>
                    <th>Grand Total</th>
                    <th>Purchase Date</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="e" items="${BillList}">
                    <tr>
                        <td>${e.invoiceid}</td>
                        <td>${e.customername}</td>
                        <td>${e.grandtotal}</td>
                        <td>${e.purchasedate}</td>
                        <td>
                            <button class="btn btn-primary btn-sm" data-bs-toggle="modal" data-bs-target="#detailsModal"
                                onclick='populateModal({
                                    invoiceid: "${e.invoiceid}",
                                    customername: "${e.customername}",
                                    categoryname: "${e.categoryname}",
                                    productname: "${e.productname}",
                                    price: "${e.price}",
                                    quantity: "${e.quantity}",
                                    grandtotal: "${e.grandtotal}",
                                    purchasedate: "${e.purchasedate}"
                                })'>View</button>
                            <a href='updateOrder?id=${e.invoiceid}' class="btn btn-success btn-sm">Update</a>
                            <a href='deleteOrder?id=${e.invoiceid}' class="btn btn-danger btn-sm">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        </div>
        
         <!-- Pagination -->
        <nav aria-label="Employee table pagination">
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
   

    <!-- Modal -->
    <div class="modal fade" id="detailsModal" tabindex="-1" aria-labelledby="detailsModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="detailsModalLabel">Order Details</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p><strong>Invoice ID:</strong> <span id="modalInvoiceId"></span></p>
                    <p><strong>Customer Name:</strong> <span id="modalCustomerName"></span></p>
                    <p><strong>Category Name:</strong> <span id="modalCategoryName"></span></p>
                    <p><strong>Product Name:</strong> <span id="modalProductName"></span></p>
                    <p><strong>Price:</strong> <span id="modalPrice"></span></p>
                    <p><strong>Quantity:</strong> <span id="modalQuantity"></span></p>
                    <p><strong>Grand Total:</strong> <span id="modalGrandTotal"></span></p>
                    <p><strong>Purchase Date:</strong> <span id="modalPurchaseDate"></span></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- FOOTER -->
		    <jsp:include page="footer.jsp"></jsp:include>
		<!--  FOOTER END -->
		 </div>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>    
</body>
</html>