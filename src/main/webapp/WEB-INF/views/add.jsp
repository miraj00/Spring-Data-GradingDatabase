<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Add </title>


</head>
<body>

<div class="center">
	<h1> Add a Grade </h1>
	
	<form action="/grades/add" method="POST">
	    
		  <label for="name"> Name :</label>   
	 	  <input type="text" id="name" name="name">
		  <br> <br>
		  
	 	  <label for="type-input">Type</label>
					<select name="type" id="type-input">
						<option value="Assignment">Assignment</option>
						<option value="Quiz">Quiz</option>
						<option value="Exam">Exam</option>
					</select>
		  <br> <br>	  
	
		  <label for="score"> Score : </label>
	 	  <input type="text" id="score" name="score">
		  <br> <br>
		  
		  <label for="total"> Total : </label>
	 	  <input type="text" id="total" name="total">
		  <br> <br>
	
	  	  
		  <input type="submit" value="Submit">
		  &nbsp; &nbsp;
		  <a href="/">Cancel </a>  
       
	</form>
	
</div>		


</body>
</html>