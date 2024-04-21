<%@page import="model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Update Student DATA</h1>
	<%
	Student student = (Student) request.getAttribute("student");
	%>
	<%-- <h1>${student.studentId }</h1> --%>
	<form action="UpdateConfirm">
		<label for="id">Student Name: </label><br> <input type="number"
			value="${student.studentId }" name="id" readonly="readonly"><br>
		<br> <label for="name">Student Name: </label><br> <input
			type=text value="${student.studentName }" name="name"><br>
		<br> <label for="age">Student Age: </label><br> <input
			type="number" value="${student.studentAge }" name="age"><br>
		<br> <label for="gender">Student Gender:</label><br> <input
			type="text" value="${student.studentGender }" name="gender"><br>
		<br> <label for="Email">Student Email:</label><br> <input
			type="text" value="${student.studentEmail }" name="email"><br>
		<br>
		<button type="submit">Update</button>

		<br> <br> <a href="index.html">Home</a>
	</form>
</body>
</html>