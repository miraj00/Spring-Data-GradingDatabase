<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
    
<!DOCTYPE html>

<html>

<head>
<meta charset="UTF-8">
<title>Home</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link href="/style.css" rel="stylesheet" /> 

<style>
table, th, td {
  border: 1px solid;
  text-align: center;
}
</style>

</head>

<body>

<div class="container">

<table class="table">
			<thead>
				<tr>
					<th>Name</th><th>Type</th><th>Score</th><th>Total</th><th> Option </th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach var="grade" items="${grades}">
				<tr>
					<td><a href="/rooms/detail?id=${grade.id}">${grade.name}</a></td>
					<td>${grade.type}</td>
					<td>${grade.score}</td>
					<td>${grade.total}</td>
					<td><a href="/grades?id=${grade.id}">Delete</a></td>	
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<br> <br>
		<a href="/grades/add" class="btn btn-secondary">Add a Grade</a>





</div>

</body>
</html>