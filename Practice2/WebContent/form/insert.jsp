<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List, lecture1.jdbc1.*"%>
<%
    if(request.getMethod().equals("POST")){
    	request.setCharacterEncoding("UTF-8");
    	Professor professor = new Professor();
    	String iN = request.getParameter("inputname");
    	String iD = request.getParameter("inputdepartment");
    	professor.setprofessorName(iN);
    	professor.setdepartmentName(iD);
    	professorDAO.insert(professor);
    	response.sendRedirect("index.jsp");
    	return;
    }
    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
	<input type="text" name="inputname" />
	<input type="text" name="inputdepartment">
	<input type="submit" value="등록하기">
	</form>
</body>
</html>