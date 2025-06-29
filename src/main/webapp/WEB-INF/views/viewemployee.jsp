<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="resources/images/hotel plate.ico" type="image/x-icon">
    <title>Employee Management</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/search.js' />"></script>
    <style>
        /* Add responsive hover styles */
        .table-hover tbody tr:hover {
            background-color: #f9e79f !important;
            color: #1d3557 !important;
            cursor: pointer;
        }

        /* Stack action buttons on smaller screens */
        @media (max-width: 768px) {
            .btn-group {
                display: flex;
                flex-direction: column;
                gap: 0.5rem;
            }
        }
    </style>
</head>

<body>

    <!-- Include Admin Dashboard -->
    <jsp:include page="adminDashboard.jsp"></jsp:include>
    
    <div class="container-fluid mt-5">
        <h1 class="text-center mb-4">Employee Management</h1>
        
        <!-- Search Bar -->
      <div class="d-flex justify-content-center">
    <div class="input-group mb-4" style="width: 50%;">
        <input type="text" class="form-control border-1 rounded-start px-3" id="employeename" placeholder="Search your employees here..." aria-label="Search for employees" onkeyup="searchEmployee(document.getElementById('employeename').value)" />
    </div>
</div>

       
        <!-- Employee Table -->
        <div id="gridShow" class="table-responsive">
            <table class="table table-hover table-bordered align-middle">
                <thead class="table-dark">
                    <tr>
                        <th>Employee ID</th>
                        <th>Employee Name</th>
                        <th>Contact</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Education</th>
                        <th colspan="2" class="text-center">Actions</th>
                    </tr>
                </thead>
                
                <tbody>
                    <c:forEach var="e" items="${emplist}">
                        <tr>
                            <td>${e.employeeid}</td>
                            <td>${e.employeename}</td>
                            <td>${e.employeecontact}</td>
                            <td>${e.email}</td>
                            <td>${e.address}</td>
                            <td>${e.education}</td>
                            <td colspan="2">
                                <!-- Action Buttons -->
                                <div class="btn-group d-flex justify-content-center">
                                    <a href="updateEmployee?employeeid=${e.getEmployeeid()}" class="btn btn-sm btn-primary">Update</a>
                                    <a href="deleteemp?employeeid=${e.getEmployeeid()}" class="btn btn-sm btn-danger">Delete</a>
                                </div>
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
        
        
		<!-- FOOTER -->
		    <jsp:include page="footer.jsp"></jsp:include>
		<!--  FOOTER END -->
    </div>
    	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
</body>
</html>
