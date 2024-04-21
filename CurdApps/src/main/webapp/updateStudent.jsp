<%-- <%@page import="model.Student"%>
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
	<h1>${student.studentId }</h1>
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
</html> --%>
<%@page import="model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student DATA</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
    .form-label {
        font-weight: bold;
    }
</style>
</head>
<body>
    <div class="container mt-5">
        <h1>Update Student DATA</h1>
        <% Student student = (Student) request.getAttribute("student"); %>
        <form action="UpdateConfirm">
            <div class="mb-3">
                <label for="id" class="form-label">Student ID:</label><br>
                <input type="text" class="form-control" value="${student.studentId}" name="id" readonly><br>
            </div>
            <div class="mb-3">
                <label for="name" class="form-label">Student Name:</label><br>
                <input type="text" class="form-control" value="${student.studentName}" name="name"><br>
            </div>
            <div class="mb-3">
                <label for="age" class="form-label">Student Age:</label><br>
                <input type="number" class="form-control" value="${student.studentAge}" name="age"><br>
            </div>
            <div class="mb-3">
                <label for="gender" class="form-label">Student Gender:</label><br>
                <input type="text" class="form-control" value="${student.studentGender}" name="gender"><br>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Student Email:</label><br>
                <input type="email" class="form-control" value="${student.studentEmail}" name="email"><br>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
            <br><br>
            <a href="index.html">Home</a>
        </form>
    </div>
</body>
</html>
