<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> Q.05</h2>
	<hr>
	<%
		Date date = new java.util.Date();
		out.print("Current Time : " + date);
	%>
</body>
</html>