<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List, lecture1.jdbc1.*"%>
<%
		List<Professor> list = professorDAO.findAll();
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
<script"WebContent/form/insert.jsp"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
thead th {
	background-color: #eee;
}

table.table {
	width: 700px;
	margin-top: 10px;
}
</style>
</head>
<body>
	<div class="container">
		<h1>교수목록</h1>"WebContent/form/insert.jsp"
		<form class="form-inline">
			<div class="form-group">
				<label>이름</label> 
			</div>
		</form>
		<a href="../form/insert.jsp">교수추가</a>
		<br>
		<table class="table table-bordered table-condensed">
			<thead>
				<tr>
					<th>id</th>
					<th>이름</th>
					<th>학과</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (Professor professor : list) {
				%>
				<tr>
					<td><%=professor.getId()%></td>
					<td><%=professor.getprofessorName()%></td>
					<td><%=professor.getdepartmentName()%></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>