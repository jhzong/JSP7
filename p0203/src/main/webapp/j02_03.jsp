<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키삭제</title>
	</head>
	<body>
		<h2>쿠키삭제</h2>
		<%
			Cookie[] cookies = request.getCookies();
			for(Cookie cookie:cookies){
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
			out.println("모든쿠키 삭제완료");
		%>
		<br>		
		<a href="./j02_02.jsp"><button>쿠키확인</button></a>
	</body>
</html>