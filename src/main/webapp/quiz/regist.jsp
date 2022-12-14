<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원가입</h2>
	<hr>
	
	<form method = "post" action = "regist_action.jsp">
		<label>이메일</label>
		<input type = "email" name = "email" size = "20" placeholder = "이메일" />
		
		<label>핸드폰번호</label>
		<input type = "tel" name = "tel" size = "20" placeholder = "핸드폰 번호" />
		
		<input type = "submit" value = "가입">
	
	</form>
</body>
</html>