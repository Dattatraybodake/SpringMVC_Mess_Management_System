<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
     <script>
        function openSearchByDate() {
            window.location.href = "searchByDate.jsp";
        }
        function openSearchByMonth() {
            window.location.href = "searchByMonth.jsp";
        }
    </script>
</head>
<body>
<!-- MAIN CONTAINER -->
	<div class="container-main">
	<!-- NAVBAR -->
		<nav class="navbar navbar-expand-xl navbar-togglable fixed-top bg-white mb-5">
		
		<a class="navbar-brand d-none d-lg-flex mx-lg-auto fs-1 mt-5" href="searchbydate">Search by date</a>
				<a class="navbar-brand d-none d-lg-flex mx-lg-auto fs-1" href="searchbymonth">Search by Month</a>
		
		
		<h2>Search Bills</h2>
    <button onclick="openSearchByDate()">Search by Date</button>
    <button onclick="openSearchByMonth()">Search by Month & Year</button>
		
		</div>

	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>

</body>
</html>