<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List, lecture1.jdbc1.*"%>
<%
	String s = request.getParameter("departmentId");
	if (s == null)
		s = "1";
	int departmentId = Integer.parseInt(s);
	List<Student> students = StudentDAO3.findByDepartmentId(departmentId);
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
		<h1>학생목록</h1>
		<form class="form-inline">
			<div class="form-group">
				<label>학과</label> <select name="departmentId" class="form-control">
					<option value="1" <%=(departmentId == 1) ? "selected" : ""%>>국어국문학</option>
					<option value="2" <%=(departmentId == 2) ? "selected" : ""%>>영어영문학</option>
					<option value="3" <%=(departmentId == 3) ? "selected" : ""%>>불어불문학</option>
				</select>
			</div>
			<button type="submit" class="btn btn-primary">조회</button>
		</form>
		<table class="table table-bordered table-condensed">
			<thead>
				<tr>
					<th>학번</th>
					<th>이름</th>
					<th>학과</th>
					<th>학년</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (Student student : students) {
				%>
				<tr>
					<td><%=student.getStudentNumber()%></td>
					<td><a href="student2.jsp?id=<%=student.getId()%>"><%=student.getName()%></a></td>
					<td><%=student.getDepartmentName()%></td>
					<td><%=student.getYear()%></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>