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
<title>Student Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style>
.center {
	text-align: center;
}
</style>
<script>
	function resetAndRefresh() {
		location.reload();
	}
</script>
</head>
<body>

	<%!String order = "";%>

	<div class="container mt-5">
		<div class="center mb-4">
			<p class="mb-0">
				For insert, update, and delete operations by <b>Student ID</b>:
				click on the following links:
			</p>
			<a href="AddStudent.html" class="btn btn-primary">Add Student</a> <a
				href="update.html" class="btn btn-warning">Update Student</a> <a
				href="delete.html" class="btn btn-danger">Delete Student</a>
		</div>
		<h1 class="center mb-4">Students Details</h1>
		<table class="table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Age</th>
					<th>Gender</th>
					<th>Email</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<%
				Connection con = null;
				try {
					Class.forName("oracle.jdbc.driver.OracleDriver");
					con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "innogent", "innogent");
					PreparedStatement pstmt = con.prepareStatement("select * from student order by " + order);
					ResultSet rs = pstmt.executeQuery();
					while (rs.next()) {
				%>
				<tr>
					<td><%=rs.getInt(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getInt(3)%></td>
					<td><%=rs.getString(4)%></td>
					<td><%=rs.getString(5)%></td>
					<td><a href="UpdateStudent?id=<%=rs.getInt(1)%>"
						class="btn btn-primary">Edit</a></td>
					<td><a href="DeleteStudent?id=<%=rs.getInt(1)%>"
						class="btn btn-danger">Delete</a></td>
				</tr>
				<%
				}
				} catch (Exception e) {
				e.printStackTrace();
				} finally {
				try {
				if (con != null) {
					con.close();
				}
				} catch (Exception e) {
				e.printStackTrace();
				}
				}
				%>
			</tbody>
		</table>

	</div>

</body>
</html>
