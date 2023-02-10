<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmation</title>

 <style>
.center {
  margin-top: 150px;
  margin-left: 400px;
  width: 40%;
  height: 400px;
  border: 3px solid #73AD21;
  padding: 10px;
}
</style>
</head>

<body>

<div class="center">

	<h1> Grade Added </h1> 
	<h3> The grade was added to the database  </h3> 
	
	<h2> Details </h2>
 	
	<p> <b> Name : </b> ${name} </p>
    <p> <b> Type : </b> ${type} </p>	
    <p> <b> Score : </b> ${score} </p>
    <p> <b> Total : </b> ${total} </p>

	<a href="/">Return to grade list </a> 
	<br> <br>
</div>	

</body>
</html>