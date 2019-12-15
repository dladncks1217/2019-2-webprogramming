<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List, lecture1.jdbc1.*"%>
<%
	String sortText = request.getParameter("sort");
	String srchText = request.getParameter("srchText");  // 들어온거에 맞춰서 치되
	if (srchText == null){   // 아무것도안들어오면 전체다찾으라
		srchText = "";
		sortText = "";
	}
		List<Student> list = StudentDAO2.findByName(srchText,sortText);


	
	
	String srchid = request.getParameter("srchid");
	if(srchid == null)
		srchid ="1";
		int id = Integer.parseInt(srchid);
		Student student1 = StudentDAO2.findById(id);
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
				<label>이름</label> <input type="text" class="form-control"
					name="srchText" value="<%=srchText%>" placeholder="검색조건" />
			</div>
			<div class="form-group">
			<select name="sort" class="form-control">
					<option value="number">학번<option>
					<option value="name">이름<option>
					<option value="department">학과<option>
					<option value="grade">학년<option>
				</select>
			</div>
			<button type="submit" class="btn btn-primary">조회</button>
		</form>
		<a href ="student2.jsp?id=1">id로 조회하기</a>
		<a href="../form/select1a.jsp">select태그연습용</a>
		<br>
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
					for (Student student : list) {
				%>
				<tr>
					<td><%=student.getStudentNumber()%></td>
					<td><%=student.getName()%></td>
					<td><%=student.getDepartmentName()%></td>
					<td><%=student.getYear()%></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
	<div class="container">
		<h1>학생</h1>
		<table class="table table-bordered table-condensed">
			<tr>
				<td>ID</td>
				<td><%=student1.getId()%></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%=student1.getName()%></td>
			</tr>
			<tr>
				<td>학과ID</td>
				<td><%=student1.getDepartmentId()%></td>
			</tr>
			<tr>
				<td>학과명</td>
				<td><%=student1.getDepartmentName()%></td>
			</tr>
			<tr>
				<td>학년</td>
				<td><%=student1.getYear()%></td>
			</tr>
		</table>
	</div>

</body>
</html>