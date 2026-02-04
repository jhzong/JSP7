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
		<h2>정보배열확인</h2>
		<c:forEach var="hobby" items="${ paramValues.hobby }">
			<p>취미 : ${ hobby }</p>
		</c:forEach>
		
		<hr>
		<%
		String[] hobby = request.getParameterValues("hobby");
		for(int i=0;i<hobby.length;i++){
			out.println("취미 : "+hobby[i]+"<br>");
		}
		%>
		<hr>
		<%
		for(String h:hobby){
			%>
			<p>취미 : <%=h %></p>
			<%
		}
		%>
	</body>
</html>