<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GUGUDAN</title>
</head>
<body>
	<h4>구구단 출력하기</h4>
	<hr>
	
	<jsp:useBean id = "gugu" class = "ch07.com.dao.GuGuDan" />
	
	<%!
		String[] gugudan = new String[9];
	 %>
	 
	 <%
	 	for (String str : gugu.process(5)) {
	 		out.print(str + "<br />");
	 	}
	 %>
	 
</body>
</html>