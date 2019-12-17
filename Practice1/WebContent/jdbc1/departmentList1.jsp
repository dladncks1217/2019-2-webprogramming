<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ page import="java.util.List, lecture1.jdbc1.*" %> 
<% List<Department> list = DepartmentDAO.findAll(); %> 
<!DOCTYPE html> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style> body { font-family: 굴림체; } thead th { background-color: #eee; } table.table { width: 400px; } </style> 
</head> <body> <div class="container"> 
<h1>학과목록</h1> 
<table class="table table-bordered table-condensed"> 
<thead> 
<tr> 
<th>ID</th> 
<th>학과명</th> 
</tr> 
</thead> 
<tbody> 
<% for (Department department : list) { %> 
<tr> 
<td><%= department.getId() %></td> 
<td><%= department.getDepartmentName() %></td> 
</tr> <% } %> 
</tbody> 
</table> 
</div> 
</body> 
</html>