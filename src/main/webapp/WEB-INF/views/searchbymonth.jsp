<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script>
        function searchByMonth() {
            let month = document.getElementById("month").value;
            let year = document.getElementById("year").value;
            if (!month || !year) {
                alert("Please select both month and year.");
                return;
            }
            let xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById("result").innerHTML = this.responseText;
                }
            };
            xhttp.open("GET", "searchBill?m=" + month + "&y=" + year, true);
            xhttp.send();
        }
    </script>
</head>
<body>
 <h2>Search Sales by Month & Year</h2>
    <input type="number" id="month">
    <input type="number" id="year" min="2000" max="2100">
    <button onclick="searchByMonth()">Search</button>
    <div id="result"></div>
</body>
</html>