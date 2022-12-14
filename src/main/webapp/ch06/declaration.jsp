<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2> Q.01</h2>
	<hr>
	선언 태그 /
	표현 태그 /
	스크립트릿 태그
	<hr>

	<h2> Q.02</h2>
	<hr>
	선언 태그는 멤버변수나 메서드 선언에 사용할 수 있다.<br />
	스크립트릿 태그는 모든 자바 코드의 사용이 가능하다.(HTML과 섞어서 사용가능)
	<hr>

	<h2> Q.03</h2>
	<hr>
	<%-- --%>

	<h2> Q.04</h2>
	<hr>
	
	<%!
		String str = "Hello, Java Server Pages";
	
		String getString() {
			return str;
		}
	%>
	
	<h3>
	<%= getString() %>
	</h3>
	
</body>
</html>