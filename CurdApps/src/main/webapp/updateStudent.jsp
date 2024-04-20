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
		Student Id: <input type="number" value="${student.studentId }" name="id" readonly="readonly">
		Student Name: <input type=text value="${student.studentName }" name="name">
		Student Age: <input type="number" value="${student.studentAge }" name="age">
		Student Gender: <input type="text" value="${student.studentGender }" name="gender">
		Student Email: <input type="text" value="${student.studentEmail }" name="email">
		<button type="submit">Update</button>
	</form>
</body>
</html>