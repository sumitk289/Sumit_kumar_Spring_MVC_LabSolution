<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List</title>
<link
     href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	 rel="stylesheet"
	 integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	 crossorigin="anonymous">
</head>
<body>

<div class ="container">
       <h4><u>Student List:-</u></h4>
       <div>
		
			<a href="/CollegeFests/student/add">Add Student</a>	
			<br>	
	</div>
	<table class ="table">
	<tr>
		<th>Student Id</th>
		<th>Name</th>
		<th>Department</th>
		<th>Country</th>
		<th>Action</th>
	</tr>
	<c:forEach items="${student }" var="student">
		<tr>
			<td>${student.id }</td>
			<td>${student.name}</td>
			<td>${student.department }</td>
			<td>${student.country} </td>
			<td><a href="/CollegeFests/student/update/${student.id }">Update</a>
			<a href="/CollegeFests/student/delete/${student.id }">Delete</a></td>
		</tr>
		
	</c:forEach>
	</table>
	</div>
</body>
</html>