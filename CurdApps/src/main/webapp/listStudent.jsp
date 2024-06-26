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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        .center {
            text-align: center;
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <h1 class="center mb-4">Students Details</h1>
    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Email</th>
            </tr>
        </thead>
        <tbody>
            <% 
                Connection con = null;
                try {
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "innogent", "innogent");
                    PreparedStatement pstmt = con.prepareStatement("select * from student order by studentid");
                    ResultSet rs = pstmt.executeQuery();
                    while(rs.next()) {
            %>
                        <tr>
                            <td><%= rs.getInt(1) %></td>
                            <td><%= rs.getString(2) %></td>
                            <td><%= rs.getInt(3) %></td>
                            <td><%= rs.getString(4) %></td>
                            <td><%= rs.getString(5) %></td>
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
    <div>
        <p class="mb-0">For insert, update, and delete operations, click on the following links:</p>
        <a href="AddStudent.html" class="btn btn-primary">Add Student</a>
        <a href="update.html" class="btn btn-primary">Update Student</a>
        <a href="delete.html" class="btn btn-primary">Delete Student</a>
    </div>
</div>

</body>
</html>
