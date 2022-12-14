<%@page import="java.util.*"%>
<%@page import="java.lang.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>JSP 종합예제</h2>
	<hr>
	<!-- HTML용 주석 -->
	<%-- 선언태그 : 멤버 변수, 메소드 선언 --%>
	
	<%!
		String[] members = {"노은비", "김자바", "돈가스", "배고파"};
		int num1 = 10;
		
		int calc(int num2) {
			return num1 + num2;
		}
	%>
	
	<%-- 표현태그 : 사칙연산, 메소드 호출, 변수값 --%>
	<h3>
		1. calc(10) 메소드 실행 결과 : <%= calc(10) %>
		<br />
		2. num1 변수 출력 : <%= num1 %>
		<br />
		3. 연산 출력 : <%= num1 + 1 %> 
	</h3>
	<hr>

	<%-- 스크립트릿 태그 : 모든 자바 코드 --%>
	<ul>
		<% for (String name : members) { %>
			<li><%= name %></li>
		<% } %>
	</ul>
	
	<ul>
		<%
			for(String name : members) {
				out.print("<li>" + name + "</li>");
			}
		%>
	</ul>
	<hr>
	
	<%-- include --%>
	<%@ include file = "../hello.jsp" %>
	<hr>
	
	<% Date day = new java.util.Date();%>
	현재날짜 : <%=day%><br />
	5의 제곱 : <%=Math.pow(5,2)%>
	
	
	
</body>
</html>