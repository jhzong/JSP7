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
		<!-- 쿠키출력 -->
		<%
			//전체불러오기
			Cookie[] cookies = request.getCookies();
				for(Cookie cookie:cookies){
					out.println(cookie.getName()+","+cookie.getValue()+"<br>");
				}
		%>
		<!-- 삭제 쿠키 선택 -->
		<form action="./j02_04.jsp" method="post" name="frm">
			<input type="text" name="cookie_key" placeholder="쿠키의 key값"><br>
			<input type="submit" value="쿠키삭제하기">
		</form>
		
		<a href="./j02_02.jsp"><button>쿠키확인</button></a>
	</body>
</html>