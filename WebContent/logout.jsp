<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
session.removeAttribute("id");
session.removeAttribute("name");
session.removeAttribute("add");
session.removeAttribute("mobno");
session.removeAttribute("salary");
session.removeAttribute("pass");
response.sendRedirect("Login.jsp");
%>
</body>
</html>