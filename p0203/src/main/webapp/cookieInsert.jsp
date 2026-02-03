<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키</title>
	</head>
	<body>
	<%
		// 쿠키생성
		Cookie cookie = new Cookie("cook_id","aaa");
		Cookie cookie2 =  new Cookie("cook_name","길동스");
		// 쿠키 시간설정
		cookie.setMaxAge(60*10);//60초*10분-10분간 유지
		cookie2.setMaxAge(60*60*24);//60초*60분*24시간-1일 유지
		// 로컬에 저장
		response.addCookie(cookie);
		response.addCookie(cookie2);
	%>
	
	<a href="./cookieView.jsp"><button>쿠키확인</button></a>
	</body>
</html>