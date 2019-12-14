<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List, lecture1.jdbc1.*"%>
<%
	int id = 4;
	Student student = StudentDAO2.findById(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	font-family: 굴림체;
}

table.table {
	width: 500px;
}

table td:nth-child(1) {
	background-color: #eee;
}
</style>
</head>
<body>
	<div class="container">
		<h1>학생</h1>
		<table class="table table-bordered table-condensed">
			<tr>
				<td>ID</td>
				<td><%=student.getId()%></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%=student.getName()%></td>
			</tr>
			<tr>
				<td>학과ID</td>
				<td><%=student.getDepartmentId()%></td>
			</tr>
			<tr>
				<td>학과명</td>
				<td><%=student.getDepartmentName()%></td>
			</tr>
			<tr>
				<td>학년</td>
				<td><%=student.getYear()%></td>
			</tr>
		</table>
	</div>
</body>
</html>