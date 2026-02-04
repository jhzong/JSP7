<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>메인페이지</h2>
		<c:set var="no" value="100" />
		<p> ${ no } </p>
		
		<%-- ArrayList 객체를 items로 받아 var변수에 전달해 사용 --%>
		<c:forEach var="i" begin="0" end="10" step="1"><%-- for(int i=0;i<=10;i++) --%>
			<p>${ i }</p>
		</c:forEach>
	</body>
</html>