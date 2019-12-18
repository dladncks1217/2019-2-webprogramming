<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, lecture1.jdbc1.*"%>
<%
	if (request.getMethod().equals("POST")) {
		request.setCharacterEncoding("UTF-8");
		Book book = new Book();
		String books = request.getParameter("bookName");
		String author = request.getParameter("author");
		String category = request.getParameter("category");
		String price = request.getParameter("price");
		int category1 = 0;
		switch(category){
		case"소설":category1 = 1; break;
		case"수필":category1 = 2; break;
		case"경제":category1 = 3; break;
		case"역사":category1 = 4; break;
		case"과학":category1 = 5; break;
		}
		int price1 = Integer.parseInt(price);
		book.setTitle(books);
		book.setAuthor(author);
		book.setCategoryId(category1);
		book.setPrice(price1);
		BookDAO.insert(book);
		response.sendRedirect("index.jsp");
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
		<h1>책 등록</h1>
		<form method="post">
			<table class="table table-bordered table-condensed">
				<tr>
					<td>제목</td>
					<td><input type="text" name="bookName" class="form-control" /></td>
				</tr>
				<tr>
					<td>저자</td>
					<td><input type="text" name="author" class="form-control" /></td>
				</tr>
				<tr>
					<td>카테고리</td>
					<td>
					<select name="category" class="form-control">
						<option>소설</option>
						<option>수필</option>
						<option>경제</option>
						<option>과학</option>
						<option>역사</option>
					</select>
					</td>
				</tr>
				<tr>
					<td>가격</td>
					<td><input type="text" name="price" class="form-control" /></td>
				</tr>
			</table>
			<button type="submit" class="btn btn-primary">저장</button>
			<a href="javascript:window.history.back()" class="btn btn-info">돌아가기</a>
		</form>
	</div>
</body>
</html>