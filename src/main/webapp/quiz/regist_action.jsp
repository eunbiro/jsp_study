<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id = "regi" class = "ch07.com.dao.Member" />
	<jsp:setProperty name = "regi" property = "*" />
	<h2>회원가입</h2>
	<hr>
	
	<%-- out.print(regi.result()); --%>
	<%
		regi.result();
	%>
	
</body>
</html>