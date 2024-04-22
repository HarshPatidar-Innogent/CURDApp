<%@page import="model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student DATA</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style>
.form-label {
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="container mt-5">
		<h1>Update Student DATA</h1>
		<%
		Student student = (Student) request.getAttribute("student");
		%>
		<form action="UpdateConfirm">
			<div class="mb-3">
				<label for="id" class="form-label">Student ID:</label><br> <input
					type="text" class="form-control" value="${student.studentId}"
					name="id" readonly><br>
			</div>
			<div class="mb-3">
				<label for="name" class="form-label">Student Name:</label><br>
				<input type="text" class="form-control"
					value="${student.studentName}" name="name"><br>
			</div>
			<div class="mb-3">
				<label for="age" class="form-label">Student Age:</label><br> <input
					type="number" class="form-control" value="${student.studentAge}"
					name="age"><br>
			</div>
			<div class="mb-3">
				<label for="gender" class="form-label">Student Gender:</label><br>
				Male :<input type="radio" class="form-check-input" id="M" value="M"
					value="M" ${student.studentGender=='M'?'checked':''} name="gender">
				Female :<input type="radio" class="form-check-input" id="F"
					value="F" value="F" ${student.studentGender=='F'?'checked':''}
					name="gender">
			</div>
			<div class="mb-3">
				<label for="email" class="form-label md-3">Student Email:</label><br>
				<input type="email" class="form-control"
					value="${student.studentEmail}" name="email"><br>
			</div>
			<button type="submit" class="btn btn-primary md-3">Update</button>
			<br>
    <a href="index.html" class="btn btn-success">Home</a>
		</form>
	</div>
</body>
</html>
