<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	int password = Integer.parseInt(request.getParameter("password"));
	String result = null;

	
	if (id.equals("person") && password == 1234) {
		result = id + "님 반갑습니다.";

	} else {
		result = "로그인 실패";

	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인 결과</h2>
	<hr>
	<%=result %>
</body>
</html>