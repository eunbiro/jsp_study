<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>안녕 디그다!</h2>
	<hr/>
	현재 날짜와 시간은
	<%=LocalDateTime.now()%>
	입니다.
</body>
</html>