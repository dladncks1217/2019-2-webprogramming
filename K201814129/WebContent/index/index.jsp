<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, lecture1.jdbc1.*"%>
<%
	List<Book> list = BookDAO.findAll();
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
		<h1>책 목록</h1>
		<form class="form-inline">
			<div class="form-group">
				<label>이름</label> 
			</div>
		</form>
		<br>
		<table class="table table-bordered table-condensed">
			<thead>
				<tr>
					<th>제목</th>
					<th>저자</th>
					<th>카테고리</th>
					<th>가격</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (Book book : list) {
				%>
				<tr>
					<td><%=book.getTitle()%></td>
					<td><%=book.getAuthor()%></td>
					<td><%=book.getCategoryName()%></td>
					<td><%=book.getPrice()%></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
		<button id="btn" class="btn btn-primary">책 추가</button>
	</div>
	<script type="text/javascript">
		document.getElementById("btn").addEventListener('click',()=>{
			location.href="http://localhost:8181/K201814129/index/insert.jsp";
		});
	</script>
</body>
</html>