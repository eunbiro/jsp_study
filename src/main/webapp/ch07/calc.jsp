<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<jsp:useBean id = "calc" class = "ch07.Calculator" />
	<%-- Calculator calc = new Calculator --%>

<jsp:setProperty name = "calc" property = "*" />
	<%-- calc.setN1(request.getParameter("n1")); --%>
	<%-- calc.setN2(request.getParameter("n2")); --%>
	<%-- calc.setOp(request.getParameter("op")); --%>
	<%-- property : 사용할 변수 선택 ( * 은 모두선택) --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	결과 : <%= calc.calc() %>
</body>
</html>