function searchEmployee(employeename)
{
	alert('Hello');
	let xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			document.getElementById("gridShow").innerHTML = this.responseText;
		}
	};
	xhttp.open("GET", "searchemp?n= " + employeename, true);
	xhttp.send();
}
	
function searchcustomer(customername)
{
	/*alert('hello')*/
	let xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			/*alert('in side if')*/
			document.getElementById("gridShow").innerHTML = this.responseText;
		}
	};
	xhttp.open("GET", "searchName?n= " + customername, true);
	xhttp.send();
}


function searchproduct(productname) {
    
	let xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() 
	{
        if (this.readyState == 4 && this.status == 200) 
			{
            document.getElementById("gridShow").innerHTML = this.responseText;
        }
    };
    
    xhttp.open("GET", "searchproduct?n= " + productname, true);
	xhttp.send();
}


function searchByMonth() {
	alert("Hello");

	let month = document.getElementById("month").value;
	let year = document.getElementById("year").value;
	if (!month || !year) {
		alert("Please select both month and year.");
		return;
	}
	let xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			document.getElementById("gridshow").innerHTML = this.responseText;
		}
	};
	xhttp.open("GET", "searchBill?n=" + month + "&y=" + year, true);
	xhttp.send();
}
