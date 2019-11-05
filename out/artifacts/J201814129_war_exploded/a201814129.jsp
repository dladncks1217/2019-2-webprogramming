<%--
  Created by IntelliJ IDEA.
  User: dlaxo
  Date: 2019-10-02
  Time: 오전 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <style>
    table{
      border-collapse: collapse;
    }
  </style>
  <title>$Title$</title>
</head>
<body>
<table border="1">
  <% int a = 2; %>
  <% for(int i = 2;i<10;i++) { %>
  <tr>
    <% for(a = 2;a<10;a++) { %>
    <td> <%= i+"*"+a+"="+i*a%> </td>
    <% } %>
  </tr>
  <% } %>
</table>
</body>
</html>
