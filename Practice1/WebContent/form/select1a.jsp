<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List, lecture1.jdbc1.*"%>
<%
	String s = request.getParameter("departmentId");
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
</head>
<body>
	<div class="container">
		<h1>select 태그</h1>
		<a href="../jdbc1/studnetList2.jsp">돌아가기</a>
		<form class="form-inline">
			<div class="form-group">
				<label>학과</label> <select name="departmentId" class="form-control">
					<option value="1">국어국문학</option>
					<option value="2">영어영문학</option>
					<option value="3">불어불문학</option>
				</select>
			</div>
			<button type="submit" class="btn btn-primary">조회</button>
		</form>
		<hr />
		departmentId:
		<%=s%>
	</div>
</body>
</html>