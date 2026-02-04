<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<%
		//세션-서버저장
		session.setAttribute("session_id", "session_aaa");
		//쿠키-로컬저장
		Cookie cookie = new Cookie("cookie_id","cookie_bbb");
		cookie.setMaxAge(60*60);
		response.addCookie(cookie);
	%>
	
		<h2>form</h2>
		<form action="./formOk.jsp" mathod="post" name="frm">
			<input type="text" name="title" placeholder="제목을 입력"><br>
			<input type="text" name="name" placeholder="이름을 입력"><br>
			<input type="submit" value="전송">
		</form>
	</body>
</html>