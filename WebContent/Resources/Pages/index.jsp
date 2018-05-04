<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Homepage</title>
<script type="text/javascript">
function validate(){
	var CarName = document.getElementById("CarName").value;
	var CarFeature = document.getElementById("CarFeature").value;
	if(CarName == ""){
		alert("Please Enter CarName!");
	}
	else{
		document.getElementById("carSearchForm").submit();
	}
}

function getCarInfo(CarName){
	document.getElementById("CarName").value=CarName;;
 	document.getElementById("carSearchForm").submit();
}
</script>
<style type="text/css">

body{
	font-family: cursive;
	background-image: url("Resources/Images/Homebg.jpg");
	background-size: 100%;
	/* background-color: linen; */
	font-size: large;
	color: white;
}

h1{
	font-size: 50px; 
	padding-top: 0px; 
	background-color: Solid grey;
}

p{
	font-size: x-large;
	font-family: monospace;
}

 
}
#allCarsInfoTable{
	width: 100%;
}

#carInfoTable td, #carInfoTable th{
	border: 2px solid grey;
	border-collapse: collapse;
	width: 50%;
}

#carInfoTable th{
	background-color: #3399ff;
	color: white;
}

#carInfoTable tr:HOVER{
	background-color: #ff9999;
	color: white;
}

#imageDiv{
	border: 2px solid white;
	width: 100%;
	height: 10%;
	
}

img{
	width: 200px;
	height: 150px;
}

.btn{
	background-color: #c6c6c6; /* Green */
    border: none;
    color: white;
    padding: 10px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    border-radius: 10%;
}

.btn:hover {
    box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
} 
.dropbtn {
    background-color: #c6c6c6;
    color: white;
    padding: 16px;
    font-size: 16px;
    border-radius:20%;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
</style>
</head>
<body>
<div class="dropdown">
  <button  class="dropbtn">Login</button>
  <div class="dropdown-content">
    <a href="#">Customer Login</a>
    <a href="${pageContext.request.contextPath}/Resources/Pages/AdminLogin.html">Admin Login</a>
   <!--  <a href="#">Link 3</a>
 -->  </div>
</div>
<h1 align="center" style="color:white;">RR Cars</h1>
<h2 align="center" style="color: #f7e738;"><<<<<<<<<<----Welcome---->>>>>>>>>></h2>
<form id="carSearchForm" action="showAllCars.do" method="get">
<%-- <a href="${pageContext.request.contextPath}/Resources/Pages/ShowAllCars.jsp" style="background-color:black; color:silver;">Show All Cars</a> --%>
<input class="btn" title="GET READY TO RIDE" type="submit" value="Show All Cars"/><br><br><br>

<!-- </form> -->
<!-- <form action="carSearch.do" id="CarSearch" method="get"> -->
<div id="imageDiv">
<img src="Resources/Images/Aventador.jpeg" onclick="getCarInfo('Aventador');">&emsp;&emsp;&emsp;&emsp;
<img src="Resources/Images/Veyron.jpg" onclick="getCarInfo('veyron');">&emsp;&emsp;&emsp;&emsp;
<img src="Resources/Images/Compass.jpg" onclick="getCarInfo('Compass');">&emsp;&emsp;&emsp;&emsp;
<img src="Resources/Images/Honda City.jpg" onclick="getCarInfo('Honda City');">
</div>

<br><label style="color: white;">Enter Car Name</label> 
<input type="text" align="top" id="CarName" name="CarName"/><br>
<label style="color: white;">Enter Car Feature</label>
<input type="text" align="top" id="CarFeature" name="CarFeature"/>
<br>
<input class="btn" type="button" align="top" value="Search" onclick="validate();"/>
</form>
<p id="para1">
${searchDetails}</p>
<p>
${allCarInfo}</p>
</body>
</html>