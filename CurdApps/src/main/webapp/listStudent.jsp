<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<h1 class="center">Students Details</h1>
	<table class="table">
		<%!Connection con;
	String name;
	int age;
	String gender;
	String email;

	public void jspInit() {
		try {
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "innogent", "innogent");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}%>
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Age</th>
				<th>Gender</th>
				<th>email</th>
			</tr>
		</thead>
		<tbody>
			<%
	try{
		PreparedStatement pstmt = con.prepareStatement("select * from student order by studentid");
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
	%>
			<tr>
				<td><%= rs.getInt(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getInt(3) %></td>
				<td><%= rs.getString(4) %></td>
				<td><%= rs.getString(5) %></td>
			</tr>

			<%}
		}catch(Exception e){
			e.printStackTrace();
			}%>
		</tbody>
	</table>
	<div class="container">
	for insert, update and delete page link <br>
		<a href="AddStudent.html">Add Student</a><br>
		<a href="update.html">Update Student</a><br>
		<a href="delete.html">Delete Student</a>
		
	</div>
</body>
</html>