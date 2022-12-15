<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>JSTL 종합예제</h2>
	<hr>
	
	<h3>set, out</h3>
	<%-- pageScope영역에 저장된다. --%>
	<c:set var = "product1" value = "<b>애플 아이폰</b>" />
	<%--   var = 변수명		value = 값 				--%>
	<c:set var = "product2" value = "삼성 갤럭시 노트" />
	<c:set var = "intArray" value = "${[1, 2, 3, 4, 5]}" />
	
	<p>
		product1(jstl) : 
		<c:out value="${product1}" default = "Not registered" escapeXml = "true" />
	</p>
	<p>
		product1(el) :
		${product1}
	</p>
	<p>
		intArray[2] : 
		${intArray[2]}
	</p>
	<br />
	<hr>
	
	<h3>forEach배열 출력</h3>
	<hr>
	
	<ul>
		<%-- == for(int num : intArray) --%>
		<c:forEach var = "num" varStatus = "i" items = "${intArray}">
			<li>${i.index} : ${num}</li>
		</c:forEach>
	</ul>
	<br />
	<hr>
	
	<h3>if</h3>
	<hr>
	
	<c:set var = "checkout" value = "true" />
	
	<%-- if(checkout == true) --%>
	<c:if test = "${checkout}">
		<p>주문 제품 : ${product2}</p>
	</c:if>
	
	<%-- if(checkout != true) --%>
	<c:if test = "${!checkout}">
		<p>주문 제품 아님</p>
	</c:if>
	
	<%-- product2에 값이 들어가 있는지 체크--%>
	<c:if test="${!empty product2}">
		<b>${product2} 이미 있음!</b>
	</c:if>
	<br />
	<hr>
	
	<h3>choose, when, otherwise</h3>
	<hr>
	
	<c:choose>
		<c:when test = "${checkout}">
			<p>주문 제품 : ${product2}</p>
		</c:when>
		<c:otherwise>
			<p>주문 제품 아님!</p>
		</c:otherwise>
	</c:choose>
	<br />
	<hr>
	
	<h3>forTokens</h3>
	<hr>
	<%-- String(items)를 해당 문자(delims)를 기준으로 나누어 출력한다--%>
	<c:forTokens var = "city" items = "Seoul | Tokyo | New York | Toronto" delims="|" varStatus="i">
		<%-- i : 인덱스 가 first : 첫번째이면 도시목록 : 을 찍음 --%>
		<c:if test="${i.first}">도시목록 : </c:if>
		${city}
		<%-- i : 인덱스 가 last : 마지막이 아니면 , 를 찍음 --%>
		<c:if test="${!i.last}">,</c:if>
	</c:forTokens>
	
</body>
</html>