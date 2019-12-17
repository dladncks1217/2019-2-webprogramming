<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, lecture1.jdbc1.*"%>
<%
	if (request.getMethod().equals("POST")) {
		request.setCharacterEncoding("UTF-8");
		Department department = new Department();
		String s = request.getParameter("departmentName");
		department.setDepartmentName(s);
		DepartmentDAO1.insert(department);
		response.sendRedirect("departmentList2.jsp");
		return;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
		<h1>학과 등록</h1>
		<form method="post">
			<table class="table table-bordered table-condensed">
				<tr>
					<td>학과명</td>
					<td><input type="text" name="departmentName" class="form-control" /></td>
				</tr>
			</table>
			<button type="submit" class="btn btn-primary">저장</button>
			<a href="javascript:window.history.back()" class="btn btn-info">돌아가기</a>
		</form>
	</div>
</body>
</html>