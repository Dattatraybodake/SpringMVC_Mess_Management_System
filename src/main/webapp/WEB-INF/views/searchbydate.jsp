<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
<head>
<meta charset="UTF-8">
<title>Search By date</title>
<!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script>
        function searchByDate() {
            let date = document.getElementById("purchaseDate").value;
            if (!date) {
                alert("Please select a date.");
                return;
            }
            let xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("gridShow").innerHTML = this.responseText;
                }
            };
            xhttp.open("GET", "searchsales?n=" + date, true);
            xhttp.send();
        }
    </script>
</head>
<body>
	<jsp:include page="adminDashboard.jsp"></jsp:include>

	    <div class="container-fluid mt-5">
	
	<h1 class=" heading text-center mt-5">Search Sales by Date</h1>
	 <div class="d-flex justify-content-center">
    <div class="input-group mb-4" style="width: 50%;">
	<input type="date" class="form-control border-1 rounded px-3"  id="purchaseDate">
	
	<button class="mx-1 border-1 rounded" onclick="searchByDate()">Search</button>
	</div>
	</div>
	
<div id="gridShow" class="table-responsive">
            <table class="table table-hover table-bordered align-middle">
                <thead class="table-dark">
                </thead>
                </table>	
	</div>
	
	<!-- FOOTER -->
		    <jsp:include page="footer.jsp"></jsp:include>
		<!--  FOOTER END -->

</div>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>

</body>
</html>
