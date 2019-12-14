<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String srchText = request.getParameter("srchText");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
	<form>
		<label>이름</label> <input type="text" name="srchText" />
		<button type="submit">조회</button>
	</form>
	<hr />
	<div>
		srchText 값:
		<%=srchText%>
	</div>
</body>
</html>