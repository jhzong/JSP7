<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키추가</title>
	</head>
	<body>
		<h2>쿠키추가</h2>
		<h3>데이터확인</h3>
		<p><%= "key : "+request.getParameter("cookie_key") %></p>
		<p><%= "value : "+request.getParameter("cookie_value") %></p>
		<%
			String key = request.getParameter("cookie_key");
			String value = request.getParameter("cookie_value");
			//cookie 생성
			Cookie cookie = new Cookie(key,value);
			//cookie 시간설정
			cookie.setMaxAge(60*60);
			//cookie 저장
			response.addCookie(cookie);
		%>
		<a href="./j02_02.jsp"><button>쿠키확인</button></a>
	</body>
</html>