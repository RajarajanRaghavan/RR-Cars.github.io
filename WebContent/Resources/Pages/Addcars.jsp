<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
body {
    font-family: Arial, Helvetica, sans-serif;
    background-color: black;
}

* {
    box-sizing: border-box;
}

/* Add padding to containers */
.container {
    padding: 16px;
    background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

.registerbtn:hover {
    opacity: 1;
}

/* Add a blue text color to links */
a {
    color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
    background-color: #f1f1f1;
    text-align: center;
}
</style>
<title>Adding Cars</title>
</head>
<body>

<form action="addCars.add" method="get">
  <div class="container">
    <h1>ADD CARS</h1>
    <p>Please fill in this form to add cars.</p>
    <hr>

    <label for="email"><b>Car name</b></label>
    <input type="text" placeholder="Car name" name="CarName" required>

    <label for="psw"><b>Brand name</b></label>
    <input type="text" placeholder="Brand name" name="BrandName" required>

    <label for="psw-repeat"><b>Price</b></label>
    <input type="text" placeholder="Price" name="Price" required>
    
     <label for="email"><b>Fuel type</b></label>
    <input type="text" placeholder="Fuel type" name="Fueltype" required>
    
    
     <label for="email"><b>Auto Transmission</b></label>
    <input type="text" placeholder="Auto Transmission" name="AutoTransmission" required>
    
    
     <label for="email"><b>Top Speed</b></label>
    <input type="text" placeholder="Top Speed" name="TopSpeed" required>
    
    <hr>

    <button type="submit" class="registerbtn">Submit</button>
  </div>
  
</form>

</body>
</html>
